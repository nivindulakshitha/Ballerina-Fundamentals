import ballerina/io;

string name = "Nivindu Lakshitha";
int age = 22;
boolean married = false;
float height = 6.0;

public function main() {
    io:println("Hi, I'm " , name , ". I'm " , age , " years old. I'm " , height , " feet tall. Am I married? " , married);
}