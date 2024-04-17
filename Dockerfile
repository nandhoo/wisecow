FROM ubuntu:latest

RUN apt-get update && apt-get install -y fortune cowsay netcat && \
    cp /usr/games/cowsay /usr/local/bin/cowsay && \
    cp /usr/games/fortune /usr/local/bin/fortune

COPY wisecow.sh /usr/local/bin/winescow.sh
RUN chmod +x /usr/local/bin/winescow.sh

EXPOSE 4499
CMD ["/usr/local/bin/winescow.sh"]