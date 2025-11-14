#!/usr/bin/env bash

echo "✓ Verificando que index.html exista y tenga el título correcto..."

if [ ! -f "index.html" ]; then
  echo "✗ index.html no existe"
  exit 1
fi

# Verificar que contenga el título de la página
if grep -q "<title>Lista de Tareas</title>" index.html; then
  echo "✓ El título de la página es correcto"
  exit 0
else
  echo "✗ El título de la página no es el esperado"
  exit 1
fi
