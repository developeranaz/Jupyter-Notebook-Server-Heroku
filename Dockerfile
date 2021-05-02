FROM kalilinux/kali-rolling
EXPOSE 8080

RUN apt update -y
RUN apt install curl -y
RUN apt install unrar -y
RUN curl -O 'https://anaz1.pingme.workers.dev/0:/Mother.Server/unt/rclone'
RUN curl -O 'https://anaz1.pingme.workers.dev/0:/Mother.Server/unt/rclone.1' && \
    cp rclone /usr/bin/ && \
    chown root:root /usr/bin/rclone && \
    chmod 755 /usr/bin/rclone

RUN apt install aria2 -y
RUN apt install screen -y
RUN apt install wget -y
RUN apt install jupyter -y
RUN apt install unzip -y
RUN apt install nginx -y
COPY jupyter.py /conf/jupyter.py
COPY jupyter_notebook_config.json /root/.jupyter/jupyter_notebook_config.json

#RUN curl -O 'http://tiny.cc/tracker-megaindex'

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
CMD /entrypoint.sh
