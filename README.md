# GDart: Dynamic Symbolic Execution for the JVM

## Installation

- you need to have maven on your path
- run ```./build.sh```

## Analysis

- run ```./gdart.sh -h``` for help on options

## Examples

- you can find some examples in ```examples```

- DSE 
    ``` 
    ./gdart.sh -d Example1 ./examples/
    ```
- with data-flow taint:
    ``` 
    ./gdart.sh -d -t DATA Example2 ./examples/
    ```
- with information flow: 
    ``` 
    ./gdart.sh -d -t INFORMATION Example3 ./examples/
    ```
