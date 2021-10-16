#include <iostream>
#include <string>
#include <vector>
#include <unordered_set>
#include <algorithm>

void createWords(std::string word, std::vector<std::string>& output, int pos = 0) {
    if (pos >= word.size()) {
        if (std::find(output.begin(), output.end(), word) == output.end()) {
            output.push_back(word);
        }
    } else {
        for (int i = pos; i < word.size(); ++i) {
            std::swap(word[i], word[pos]);
            createWords(word, output, pos + 1);
            std::swap(word[i], word[pos]);
        }
    }
}

int main() {
    std::unordered_set<std::string, std::hash<std::string>> candidates;
    std::string mainWord;
    std::cin >> mainWord;
    int count;
    std::cin >> count;
    for (int i = 0; i < count; ++i) {
        std::string word;
        std::cin >> word;
        candidates.insert(word);
    }
    std::vector<std::string> output;
    createWords(std::string(mainWord), output);
    for (const auto &item : output) {
        if (candidates.find(item) != candidates.end()) {
            std::cout << item << std::endl;
        }
    }
}

/*
test
5
sarta
teaf
stet
ttse
dasd
 */