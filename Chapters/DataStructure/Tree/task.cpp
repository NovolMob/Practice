#include <iostream>
#include <vector>
#include <algorithm>
#include <string>

const char SPACE = ' ';

struct Vertex {
    int number;
    Vertex* left = nullptr;
    Vertex* right = nullptr;

    Vertex(int number): number(number) {}

    int get_width() {
        return get_left_width() + (std::to_string(number).length()) + get_right_width();
    }

    int get_left_width() {
        return (left != nullptr) ? left->get_width() : 1;
    }

    int get_right_width() {
        return (right != nullptr) ? right->get_width() : 1;
    }

    std::vector<std::string> get_drawing_strings(bool is_left = false, bool is_right = false) {
        std::vector<std::string> strings;
        int left_width = get_left_width();
        int right_width = get_right_width();
        std::string left_space = std::string(left_width, SPACE);
        std::string right_space = std::string(right_width, SPACE);
        std::string first = left_space + std::to_string(number) + right_space;

        if (is_left) {
            for (int i = 0; i < right_width; ++i) {
                strings.push_back(std::string(first.size() - i - 1, SPACE) + "/" + std::string(i, SPACE));
            }
        } else if (is_right) {
            for (int i = 0; i < left_width; ++i) {
                strings.push_back(std::string(i, SPACE) + '\\' + std::string(first.size() - i - 1, SPACE));
            }
        }

        strings.push_back(first);

        std::vector<std::string> left_strings;
        if (left != nullptr) left_strings = left->get_drawing_strings(true);

        std::vector<std::string> right_strings;
        if (right != nullptr) right_strings = right->get_drawing_strings(false, true);

        for (int i = 0; i < std::max(left_strings.size(), right_strings.size()); ++i) {
            std::string left_string = (i < left_strings.size()) ? left_strings[i] : left_space;
            std::string right_string = (i < right_strings.size()) ? right_strings[i] : right_space;
            strings.push_back(left_string + std::string((std::to_string(number).length()), SPACE) + right_string);
        }
        return strings;
    }

    void add_connect(Vertex* vertex) {
        if (left == nullptr) left = vertex; else right = vertex;
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

    std::vector<std::string> output = peak->get_drawing_strings();
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

