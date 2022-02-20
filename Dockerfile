FROM alpine
RUN apk add openssh --no-cache && rm -rf /etc/ssh /etc/passwd /etc/motd /etc/group
ADD entry.sh /
EXPOSE 22
ENTRYPOINT ["/entry.sh"]
CMD ["/usr/sbin/sshd","-D"]
