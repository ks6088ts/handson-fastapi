FROM python:3.10.5-bullseye

ENV DEBIAN_FRONTEND=noninteractive
ENV POETRY_HOME=/opt/poetry
ENV PATH="${POETRY_HOME}/bin:${PATH}"

WORKDIR /workspace

ADD . .

RUN make install-poetry && \
    make install-deps-dev \
      POETRY_VENV_CREATE=false
