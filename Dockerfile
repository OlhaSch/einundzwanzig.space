# Використовуємо офіційний образ Node.js
FROM node:latest

# Встановлюємо робочу директорію /app
WORKDIR /app

# Копіюємо package.json та package-lock.json у робочу директорію
COPY package*.json ./

# Виконуємо команду npm install для встановлення залежностей
RUN npm install

# Копіюємо всі інші файли у робочу директорію
COPY . .

# Встановлюємо порт, на якому запускатиметься сервер
ENV PORT=3000

# Виконуємо команду npm start при запуску контейнера
CMD ["npm", "start"]
