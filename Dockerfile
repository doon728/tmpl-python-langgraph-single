FROM python:3.11-slim

WORKDIR /app

COPY pyproject.toml poetry.lock* /app/

RUN pip install poetry && \
    poetry config virtualenvs.create false && \
    poetry install --no-root --no-interaction --no-ansi

COPY agent /app/agent

ENV PYTHONPATH=/app

CMD ["python", "-m", "agent.main"]
