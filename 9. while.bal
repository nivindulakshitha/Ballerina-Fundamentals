import ballerina/io;

public function main() {
    int number = 1;

    io:println("I'm counting from 1 to 100");

    while number <= 100 {
        io:println(number);
        number += 1;
    }
}