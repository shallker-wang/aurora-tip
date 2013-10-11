
build: components aurora-tip.css
	@component build --dev

all: components stylus build
	@echo all done

components:
	@component install --dev

stylus: ./css/src/*.styl
	@stylus --out ./css $<

clean:
	rm -fr build components template.js

.PHONY: clean
