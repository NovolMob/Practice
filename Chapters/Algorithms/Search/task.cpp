#include <iostream>
#include <algorithm>
#include <vector>
#include <chrono>

std::vector<int> read_numbers() {
    int count;
    std::cin >> count;
    std::vector<int> array;
    for (int i = 0; i < count; ++i) {
        int num;
        std::cin >> num;
        array.push_back(num);
    }
    return array;
}

void write_answer(int num, bool answer) {
    printf("%d - %s\n", num, answer ? "Yes" : "No");
}

bool contains(std::vector<int> array, int value) {
    for (const auto &item : array) {
        if (item == value) return true;
    }
    return false;
//    return std::binary_search(array.begin(), array.end(), value);
}

int main() {
    std::vector<int> array = read_numbers();
    std::vector<int> required_numbers = read_numbers();
    for (const auto &item : required_numbers) {
        write_answer(item, contains(array, item));
    }
    return 0;
}
/*
5
1 2 3 4 5
10
1 2 3 4 5 6 7 8 9 10
 */