#include <iostream>
#include <string>
#include <cmath>

std::string normalize_text(const std::string& text) {
    std::string result;
    for (const auto &item : text) {
        if (std::isalpha(item)) {
            result += (char) std::tolower(item);
        } else if(std::isdigit(item)) {
            result += item;
        }
    }
    return result;
}

std::pair<int, int> get_r_and_c(const int normalize_text_length) {
    int root = (int) (sqrt(normalize_text_length) + (double) 0.5);
    if (root * root < normalize_text_length) {
        return std::make_pair(root, root + 1);
    } else return std::make_pair(root, root);
}

std::string encode_message(const std::string& norm_text, int r, int c) {
    std::string result;
    int length = norm_text.length();
    for (int i = 0; i < c; ++i) {
        for (int j = 0; j < r; ++j) {
            int id = j * c + i;
            result += id < length ? norm_text[id] : ' ';
        }
    }
    return result;
}

void write(const std::string& encoded_messages, int r, int c) {
    for (int i = 0; i < c; ++i) {
        std::cout << encoded_messages.substr(r * i, r);
        if (i != c - 1) {
            std::cout << " ";
        }
    }
}

int main() {
    std::string text;
    std::cout << "Write a text." << std::endl;
    std::getline(std::cin, text);
    std::string norm_text = normalize_text(text);
    
    std::pair<int, int> r_and_c = get_r_and_c(norm_text.length());
    int r = r_and_c.first;
    int c = r_and_c.second;

    std::string encoded_messages = encode_message(norm_text, r, c);
    write(encoded_messages, r, c);
    return 0;
}