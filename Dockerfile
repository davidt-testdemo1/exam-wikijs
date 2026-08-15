# Wiki.js, unmodified. Everything below is configuration the image already expects.
FROM ghcr.io/requarks/wiki:2

# The engine is the app's own choice; the connection details come from the deployment.
ENV DB_TYPE=postgres

# RDS Postgres requires TLS (default.postgres18 ships rds.force_ssl=1), and refuses a plain
# connection with SQLSTATE 28000 — which reads exactly like a wrong password. This is the client
# side of that requirement, in Wiki.js's own spelling.
ENV DB_SSL=1

# Wiki.js serves on 3000.
EXPOSE 3000
