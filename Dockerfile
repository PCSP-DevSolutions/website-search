# Use an official OpenJDK 17 runtime as a parent image
FROM openjdk:17

# # Install OpenVPN
# RUN apt-get update && \
#     apt-get install -y openvpn
#
# ADD your_vpn_config.ovpn /etc/openvpn/
# ADD start_vpn.sh /usr/local/bin/start_vpn.sh
# RUN chmod +x /usr/local/bin/start_vpn.sh

ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar

EXPOSE 8675

# Define environment variable
ENV JAVA_OPTS=""

CMD ["sh", "-c", " java $JAVA_OPTS -jar /app.jar"]
