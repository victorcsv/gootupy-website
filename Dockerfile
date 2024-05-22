FROM node:20-alpine
ENV NEXT_PUBLIC_ENV=production
WORKDIR /app
COPY . .
RUN npm install --omit=dev
RUN npm run build
CMD ["npm", "start"]
