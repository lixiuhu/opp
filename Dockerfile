FROM node:8-alpine

RUN npm install pm2 -g

VOLUME ["/app"]

# Expose ports
EXPOSE 3000

WORKDIR /app

# Start process.yml
CMD ["pm2-docker", "start", "--env", "production", "/app/pm2.json"]
