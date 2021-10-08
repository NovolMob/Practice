#include <iostream>
#include <string>

int main() {
    std::string line;
    int n;
    std::cout << "Write a string." << std::endl;
    std::cin >> line;
    std::cout << "Write n." << std::endl;
    std::cin >> n;
    int count = line.length() - n;
    for (int i = 0; i <= count; ++i) {
        std::cout << line.substr(i, n) << std::endl;
    }
    return 0;
}