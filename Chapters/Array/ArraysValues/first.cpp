#include <iostream>

typedef int MyArr[5];

void f(MyArr a) {
    a[4] = 0;
}

int sum(MyArr a, int size) {
    int r = 0;
    for (int i = 0; i < size; ++ i)
        r += a[i];
    return r ;
}

int main() {
    MyArr a = {1, 2, 3, 4, 5};
    int size = sizeof(a) / sizeof(*a);
    std::cout << " Sum1 : " << sum(a, size) << '\n';
    f(a);
    std::cout << " Sum2 : " << sum(a, size) << '\n';
}