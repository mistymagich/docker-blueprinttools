#!/bin/bash

cd /blueprint

if [ ! -f "${BLUEPRINT_TOOLS_DOC_INDEX}" ]; then
	echo >&2 'error: index file not found.'
	echo >&2 ' Did you forget to add -e BLUEPRINT_TOOLS_DOC_INDEX=... ?'
	exit 1
fi

aglio -i ${BLUEPRINT_TOOLS_DOC_INDEX} -s -h 0.0.0.0 -p 8888 &
drakov -f '**/*.md' -p 8080 --public
