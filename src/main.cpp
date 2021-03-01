#include <iostream>

#include "engine.hpp"

int main() {
    Engine app{};

    try {
        app.run();
    } catch (const std::exception& e) {
        std::cerr << e.what() << std::endl;
        return EXIT_FAILURE;
    }

    std::cout << "Hello\n";
    return EXIT_SUCCESS;
}