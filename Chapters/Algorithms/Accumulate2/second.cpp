#include <iostream>
#include <array>
#include <numeric>
#include <cmath>

typedef std::array<int, 5> MyArr;

void f(MyArr& a) {
    a[4] = 0;
}

int prod(int first, int second) {
    return first * second;
}

int main() {
    MyArr a = {1, 2, 3, 4, 5};
    auto* begin = a.begin();
    auto* end = a.end();
//    auto* end = a.begin() + (int) round((double) a.size() / 2);
    std::cout << " Sum1 : " << std::accumulate(begin, end, 1, prod) << '\n';
    f(a);
    std::cout << " Sum2 : " << std::accumulate(begin, end, 1, prod) << '\n';
}