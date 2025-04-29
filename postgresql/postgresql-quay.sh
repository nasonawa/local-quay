#!/bin/bash
psql -U "$POSTGRES_USER" -d "$POSTGRES_DB" -c "CREATE EXTENSION IF NOT EXISTS pg_trgm;"
psql -U "$POSTGRES_USER" -d "$POSTGRES_DB" -c "SELECT * from pg_extension;"
