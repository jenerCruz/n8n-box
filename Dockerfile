FROM n8nio/n8n: latest

COPY config.json /home/node/.n8n/config.json
COPY env /home/node/.n8n/.env