default:
	ocamlbuild extractionString.cma extractionString.cmxa -use-ocamlfind

install: default
	ocamlfind install extraction-string META _build/extractionString.cmi _build/extractionString.cmx _build/extractionString.a _build/extractionString.cma _build/extractionString.cmxa _build/extractionString.mllib

uninstall:
	ocamlfind remove extraction-string

clean:
	ocamlbuild -clean
