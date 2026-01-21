#!/bin/bash
openssl dgst -sha256 -verify ota/keys/oem_public.key \
-signature ota/ecu-brake.sig firmware/ecu-brake/Dockerfile

if [ $? -eq 0 ]; then
  echo "OTA accepted and installed"
else
  echo "OTA rejected"
fi
