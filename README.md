# n8n-box
{
  "N8N_BASIC_AUTH_ACTIVE": true,
  "N8N_BASIC_AUTH_USER": "admin",
  "N8N_BASIC_AUTH_PASSWORD": "supersecurepassword",
  "N8N_HOST": "0.0.0.0",
  "N8N_PORT": 5678,
  "N8N_PROTOCOL": "https",
  "N8N_EDITOR_BASE_URL": "https://your-app.fly.dev",
  "N8N_PUBLIC_API_BASE": "https://your-app.fly.dev",
  "N8N_SKIP_WEBHOOK_DEREGISTRATION_SHUTDOWN": true,
  "DB_TYPE": "postgresdb",
  "DB_POSTGRESDB_HOST": "your-supabase-host",
  "DB_POSTGRESDB_PORT": 5432,
  "DB_POSTGRESDB_DATABASE": "your-database-name",
  "DB_POSTGRESDB_USER": "your-database-user",
  "DB_POSTGRESDB_PASSWORD": "your-database-password",
  "SUPABASE_JWT_SECRET": "your-supabase-jwt-secret"
}

FROM n8nio/n8n:latest

# Copiar el archivo config.json al contenedor
COPY config.json /data/config.json

# Configurar el directorio de datos y permisos
VOLUME ["/root/.n8n"]

# Exponer el puerto de la aplicación
EXPOSE 5678

# Comando para iniciar n8n
CMD ["n8n"]

