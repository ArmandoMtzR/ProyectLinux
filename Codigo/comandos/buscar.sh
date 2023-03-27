#!/bin/bash

function buscar() {
  if [ $# -ne 2 ]; then
    echo "Uso: buscar <directorio> <archivo>"
    return
  fi
  find $1 -type f -name $2 2>/dev/null
}
