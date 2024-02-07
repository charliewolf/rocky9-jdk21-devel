FROM rockylinux:9
RUN dnf install -y dnf-plugins-core && dnf config-manager --set-enabled crb && dnf groupinstall -y 'Development Tools' &&  dnf install -y java-21-openjdk-devel && dnf clean all
ENV JAVA_HOME=/usr/lib/jvm/java-21-openjdk
ENV GRAALVM_HOME=/usr/local/lib/graalvm
RUN mkdir -p ${GRAALVM_HOME} && curl -L https://download.oracle.com/graalvm/21/latest/graalvm-jdk-21_linux-x64_bin.tar.gz | tar -xz --strip-components 1 -C ${GRAALVM_HOME}
