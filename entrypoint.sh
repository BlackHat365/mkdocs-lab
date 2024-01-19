#!/bin/sh

# Execute the Mkdocs produce command
if [ "$1" = 'serve' ]; then

# Start Nginx and serve the website
    exec nginx -g 'daemon off;'
elif [ "$1" = 'produce' ]; then
    
    # list all files needed
    ls -al /output
    ls -al /output/site
else
    echo "Unknown command. Please use 'produce'."
    exit 1
fi

