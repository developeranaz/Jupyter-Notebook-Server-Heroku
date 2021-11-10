FROM developeranaz/jupyter-rclone
RUN apt install pip -y
RUN pip install instaloader
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
CMD /entrypoint.sh
