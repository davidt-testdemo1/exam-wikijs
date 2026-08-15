# Wiki.js, unmodified. Everything below is configuration the image already expects.
FROM ghcr.io/requarks/wiki:2

# The engine is the app's own choice; the connection details come from the deployment.
ENV DB_TYPE=postgres

# RDS Postgres requires TLS — default.postgres18 ships rds.force_ssl=1, and refuses a plain
# connection with SQLSTATE 28000, which reads exactly like a wrong password.
ENV DB_SSL=1

# Turning TLS on moves the error rather than removing it: node-postgres verifies the chain and
# fails with SELF_SIGNED_CERT_IN_CHAIN, because the Amazon RDS CA is not in the system store.
ADD https://truststore.pki.rds.amazonaws.com/global/global-bundle.pem /wiki/rds-ca.pem
ENV DB_SSL_CA=/wiki/rds-ca.pem
ENV NODE_EXTRA_CA_CERTS=/wiki/rds-ca.pem

# Wiki.js serves on 3000.
EXPOSE 3000
