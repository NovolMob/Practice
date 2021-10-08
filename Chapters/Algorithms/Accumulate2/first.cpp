#include <iostream>
#include <numeric>
#include <cmath>

typedef int MyArr[5];

void f(MyArr a) {
    a[4] = 0;
}

int prod(int first, int second) {
    return first * second;
}

int main() {
    MyArr a = {1, 2, 3, 4, 5};
    int size = sizeof(a) / sizeof(*a);
    auto* begin = std::begin(a);
    auto* end = std::end(a);
//    auto* end = std::begin(a) + (int) round((double) size / 2);
    std::cout << " Sum1 : " << std::accumulate(begin, end, 1, prod) << '\n';
    f(a);
    std::cout << " Sum2 : " << std::accumulate(begin, end, 1, prod) << '\n';
}