import ballerina/io;

public function main() {
    int? x = (); // nil value; () indicates nil

    if (x is ()) {
        io:println("x is nil");
    } else {
        io:println("x is not nil");
    }
}