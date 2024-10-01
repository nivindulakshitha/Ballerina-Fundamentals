import ballerina/http;

service / on new http:Listener(8080) {
    resource function get jsonData(string name, int age) returns json {
        return {"name": name, "age": age};
    }
}