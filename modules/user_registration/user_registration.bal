import ballerina/http;

type UserDetails record {
    string name;
    string email;
    string password;
};

service / on new http:Listener(8080) {
    resource function post register(http:Caller caller, http:Request req) returns error? {
        json|error payload = check req.getJsonPayload();

        if (payload is error) {
            json errorResponse = {found: "User information is not given."};
            check caller->respond(errorResponse);
            return;
        }

        string userName = (check payload.name).toString();
        string userMail = (check payload.email).toString();
        string userPass = (check payload.password).toString();

        UserDetails newUser = {
            name: userName,
            email: userMail,
            password: userPass
        };

        json response = {message: "User registered successfully!", user: newUser.toJson()};
        check caller->respond(response);
    }
}
