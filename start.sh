#!/bin/bash
PORT=${PORT:-5000}
FLASK_ENV=${FLASK_ENV:-production}
WORKERS=${WORKERS:-1}
export FLASK_ENV
export PORT
export WORKERS

# Start the Flask application using Gunicorn WSGI server
exec gunicorn -w ${WORKERS} -b :$PORT  --threads 8 --timeout 0 wsgi:app