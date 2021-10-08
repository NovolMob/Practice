#include <iostream>
#include <vector>
#include <algorithm>
#include <string>
#include <cmath>

const int NULL_VERTEX = -1;

int** create_tree_array(int n) {
    int** tree = new int*[n];
    for (int i = 0; i < n; ++i) {
        tree[i] = new int[2]{NULL_VERTEX, NULL_VERTEX};
    }
    return tree;
}

void read_tree(int** tree, int n) {
    for (int i = 0; i < n - 1; ++i) {
        int first, second;
        std::cin >> first >> second;
        if (tree[first - 1][0] != NULL_VERTEX) {
            tree[first - 1][1] = second - 1;
        } else {
            tree[first - 1][0] = second - 1;
        }
    }
}

int find_peak(int** tree, int n) {
    std::vector<int> was;
    for (int i = 0; i < n; ++i) {
        was.push_back(tree[i][0]);
        was.push_back(tree[i][1]);
    }
    for (int i = 0; i < n; ++i) {
        if (std::find(was.begin(), was.end(), i) == was.end()) return i;
    }
    return NULL_VERTEX;
}

std::vector<std::vector<int>> sort_to_levels(int** tree, int n, int peak) {
    std::vector<std::vector<int>> levels = {{peak}};
    int last_level_id = 0;
    while (last_level_id < levels.size()) {
        bool push = false;
        std::vector<int> level;
        std::vector<int> vertices = levels[last_level_id];
        for (const auto &item : vertices) {
            for (int i = 0; i < 2; ++i) {
                if (item >= 0) {
                    level.push_back(tree[item][i]);
                    push = true;
                }
            }
        }
        last_level_id++;
        if (push) levels.push_back(level);
    }
    return levels;
}

std::string create_string_with_vertices(std::vector<int> vertices, int width) {
    std::string space = std::string((int) (width - vertices.size()) / (2 * vertices.size()), ' ');
    std::string result;
    for (const auto &item : vertices) {
        std::string num = " ";
        if (item != NULL_VERTEX) {
            num = std::to_string(item + 1);
        }
        result.append(space + num + space);
    }
    return result;
}

int main() {
    int n;
    std::cin >> n;
    int** tree = create_tree_array(n);
    read_tree(tree, n);

    int peak = find_peak(tree, n);
    if (peak == NULL_VERTEX) {
        return 1;
    }

    std::vector<std::vector<int>> levels = sort_to_levels(tree, n, peak);

    int width = 15;
    for (const auto &item : levels) {
        std::cout << create_string_with_vertices(item, width) << std::endl;
    }
}

//    for (int i = 0; i < n; ++i) {
//        int vertex = i + 1;
//        for (int j = 0; j < 2; ++j) {
//            int edge = tree[i][j];
//            if (edge != NULL_VERTEX)
//                printf("%d -> %d\n", vertex, (tree[i][j] + 1));
//        }
//    }

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

