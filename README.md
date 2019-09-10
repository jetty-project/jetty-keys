This Git contains the keys used to release Jetty distribution.

It can be used to verify the distribution you downloaded as it (via Dockerfile)
```
COPY --from=jetty:keys /keys/KEYS /tmp/
RUN set -x \
	&& export GNUPGHOME="$(mktemp -d)" \
	&& gpg --import /tmp/KEYS \
	&& gpg --verify jetty.tar.gz.asc \
	&& rm -rf "$GNUPGHOME" \
``` 
