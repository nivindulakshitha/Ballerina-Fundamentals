import ballerina/http;

type GreetMessage record {
    string message;
};

service / on new http:Listener(5000) {
    resource function get greet(string? name) returns GreetMessage {
        GreetMessage greetMessage = {
            message: name == null ? "Hello, Guest!" : string `Hello, ${name}`
        };

        return greetMessage;
    }
}