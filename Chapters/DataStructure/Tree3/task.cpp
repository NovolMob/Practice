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

    std::string find(int num) {
        std::string result = std::to_string(number);
        std::string added = " -> ";
        if (num < number) {
            if (left != nullptr) added += left->find(num); else added += "X";
        } else if (num > number) {
            if (right != nullptr) added = added += right->find(num); else added += "X";
        } else {
            added = "";
        }
        return result + added;
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

std::string create_output(int num, std::string str) {
    return std::to_string(num) + ": " + str;
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

    int count;
    std::cin >> count;
    std::vector<std::string> output;
    for (int i = 0; i < count; ++i) {
        int num;
        std::cin >> num;
        output.push_back(create_output(num, peak->find(num)));
    }
    for (const auto &item : output) {
        std::cout << item << std::endl;
    }
}

/*
7
4 2
4 6
2 1
6 5
2 3
6 7
 */

