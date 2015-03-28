FROM scratch
MAINTAINER S. Cornelissen

ADD bin/busybox /bin/

ADD script/install-busybox.sh /

RUN ["/bin/busybox","sh","/install-busybox.sh"]

RUN rm /install-busybox.sh
