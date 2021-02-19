FROM matrixdotorg/synapse:v1.26.0
RUN mkdir -p /data/media_store && chown -R 991:991 /data/media_store
COPY ./homeserver.yaml /data/
RUN chmod 554 /data/homeserver.yaml
# RUN chown synapse /var/log/synapse
