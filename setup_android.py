import os
import sys

# Function to create directory structure

def create_directory_structure(base_dir):
    directories = [
        'app/src/main/java',
        'app/src/main/res',
        'app/src/main/AndroidManifest.xml',
        'app/build.gradle',
        'gradle/wrapper'
    ]
    
    for directory in directories:
        path = os.path.join(base_dir, directory)
        os.makedirs(path, exist_ok=True)
        print(f'Created directory: {path}')

# Main logic

if __name__ == '__main__':
    project_name = sys.argv[1] if len(sys.argv) > 1 else 'MyAndroidProject'
    base_directory = os.path.join(os.getcwd(), project_name)
    create_directory_structure(base_directory)
    print(f'Setup for `{project_name}` completed!')
