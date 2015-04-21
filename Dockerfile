from ubuntu:14.04

RUN apt-get update && apt-get -y upgrade && apt-get clean all
RUN apt-get install -y build-essential software-properties-common boinc
ADD runboinc.sh /var/lib/boinc-client/runboinc.sh
RUN chmod +x /var/lib/boinc-client/runboinc.sh
WORKDIR /var/lib/boinc-client
CMD ["./runboinc.sh"]
