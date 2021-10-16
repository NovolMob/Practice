#include <iostream>
#include <vector>

template <typename Data> class CircularBuffer {
public:
    CircularBuffer() {}

    ~CircularBuffer() {}

    void push(Data data) {
        vector.push_back(data);
    }

    void pop() {
        vector.pop_back();
        readIndex %= vector.size();
        writeIndex %= vector.size();
    }

    Data read() {
        Data data = vector[readIndex];
        readIndex++;
        readIndex %= vector.size();
        return data;
    }

    void write(Data data) {
        vector[writeIndex] = data;
        writeIndex++;
        writeIndex %= vector.size();
    }

    void clear() {
        readIndex = 0;
        writeIndex = 0;
        vector.clear();
    }

protected:
    int readIndex = 0, writeIndex = 0;
    std::vector<Data> vector;
};

int main() {
    auto *buffer = new CircularBuffer<int>;
    for (int i = 0; i < 5; ++i) {
        buffer->push(i);
    }
    buffer->pop();
    for (int i = 0; i < 10; ++i) {
        std::cout << buffer->read();
    }
    delete buffer;
}
