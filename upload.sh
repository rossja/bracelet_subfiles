#!/bin/sh

if ! type fwi-serial > /dev/null; then
  echo "Error, fwi-serial is needed. Please install it from pypi!"
  exit 1
fi


for sub_file in "./"*.sub; do
  fwi-serial -s ${sub_file}
done
