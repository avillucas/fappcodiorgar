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