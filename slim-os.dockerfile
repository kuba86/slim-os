FROM alpine:3.13
RUN apk --no-cache add fish nano p7zip curl gnupg
RUN mkdir /etc/nano && \
mkdir /etc/nano/syntax && \
wget -q -O /etc/nano/nano.zip "https://github.com/scopatz/nanorc/archive/master.zip" && \
unzip -q /etc/nano/nano.zip -d /etc/nano && \
cp /etc/nano/nanorc-master/*.nanorc /etc/nano/syntax/ && \
rm /etc/nano/nano.zip && \
rm -r /etc/nano/nanorc-master && \
echo 'set tabsize 2' >> /etc/nanorc && \
echo 'set linenumbers' >> /etc/nanorc && \
echo 'set trimblanks' >> /etc/nanorc && \
echo 'set softwrap' >> /etc/nanorc && \
echo 'set indicator' >> /etc/nanorc && \
echo 'include "/etc/nano/syntax/*.nanorc"' >> /etc/nanorc
ENTRYPOINT ["/usr/bin/fish"]
