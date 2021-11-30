FROM developeranaz/jupyter-rclone
RUN apt install net-tools
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
CMD /entrypoint.sh
