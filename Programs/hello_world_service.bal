import ballerina/http;

service / on new http:Listener(8080) {

    resource function get greeting(string name) returns string {
        string formatedName = name[0].toUpperAscii() + name.substring(1).toLowerAscii();
        return "Hey, " + formatedName + "!";
    }
}