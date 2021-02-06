FROM photon:3.0
ENV JAVA_HOME=/usr/lib/jvm/OpenJDK-1.11.0
ENV PATH=$JAVA_HOME/bin:$PATH
RUN bash
RUN tdnf check-update
RUN tdnf -y install openjdk11 apache-maven gcc glibc-devel binutils vim -y
RUN mkdir ibm_package
COPY . /ibm_package
RUN chmod +x /ibm_package/bootstart.sh
ENTRYPOINT ["bash", "/ibm_package/bootstart.sh"]
