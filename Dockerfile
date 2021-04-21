FROM kalilinux/kali-rolling
RUN apt update -y
RUN apt install aria2 -y
RUN apt install jupyter -y

COPY jupyter_notebook_config.json /root/.jupyter/jupyter_notebook_config.json
#RUN curl -O 'http://tiny.cc/tracker-megaindex'

COPY entrypoint.sh /entrypoint.sh
#COPY rclone.conf /.config/rclone/rclone.conf
RUN chmod +x /entrypoint.sh
CMD /entrypoint.sh
