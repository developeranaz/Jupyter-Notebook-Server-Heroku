FROM developeranaz/jupyter-rclone
RUN apt install python pip -y
RUN pip install instaloader
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
CMD /entrypoint.sh
