# Use OpenJDK 17 as base image
FROM eclipse-temurin:17-jdk

# Set environment variables
ENV MAGNOLIA_HOME=/opt/magnolia
ENV JAVA_OPTS="-Xms1024m -Xmx3072m"
ENV MAGNOLIA_AUTHOR_PORT=8080
ENV MAGNOLIA_PUBLIC_PORT=8080

# Create Magnolia home directory
RUN mkdir -p ${MAGNOLIA_HOME}

WORKDIR ${MAGNOLIA_HOME}

# Copy the entire src directory (including Tomcat)
COPY src/ ${MAGNOLIA_HOME}/

# Expose ports
EXPOSE ${MAGNOLIA_AUTHOR_PORT}

# Start Magnolia
CMD ./bin/magnolia_control.sh start && tail -f ./logs/catalina.out 
