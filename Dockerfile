FROM rockylinux:9
RUN crb enable && dnf groupinstall -y 'Development Tools' &&  dnf install -y java-21-openjdk-devel && dnf clean all
