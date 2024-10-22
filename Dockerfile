FROM quay.io/jupyter/base-notebook

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
RUN dwave install inspector -y

ENV GRANT_SUDO=yes
ENV DWAVE_INSPECTOR_HOST=0.0.0.0
