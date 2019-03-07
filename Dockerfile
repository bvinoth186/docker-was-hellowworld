FROM ibmcom/websphere-traditional:9.0.0.9-profile
COPY app.ear /work/config/app.ear
COPY install_app.py /work/config/install_app.py
COPY was-config.props /work/config/was-config.props
RUN /work/configure.sh
EXPOSE 9443 9043 
