FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update -y && \
    apt-get install -y \
        texlive-latex-extra \
        texlive-fonts-extra \
        dvipng \
        texlive-latex-recommended \
        texlive-base \
        texlive-pictures \
        texlive-lang-cyrillic \
        texlive-science \
        cm-super

WORKDIR /app

COPY CV/ /app/
COPY makepdf.sh /app/makepdf.sh

RUN chmod 777 /app/makepdf.sh

CMD ["./makepdf.sh"]