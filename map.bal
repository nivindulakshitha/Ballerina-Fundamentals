import ballerina/io;

public function main() {
    map<int> cityPopulation = {"London": 8, "Paris": 5, "Berlin": 3};
    io:println("Population of London: ", cityPopulation["London"]);

    cityPopulation["London"] = 9;
    io:println("Value changed of population of London: ", cityPopulation["London"]);

    int? Paris = cityPopulation["Paris"];
    io:println("Value of population of Paris: ", Paris);

    cityPopulation["Sri Lanka"] = 2;
    io:println("Value of population of Sri Lanka: ", cityPopulation["Sri Lanka"]);

    int newCityPopulation = cityPopulation.remove("Paris"); // This returns the value of the key removed
    io:println("Value of population of removed Paris: ", newCityPopulation);
}