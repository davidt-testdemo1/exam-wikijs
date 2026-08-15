# exam-wikijs

Wiki.js deployed by Tudovu Plumber onto a custom domain with a managed Postgres.

The app is unmodified: the Dockerfile sets `DB_TYPE` and nothing else. Every
connection detail — host, port, database, user, password — is supplied by the
generated deployment, under the names Wiki.js actually reads (`DB_HOST`,
`DB_PORT`, `DB_NAME`, `DB_USER`, `DB_PASS`).
