# Introduction

This repository contains reproduction for https://github.com/prisma/prisma-client-js/issues/955

# Steps

1. Clone this repository and replace creds in `prisma/.env`
2. Run `npx prisma migrate dev --preview-feature`
3. Open Prisma studio and add 2 users. Add a marriage between these two users.
4. Run the main script using `yarn start` to reproduce the crash


# Version

```
Environment variables loaded from prisma/.env
@prisma/cli          : 2.14.0-dev.60
@prisma/client       : 2.14.0-dev.60
Current platform     : darwin
Query Engine         : query-engine 59cf08bf47e90cb37532900059f3328b4328237c (at node_modules/@prisma/engines/query-engine-darwin)
Migration Engine     : migration-engine-cli 59cf08bf47e90cb37532900059f3328b4328237c (at node_modules/@prisma/engines/migration-engine-darwin)
Introspection Engine : introspection-core 59cf08bf47e90cb37532900059f3328b4328237c (at node_modules/@prisma/engines/introspection-engine-darwin)
Format Binary        : prisma-fmt 59cf08bf47e90cb37532900059f3328b4328237c (at node_modules/@prisma/engines/prisma-fmt-darwin)
Studio               : 0.332.0

```
