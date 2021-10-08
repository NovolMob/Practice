#include <iostream>
#include <string>

const int DIF_UPPER_AND_LOWER = 32;
const int FIRST_UPPER_CHAR = 65;
const int FIRST_LOWER_CHAR = 97;
const int LAST_ALPHA_CHAR = 122;

//bool isalpha(char ch) {
//    return ch >= FIRST_UPPER_CHAR && ch <= LAST_ALPHA_CHAR;
//}
//
//char tolower(char ch) {
//    return (char) (ch + DIF_UPPER_AND_LOWER);
//}
//
//char toupper(char ch) {
//    return (char) (ch - DIF_UPPER_AND_LOWER);
//}

int main() {
    std::string  line;
    std::cout << "Write a string." << std::endl;
    std::getline(std::cin, line);
    for (const auto &item : line) {
        if (std::isalpha(item)) {
            char lower = (char) std::tolower(item);
            char upper = (char) std::toupper(item);
            int first = line.find(item);
            if (line.find(lower, first + 1) != std::string::npos || line.find(upper, first + 1) != std::string::npos) {
                std::cout << "The string is not an isogram.";
                return 0;
            }
        }
    }
    std::cout << "The string is an isogram.";
    return 0;
}