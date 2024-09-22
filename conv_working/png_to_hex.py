# Utility to convert png files to hex memory initialisation files for Verilog's $readmemh() function.
# Also: Converts 8-bit colour to 3-bit colour.

from PIL import Image

def image_to_hex(image_path, hex_file_path):
    # Open the image file
    img = Image.open(image_path)
    
    # Ensure image is RGB
    img = img.convert('RGB')
    
    # Get the dimensions of the image
    width, height = img.size
    
    # Open the hex file for writing
    with open(hex_file_path, 'w') as hex_file:
        for y in range(height):
            for x in range(width):
                # Get the RGB values of the pixel
                r, g, b = img.getpixel((x, y))
                
                # Reduce the color depth to 3-bits (each color channel to 1-bit: 0 or 1)
                r = 1 if r > 127 else 0
                g = 1 if g > 127 else 0
                b = 1 if b > 127 else 0
                
                # Combine into a single 3-bit value (3 bits: R, G, B)
                rgb_3bit = (r << 2) | (g << 1) | b
                
                # Write to the hex file in 3-bit binary format (can be written in hex if needed)
                hex_file.write(f"{rgb_3bit:01x}\n")

    print(f"Image has been converted to 3-bit color and written to {hex_file_path}")

# Usage example:
image_to_hex('angry.png', 'angry.hex')
image_to_hex('happy.png', 'happy.hex')
image_to_hex('neutral.png', 'neutral.hex')
