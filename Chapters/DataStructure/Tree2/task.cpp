#include <iostream>
#include <vector>
#include <algorithm>
#include <string>
#include <cmath>

const int NULL_VERTEX = -1;
const char SPACE = ' ';

struct Vertex {
    int number;
    Vertex* left = nullptr;
    Vertex* right = nullptr;

    Vertex(int number): number(number) {}

    void add_connect(Vertex* vertex) {
        if (left == nullptr) left = vertex; else right = vertex;
    }

    bool less_than(int num) {
        return (left == nullptr || left->less_than(num)) && (right == nullptr || right->less_than(num)) && number < num;
    }

    bool more_than(int num) {
        return (left == nullptr || left->more_than(num)) && (right == nullptr || right->more_than(num)) && number > num;
    }

    bool is_search_tree() {
        bool less_than_number = left == nullptr || left->less_than(number);
        bool more_than_number = right == nullptr || right->more_than(number);
        return less_than_number && more_than_number;
    }
};

std::vector<Vertex*> create_vertices(int n) {
    std::vector<Vertex*> vertices;
    for (int i = 0; i < n; ++i) {
        vertices.push_back(new Vertex(i + 1));
    }
    return vertices;
}

void read_connections(std::vector<Vertex*> vertices) {
    int size = vertices.size();
    for (int i = 0; i < size - 1; ++i) {
        int first, second;
        std::cin >> first >> second;
        vertices[first - 1]->add_connect(vertices[second - 1]);
    }
}

Vertex* find_peak(std::vector<Vertex*> vertices) {
    int count = vertices.size();
    bool was[count];
    for (int i = 0; i < count; ++i) {
        was[i] = false;
    }
    for (const auto &item : vertices) {
        if (item->left != nullptr) was[item->left->number - 1] = true;
        if (item->right != nullptr) was[item->right->number - 1] = true;
    }
    for (int i = 0; i < count; ++i) {
        if (!was[i]) return vertices[i];
    }
    return nullptr;
}



int main() {
    int n;
    std::cin >> n;
    std::vector<Vertex*> vertices = create_vertices(n);
    read_connections(vertices);

    Vertex* peak = find_peak(vertices);
    if (peak == nullptr) {
        std::cout << "Error. Peak not found.";
        return 1;
    }

    std::cout << ((peak->is_search_tree()) ? "This is binary search tree" : "This is not binary search tree");
}

/*
7
4 2
4 6
2 1
6 5
7 3
6 7
 */

/*
         4
        / \
       /   \
      /     \
     2       6
    /       / \
   1       5   7
              /
             3
 */

