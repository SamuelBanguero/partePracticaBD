# partePracticaBD
Sistema de gestión de turnos para Servicios LiMar

# Comandos para ejecutar 
docker run -it -e POSTGRES_USER=ulimar -e POSTGRES_PASSWORD=ex4men_db -p 5435:5432 postgres:14
docker run -p 5050:80 -e "PGADMIN_DEFAULT_EMAIL=usuario@servilimar.com" -e "PGADMIN_DEFAULT_PASSWORD=limar#123" dpage/pgadmin4

# Configuración 
PGAdmin: http://localhost:8080
Usuario: usuario@servilimar.com
Contraseña: limar#123
PostgreSQL: localhost:5432
Base de datos: servilimar
Usuario: ulimar
Contraseña: ex4men_db

