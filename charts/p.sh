#!/bin/bash
helm.exe dependency update .
helm.exe package .
mv ingress* ../
cd ..
helm repo index .