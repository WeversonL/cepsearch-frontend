FROM node:19.8-alpine
WORKDIR /app
COPY . .
RUN npm ci && npm run build
ENV NODE_ENV production
EXPOSE 3000
CMD [ "npx", "serve", "build" ]