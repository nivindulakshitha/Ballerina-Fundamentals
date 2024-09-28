import ballerina/io;

function sumofFloats(float[] floats) returns float {
    float sum = 0;

    foreach float x in floats {
        sum += x;
    }

    return sumofFloatsbyIndex(floats) == sum ? sum : 0;
}

function sumofFloatsbyIndex(float[] floats) returns float {
    float sum = 0;

    foreach int i in 0..<floats.length() {
        sum += floats[i];
    }

    return sum;
}

public function main() {
    int[] numbers = [1, 2, 3, 4, 5];

    int firstElement = numbers[0];
    int length = numbers.length();

    io:println("First Element: ", firstElement);
    io:println("Length: ", length);

    float[] floatNumbers = [1.1, 2.2, 3.3, 4.4, 5.5];
    io:println("Sum of Floats: ", sumofFloats(floatNumbers));
}