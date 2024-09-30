import ballerina/http;

service / on new http:Listener(8080) {

    resource function get greeting() returns string {
        return "Hello, World!";
    }
}