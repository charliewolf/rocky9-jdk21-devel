FROM rockylinux:9
RUN dn install -y dnf-plugins-core && dnf config-manager --set-enabled crb && dnf groupinstall -y 'Development Tools' &&  dnf install -y java-21-openjdk-devel && dnf clean all
