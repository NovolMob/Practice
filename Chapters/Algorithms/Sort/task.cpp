#include <iostream>

int main() {
    int count;
    std::cin >> count;
    int array[count];
    for (int i = 0; i < count; ++i) {
        std::cin >> array[i];
    }

    for (int i = 0; i < count - 1; ++i) {
        for (int j = 0; j + 1 < count - i; ++j) {
            int num = array[j];
            if (num > array[j + 1]) {
                array[j] = array[j + 1];
                array[j + 1] = num;
            }
        }
    }

    for (int i = 0; i < count; ++i) {
        std::cout << array[i] << " ";
    }
}