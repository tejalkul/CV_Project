import os
import shutil
import random

def curate_wikiart_dataset(input_dir, output_dir, max_images_per_class=40):
    """
    Curates the WikiArt dataset to select up to a specified number of images per genre/artist.
    
    Args:
        input_dir (str): Path to the WikiArt dataset directory.
        output_dir (str): Path where the curated dataset will be stored.
        max_images_per_class (int): Maximum number of images to keep per genre/artist.
    """
    if not os.path.exists(output_dir):
        os.makedirs(output_dir)
    
    # Iterate over each subdirectory (genre/artist)
    for class_name in os.listdir(input_dir):
        class_input_path = os.path.join(input_dir, class_name)
        # Check if it's a directory
        if os.path.isdir(class_input_path):
            class_output_path = os.path.join(output_dir, class_name)
            if not os.path.exists(class_output_path):
                os.makedirs(class_output_path)
            
            # Get all image files in this subdirectory
            image_files = [f for f in os.listdir(class_input_path) 
                           if f.lower().endswith(('.png', '.jpg', '.jpeg'))]
            
            # Randomly select up to 'max_images_per_class' images
            random.seed(42)
            selected_images = random.sample(image_files, min(len(image_files), max_images_per_class))
            
            # Copy selected images to the curated output directory
            for image in selected_images:
                src = os.path.join(class_input_path, image)
                dst = os.path.join(class_output_path, image)
                shutil.copy(src, dst)
            
            print(f"Curated {len(selected_images)} images for class: {class_name}")

# Example usage:
input_directory = '/kaggle/input/wikiart'  # Update with your WikiArt dataset path
output_directory = '/kaggle/working/wikiart_curated'   # Update with desired output path
curate_wikiart_dataset(input_directory, output_directory, max_images_per_class=40)
