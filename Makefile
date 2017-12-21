
server:
	@markline server baby.md

build: clean
	@markline build baby.md

publish: build
	@ghp-import dist
	@git push origin gh-pages

clean:
	@rm -rf dist
