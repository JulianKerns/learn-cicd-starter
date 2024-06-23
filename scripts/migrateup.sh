#!/bin/bash

if [ -f environment.env ]; then
    source environment.env
fi


cd sql/schema
goose turso $DATABASE_URL up
