import os
def greeting():


# Get the value of the ENVIRONMENT_VARIABLE environment variable, defaulting to None if not set
environment_value = os.environ.get('ENVIRONMENT_VARIABLE')

# Check if the environment variable is set
if environment_value is not None:
    print(environment_value)
else:
    print("Hello World")

    # make sure only main.py is entry point


if __name__ == "__main__":
    print("This script should not be run directly. Please run main.py instead.")
