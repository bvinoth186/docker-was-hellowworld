FROM ibmcom/websphere-traditional:8.5.5.14-profile
COPY app.ear /work/config/app.ear
COPY install_app.py /work/config/install_app.py
COPY was-config.props /work/config/was-config.props
RUN /work/configure.sh
