//
// Created by NovolMob on 14.10.2021.
//
#include <iostream>
#include <string>
#include <map>

int main() {
    int n;
    std::cin >> n;
    std::map<std::string, std::string> wordToDef;
    for (int i = 0; i < n; ++i) {
        std::string word, def;
        std::cin >> word >> def;
        wordToDef[word] = def;
    }
    std::string s;
    while (std::cin >> s) {
        if (wordToDef.find(s) != wordToDef.end()) {
            std::cout << wordToDef[s] << std::endl;
        } else {
            std::cout << "Not found" << std::endl;
        }
    }
}