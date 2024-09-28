import ballerina/io;

public function main() {
    boolean a = true;
    boolean b = false;

    io:println(a ? "a is true" : "a is false");
    io:println(b ? "b is true" : "b is false");

    // Logical AND
    io:println("a AND b = ", a && b);

    // Logical OR
    io:println("a OR b = ", a || b);

    // Logical NOT
    io:println("NOT a = ", !a);
    io:println("NOT b = ", !b);
}