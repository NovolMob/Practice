#include <iostream>
#include <list>

int main() {
    int n;
    std::cin >> n;
    std::list<int> a;
    for (int i = 0; i < n; ++i) {
        int v;
        std::cin >> v;
        a.insert(a.begin(), v);
    }
    for (const auto &item : a) {

    }
    return 0;
}
