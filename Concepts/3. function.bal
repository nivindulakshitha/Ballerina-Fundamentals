import ballerina/io;

function add (int x, int y) returns int {
    int sum = x + y;
    return sum;
}

public  function main() {
    int result = add(10, 20);
    io:println("10 + 20 = ", result);
}