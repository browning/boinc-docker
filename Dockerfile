from ubuntu:14.04

RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get install -y build-essential
RUN apt-get install -y software-properties-common
RUN apt-get install -y boinc
ADD runboinc.sh /var/lib/boinc-client/runboinc.sh
RUN chmod +x /var/lib/boinc-client/runboinc.sh
WORKDIR /var/lib/boinc-client
CMD ["./runboinc.sh"]
