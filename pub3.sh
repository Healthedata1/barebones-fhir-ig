#!/bin/bash
name="Barebones"
path1=/Users/ehaas/Downloads/org.hl7.fhir.igpublisher.jar

echo "================================================================="
echo === Publish $name IG!!! $(date -u) ===
echo see 'local workflow.md' file for how to use
echo === create ig.json and ig.xml in $PWD and ../$SOURCE ===
echo "================================================================="
echo getting rid of .DS_Store files since they gum up the igpublisher....
find . -name '.DS_Store' -type f -delete
sleep 1
java -jar ${path1} -ig ig.json -watch -tx $NA
