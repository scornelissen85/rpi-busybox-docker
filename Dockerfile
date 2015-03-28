FROM scratch

ADD bin/busybox* /bin/

ADD script/install-busybox.sh /

CMD ["/bin/busybox","sh","/install-busybox.sh"]
