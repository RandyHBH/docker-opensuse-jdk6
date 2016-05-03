# Use latest opensuse image as the base
FROM opensuse

MAINTAINER Raúl Romero García <rromerogar@uoc.edu>

LABEL version="1.0.0"
LABEL description="Latest openSUSE image with JDK6."

# Install JDK 6
RUN zypper -n ar http://download.opensuse.org/repositories/Java:/Factory/openSUSE_42.1/ Java:Factory \
    && zypper -n --gpg-auto-import-keys ref \
    && zypper -n install java-1_6_0-openjdk java-1_6_0-openjdk-devel
