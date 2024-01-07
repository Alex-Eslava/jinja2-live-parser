###################################
# Jinja2 live parser Dockerfile
#
# Version: 0.1
# Author:  Sonu K. Meena(sahilsk)<sonukr666@gmail.com >
###################################

# Pull base image.
FROM python:3.11

COPY .  /app

WORKDIR /app

# Install dependencies
RUN pip install -r requirements.txt

# Change bind host
RUN sed -i 's/host=config.HOST/host="0.0.0.0"/g' parser.py

# Expose port to Host
EXPOSE 8101

# Define default command.
CMD ["python", "parser.py"]
