import ballerina/http;

service on new http:Listener(8080) {
    resource function get add(int x, int y) returns string {
        return (x + y).toString();
    }

    resource function get subtract(int x, int y) returns string {
        return (x - y).toString();
    }

    resource function get multiply(int x, int y) returns string {
        return (x * y).toString();
    }

    resource function get devide(int x, int y) returns string {
        if (y === 0) {
            return "Division by zero error";
        } else {
            return (x / y).toString();
        }
    }

    resource function get modulus(int x, int y) returns string {
        if (y === 0) {
            return "Division by zero error";
        } else {
            return (x % y).toString();
        }
    }
}
