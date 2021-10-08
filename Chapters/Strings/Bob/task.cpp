#include <iostream>
#include <string>

const std::string SURE = "Sure.";
const std::string CHILL = "Whoa, chill out!";
const std::string CALM_DOWN = "Calm down, I know what I'm doing!";
const std::string FINE = "Fine. Be that way!";
const std::string WHATEVER = "Whatever.";
const std::string GOODBYE = "Goodbye!";

const std::string PREFIX_YOU = "You: ";
const std::string PREFIX_BOB = "Bob: ";

bool is_question(std::string string) {
    return string[string.length() - 1] == '?';
}

bool is_full_upper(const std::string& string) {
    for (const auto &item : string) {
        if (std::isalpha(item) && !std::isupper(item)) return false;
    }
    return true;
}

bool is_only_spaces(const std::string& string) {
    for (const auto &item : string) {
        if (!std::isspace(item)) return false;
    }
    return true;
}

bool is_bye(std::string string) {
    return std::equal(string.begin(), string.end(), "Bye");
}

std::string get_answer_by_bob(const std::string& message) {
    if (is_bye(message)) {
        return GOODBYE;
    }
    if (is_question(message)) {
        if (is_full_upper(message)) {
            return CALM_DOWN;
        } else {
            return SURE;
        }
    } else {
        if (is_only_spaces(message)) {
            return FINE;
        }else if (is_full_upper(message)) {
            return CHILL;
        }
    }
    return WHATEVER;
}

int main() {
    while (true) {
        std::string message;
        std::cout << PREFIX_YOU;
        std::getline(std::cin, message);
        std::cout << PREFIX_BOB + get_answer_by_bob(message) << std::endl;
        if (is_bye(message)) {
            break;
        }
    }
    return 0;
}