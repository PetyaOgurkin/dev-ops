npm install --focre
npm run build
rm -r /var/www/html/client || echo "Нет такой папки"
mv dist /var/www/html/client