# Museo-Sistema

Esqueleto de infraestructura (Nginx + FastAPI + PostgreSQL con Docker Compose).
Cada integrante reemplaza el contenido de su carpeta y respeta el contrato indicado.

## Levantar el proyecto
1. Instalar Docker Desktop y Git.
2. `git clone https://github.com/eugeniarios/Museo-Sistema.git`
3. Copiar `.env.example` a `.env` y completar los valores.
4. `docker compose up --build`
5. Abrir http://localhost

## Qué hay en cada carpeta
| Carpeta | Responsable | Qué reemplazar | Qué mantener |
|---|---|---|---|
| `backend/` | Backend | `main.py`, `requirements.txt` | `Dockerfile` y puerto 8000 |
| `frontend/` | Frontend | `index.html` | Proxy `/api/` en `default.conf` |
| `db/` | Base de datos | `init.sql` | Se ejecuta solo con el volumen vacío |

`init.sql` solo corre la primera vez. Para volver a cargarlo: `docker compose down -v` (borra los datos).

## Ramas
- `main`: estable. `develop`: integración. `feature/*`: trabajo de cada uno.
- Nadie hace push directo a `main` ni a `develop`: se trabaja en una rama propia y se abre Pull Request hacia `develop`.

```
git switch develop && git pull
git switch -c feature/lo-que-hago
git add . && git commit -m "Describe el cambio"
git push -u origin feature/lo-que-hago
```

## Comandos útiles
`docker compose ps` · `docker compose logs -f backend` · `docker compose down`
