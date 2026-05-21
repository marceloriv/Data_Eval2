# Usar la imagen oficial de MySQL versión 8.0 (como indica el README)
FROM mysql:8.0

# Copiar el script principal de creación a la carpeta de inicialización de MySQL
# Docker ejecutará automáticamente los scripts .sql que estén en esta carpeta
# al iniciar el contenedor por primera vez.
COPY 01_creacion_base_datos.sql /docker-entrypoint-initdb.d/

# Exponer el puerto estándar de MySQL
EXPOSE 3306

