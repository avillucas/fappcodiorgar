# Despliegue local

Estos comandos levantan la aplicacion con Docker Compose y PHP 8.4 FPM.

## Variables

El desarrollo local usa `VITE_GTM_ID=GTM-M45MJP52` desde `.env.local`. Tambien
puede sobrescribirse al ejecutar el script:

```sh
VITE_GTM_ID=GTM-XXXXXXX ./ssh/deploy-local.sh
```

## Iniciar

```sh
./ssh/deploy-local.sh
```

La aplicacion queda disponible en `http://localhost:8080`.

## Detener

```sh
./ssh/stop-local.sh
```

## Configurar produccion

Configura las credenciales FTP como secretos del repositorio. Estos comandos
solicitan cada valor sin guardarlo en el codigo:

```sh
gh secret set FTP_SERVER
gh secret set FTP_USERNAME
gh secret set FTP_PASSWORD
```

Para disparar el despliegue manual sobre `main`:

```sh
./ssh/deploy-production.sh
```

Tambien se ejecuta automaticamente con cada `git push` a `main`.