#!/bin/bash
oc get rolebinding -A -o json| jq '.items[]| {project: .metadata.namespace, role: .roleRef.name, user:.subjects[].name}'

