import ballerina/io;

public function main() returns () {
    int? x = (); // nil value; () indicates nil

    if (x is ()) {
        io:print("x is nil");
        x = x == () ? 5 : x;
        io:println(" but assigned 5; now x = ", x);
    } else {
        io:println("x is not nil");
    }
}