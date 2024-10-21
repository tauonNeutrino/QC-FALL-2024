FROM quay.io/jupyter/base-notebook

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
RUN dwave install inspector -y

ENV GRANT_SUDO=yes
