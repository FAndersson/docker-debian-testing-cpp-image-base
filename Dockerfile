# Docker image containing generic tools for C++ development, based on base development image for Debian testing.

FROM fredrikandersson/debian-testing-dev-image-base:2021-10-11

# Basic build/development tools
RUN apt-get update --quiet --yes && apt-get install --quiet --yes cmake make valgrind cppcheck python python3 python3-pip
# Doxygen
RUN apt-get update --quiet --yes && apt-get install --quiet --yes doxygen doxygen-latex graphviz
# Conan package manager
RUN pip install conan
