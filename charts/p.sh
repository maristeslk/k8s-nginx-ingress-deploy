#!/bin/bash
helm.exe dependency update .
helm.exe package .
mv ingress* ../
cd ..
helm repo index .
git add *
git commit -m "bug fix"
git push origin gh-pages