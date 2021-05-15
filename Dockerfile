FROM fedora:34

RUN dnf update -y

RUN dnf install ansible -y