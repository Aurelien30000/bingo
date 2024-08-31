#!/usr/bin/python3
import json
import os
from pathlib import Path

from PIL import Image

all_categories = set()


def generate_items(path, config_path, base_path, output_path, output_registries_path, default_item_type, size, rows=16, cols=16):
    """
    Generate items.
    :param path the folder path where images are stored
    :param config_path the configuration path
    :param base_path the base image path
    :param output_path the output image path
    :param output_registries_path the registries output path
    :param default_item_type the internal default type of the items (item, block)
    :param size the size that each image much be scaled to
    :param rows the number of rows in the output image
    :param cols the number of columns in the output image
    """
    # Initialize some data.
    vertical_spacing = 2 * size
    output_width = size * cols
    output_height = (size + vertical_spacing) * rows
    x = 0
    y = 0
    row = 0
    col = 0

    # Initialize outputs.
    with open(config_path, "r") as output_config:
        config = json.load(output_config)
    output_image = Image.open(base_path)
    output_image.paste((0, 0, 0, 0), (0, 0, output_width, output_height), mask=output_image)
    output_registries = open(output_registries_path, "w")

    # Loop over the images.
    for file in sorted(os.listdir(path)):
        if not file.endswith(".png"):
            continue

        # Reserved slots.
        if default_item_type == "item" and row == 0 and col == 0:
            x += size
            col += 1

        image_path = os.path.join(path, file)
        item = Path(image_path).stem

        # Handle the configuration.
        if item not in config:
            config[item] = {
                "categories": ["fetchr:default"],
                "item-type": default_item_type,
                "weight": -1
            }

        # Handle the image.
        with Image.open(image_path) as image:
            # Resize and paste the image.
            image = image.convert(mode="RGBA")
            image = image.resize((size, size))
            _, _, _, mask = image.split()
            output_image.paste(image, (x, y), mask=mask)

        # Handle the registries.
        pos = f"0{0 if default_item_type == 'item' else 1}{row:x}{col:x}"
        item_config = config[item]
        categories, item_type, weight = item_config["categories"], item_config["item-type"], item_config[
            "weight"]
        for category in categories:
            _, value = category.split(":")
            all_categories.add(value)

        output_registries.write(
            f"""## {pos}: {item}
data modify storage fetchr:registries items append value {{id: "fetchr:{item}", item: {{id: "minecraft:{item}"}}, textComponent: '{{"translate": "{item_type}.minecraft.{item}", "hoverEvent": {{"action": "show_item", "contents": {{"id": "minecraft:{item}"}}}}}}', icon: '"\\\\u{pos}"', detectCommand: "execute as @a[tag=fetchr.check_slot] store success score @s fetchr.has_item run clear @s minecraft:{item} 0", clearCommand: "clear @a[tag=fetchr.clear] minecraft:{item} 1", categories: {json.dumps(categories)}{f", weight: {weight}" if weight != -1 else ""}}}
""")

        # Go forward to the next slot.
        x += size
        col += 1
        if x >= output_width:
            x = 0
            y += size + vertical_spacing
            row += 1
            col = 0

    # Save outputs.
    output_image.save(output_path)
    output_registries.close()
    with open(config_path, "w") as output_config:
        json.dump(config, output_config, indent=2)


def write_categories(output_categories_path):
    # Initialize outputs.
    output_categories = open(output_categories_path, "w")

    for category in sorted(all_categories):
        output_categories.write(
            f"""data modify storage fetchr:registries categories append value {{id: "fetchr:{category}", name: '{{"translate": "fetchr.category.{category}"}}', tags: ["fetchr:default"]}}
""")

    # Save outputs.
    output_categories.close()


generate_items("2d", "config.json", "2d_items_base.png", "2d_items.png", "fill_item_registries.mcfunction", "item", 16)
generate_items("3d", "config.json", "3d_items_base.png", "3d_items.png", "fill_block_registries.mcfunction", "block", 64)
write_categories("categories-registries.mcfunction")
