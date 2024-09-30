import ballerina/io;

string face = "\u{1F600}"; // Unicode code point for 😀

string newString = "Hello, " + face;

public function main() returns () {
    string hello = newString.substring(0, 5);
    string face = newString[7];
    int length = newString.length();

    io:println("New String: " + newString);
    io:println("Hello: " + hello);
    io:println("Face: " + face);
    io:println("Length: ", length);
}