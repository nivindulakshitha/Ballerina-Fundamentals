import ballerina/io;

public function main() {
    int a = 10;
    int b = 20;

    // Add two integers
    int sum = a + b;
    io:println("a add b: ", sum);

    // Subtract two integers
    int sub = a - b;
    io:println("a subtract b: ", sub);

    // Multiply two integers
    int mul = a * b;
    io:println("a multiply b: ", mul);

    // Divide two integers
    float div = <float>a / b; // a explicit cast to floatww
    io:println("a divide b: ", div);

    // Modulus of two integers
    int mod = a % b;
    io:println("a modulus b: ", mod);

    // And bitwise operation
    int and = a & b;
    io:println("a and b: ", and);

    // Or bitwise operation
    int or = a | b;
    io:println("a or b: ", or);

    // Xor bitwise operation
    int xor = a ^ b;
    io:println("a xor b: ", xor);

    // Left shift bitwise operation
    int leftShift = a << 2;
    io:println("a left shift 2: ", leftShift);

    // Right shift bitwise operation
    int rightShift = a >> 2;
    io:println("a right shift 2: ", rightShift);

    // Unary plus
    int plus = +a;
    io:println("Unary plus a: ", plus);

    // Unary minus
    int minus = -b;
    io:println("Unary minus b: ", minus);

    // Increment an integer
    a += 1;
    io:println("a incremented by 1: ", a);

    // Decrement an integer
    b -= 1;
    io:println("b decremented by 1: ", b);
}