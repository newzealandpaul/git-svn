FROM alpine

RUN apk fix && \
    apk --no-cache --update add git git-svn git-lfs gpg less openssh patch perl && \
    git lfs install

VOLUME /git
WORKDIR /git

ENTRYPOINT ["git"]
CMD ["--help"]
