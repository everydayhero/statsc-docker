FROM node

ENV PORT=8127
EXPOSE 8127

RUN mkdir -p /usr/local/statsc

COPY . /usr/local/statsc/
WORKDIR /usr/local/statsc/

RUN npm update

CMD ["/usr/local/statsc/bin/statsc-server"]
