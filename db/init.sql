-- Esquema inicial de ejemplo. El responsable de base de datos lo reemplaza.
-- Solo se ejecuta la primera vez, cuando el volumen está vacío.
CREATE TABLE IF NOT EXISTS ejemplo (
    id SERIAL PRIMARY KEY,
    nombre TEXT NOT NULL
);
