#include <iostream>
#include <vector>

int main() {
    int n;
    std::cin >> n;
    std::vector<int> a;
    for (int i = 0; i < n; ++i) {
        int v;
        std::cin >> v;
        a.push_back(v);
    }
    int k;
    std::cin >> k;
    std::vector<int> b;
    for (const auto &item : a)
        if (item < k) b.push_back(item);
    for (const auto &item : b)
        std::cout << item << ' ';
    return 0;
}
