#!/bin/bash

function infosis() {
  echo "Memoria RAM:"
  free -h | grep -i mem | awk '{print $2}'
  echo "Arquitectura del sistema:"
  uname -m
  echo "Versión del SO:"
  uname -r
}
