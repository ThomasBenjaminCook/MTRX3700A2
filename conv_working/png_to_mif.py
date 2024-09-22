# Utility to convert png files to Quartus' MIF memory initialisation file format
# Also: Converts 8-bit colour to 3-bit colour.

from PIL import Image

def image_to_mif(image_path, mif_file_path):
    # Open the image file
    img = Image.open(image_path)
    
    # Ensure image is RGB
    img = img.convert('RGB')
    
    # Get the dimensions of the image
    width, height = img.size
    
    # Number of addresses is equal to the number of pixels
    depth = width * height
    
    # Prepare the MIF file
    with open(mif_file_path, 'w') as mif_file:
        mif_file.write(f"DEPTH = {depth};\n")              # Memory depth (total number of pixels)
        mif_file.write("WIDTH = 3;\n")                      # Each pixel is 3 bits (RGB)
        mif_file.write("ADDRESS_RADIX = HEX;\n")            # Address radix
        mif_file.write("DATA_RADIX = BIN;\n")               # Data radix
        mif_file.write("CONTENT\nBEGIN\n")
        
        address = 0
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
                
                # Write to the MIF file: address : data;
                mif_file.write(f"{address:04X} : {rgb_3bit:03b};\n")
                
                address += 1
        
        mif_file.write("END;\n")

    print(f"Image has been converted to 3-bit color and written to {mif_file_path}")

# Usage example:
image_to_mif('angry.png', 'angry.mif')
image_to_mif('neutral.png', 'neutral.mif')
image_to_mif('happy.png', 'happy.mif')
