FROM arpitaverma03/ubuntu-sysbench 

COPY docker_script.sh /docker_script.sh
COPY test-cpu.sh /test-cpu.sh
COPY test-fileio.sh /test-fileio.sh

RUN chmod +x docker_script.sh
RUN chmod +x test-cpu.sh
RUN chmod +x test-cpu.sh

ENTRYPOINT bash docker_script.sh

