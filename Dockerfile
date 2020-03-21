ARG BASE_IMG
FROM $BASE_IMG

VOLUME ["/data"]

EXPOSE 9000

CMD ["server","./data"]
