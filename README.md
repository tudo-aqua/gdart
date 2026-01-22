# GDart: Dynamic Symbolic Execution for the JVM

## Installation

- you need to have maven on your path
- run ```./build.sh```

Alternatively, you can build the Docker image and set up a container:

- Build the image: ```docker build --platform linux/amd64 -t gdart:latest .```
- Set up a local folder to share with the container: ```mkdir shared```
- Create a temporary container: ```docker run --platform linux/amd64 --rm -it -v $(pwd)/shared:/shared gdart:latest```

## Analysis

- run ```./gdart.sh -h``` for help on options

## Examples

- you can find some examples in ```examples```

- DSE 
    ``` 
    ./gdart.sh -d Example1 ../examples/
    ```
- with data-flow taint:
    ``` 
    ./gdart.sh -d -t DATA Example2 ../examples/
    ```
- with information flow: 
    ``` 
    ./gdart.sh -d -t INFORMATION Example3 ../examples/
    ```
