//
// Created by NovolMob on 14.10.2021.
//
#include <iostream>
#include <string>
#include <vector>

bool is_anagram(std::string str, std::string test) {
    if (str.size() != test.size()) return false;
    for (const auto &item : str) {
        int index = test.find(item);
        if (index != std::string::npos) test.replace(index, 1, ""); else return false;
    }
    return test.size() == 0;
}

int main() {
    std::vector<std::string> results;
    std::string str;
    std::cin >> str;
    int count;
    std::cin >> count;
    for (int i = 0; i < count; ++i) {
        std::string test;
        std::cin >> test;
        if (std::hash<std::string>{}(str) != std::hash<std::string>{}(test) &&
                is_anagram(str, test)) results.push_back(test);
    }
    for (const auto &item : results) {
        std::cout << item;
    }
    return 0;
}


/*
listen
4
enlists
google
inlets
banana
 */