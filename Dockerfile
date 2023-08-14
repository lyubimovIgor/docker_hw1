# Используем официальный образ Nginx как базовый образ
FROM nginx:latest

# Копируем статичные файлы в директорию по умолчанию Nginx
COPY index.html /usr/share/nginx/html/

# Опционально: можно указать порт, на котором будет работать Nginx (по умолчанию 80)
EXPOSE 80

# Запускаем Nginx при старте контейнера
CMD ["nginx", "-g", "daemon off;"]
