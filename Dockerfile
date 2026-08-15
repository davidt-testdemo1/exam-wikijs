# Wiki.js, unmodified. Everything below is configuration the image already expects.
FROM ghcr.io/requarks/wiki:2

# The engine is the app's own choice; the connection details come from the deployment.
ENV DB_TYPE=postgres

# Wiki.js serves on 3000.
EXPOSE 3000
