#include <iostream>
#include <string>
#include <map>

struct Compare {
    int operator()(const std::string& str1, const std::string& str2) const {
        auto begin1 = str1.begin();
        auto begin2 = str2.begin();
        while (*begin1 != 0)
        {
            if (*begin1 != *begin2)
                return (*begin1 > *begin2) ? 0 : 1;
            begin1++;
            begin2++;
        }
        return 0;
    }
};

//void addWord(std::map<std::string, int>& words,std::string word) {
//    if (words.find(word) != words.end()) {
//        int count = words[word];
//        words[word] = count + 1;
//    } else {
//        words[word] = 1;
//    }
//}

void addWord(std::map<std::string, int, Compare>& words,std::string word) {
    if (words.find(word) != words.end()) {
        int count = words[word];
        words[word] = count + 1;
    } else {
        words[word] = 1;
    }
}

int main() {
//    std::map<std::string, int> words;
    std::map<std::string, int, Compare> words;
    std::string word;
    char ch;
    while (ch = std::cin.get()) {
        if(ch == '~') break;
        if (std::isalpha(ch) || std::isdigit(ch)) {
            word += (std::isupper(ch)) ? std::tolower(ch) : ch;
        } else {
            addWord(words, word);
            word.clear();
        }
    }
    addWord(words, word);
    for (const auto &item : words) {
        std::cout << item.first << " " << item.second << std::endl;
    }
}

/*
ade adae jiohsf ade ade adae dsadas dsadas dsadas~
 */