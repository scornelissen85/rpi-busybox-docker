FROM scratch

ADD bin/busybox /bin/

ADD script/install-busybox.sh /

RUN ["/bin/busybox","chmod","+x","/install-busybox.sh"]
RUN ["/bin/busybox","sh","/install-busybox.sh"]
