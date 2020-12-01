#!/bin/bash
rm -f diagram.zip || echo ''
zip -e diagram.zip *.pdf && git checkout kyl && git add diagram.zip && git commit -m "diagram.zip" && git push origin kyl:master
#buzhidao2333
