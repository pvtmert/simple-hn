#!/usr/bin/env make -f

PORT := 80

dock:
	docker run --rm -itp $(PORT):80 -v $$(pwd):/data pvtmert/devsocket

run:
	websocketd --port=8000 --staticdir=. -- fswatch -1r .
