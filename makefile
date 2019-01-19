#!/usr/bin/env make -f

dock:
	docker run --rm -itp 80:80 -v $$(pwd):/data pvtmert/devsocket

run:
	websocketd --port=8000 --staticdir=. -- fswatch -1r .
