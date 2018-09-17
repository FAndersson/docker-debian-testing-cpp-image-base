# Docker image containing generic tools for C++ development, based on base development image for Debian testing.

FROM fredrikandersson/debian-testing-dev-image-base:buster-2018-09-17

# Basic build/development tools
RUN apt-get update --quiet --yes && apt-get install --quiet --yes cmake make valgrind python python3 python-pip python3-pip
# Conan package manager
RUN pip install conan
