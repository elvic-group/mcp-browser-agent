FROM mcr.microsoft.com/playwright:v1.54.2-noble
WORKDIR /app
COPY bundle.js ./
RUN node bundle.js && npm install && npm run build
EXPOSE 8080
CMD ["npm", "start"]
