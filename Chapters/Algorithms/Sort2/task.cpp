#include <iostream>
#include <algorithm>
#include <vector>

int main() {
    int count;
    std::cin >> count;
    std::vector<int> array;
    for (int i = 0; i < count; ++i) {
        int num;
        std::cin >> num;
        array.push_back(num);
    }
//    std::sort(array.begin(), array.end());
    std::sort(array.begin(), array.end(), std::greater<>());
    for (int i = 0; i < count; ++i) {
        std::cout << array[i] << " ";
    }
}