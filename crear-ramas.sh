#!/bin/sh
# Ejecutar una sola vez, parado en la raíz del repo, con main ya subido.
git switch main && git pull
git switch -c develop && git push -u origin develop
for r in feature/backend feature/frontend feature/db; do
  git switch develop && git switch -c "$r" && git push -u origin "$r"
done
git switch develop
