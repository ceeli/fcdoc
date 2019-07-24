.PHONY: doc doxygen_cpp doxygen_py sphinx_py

doc: doxygen_cpp doxygen_py sphinx_py

doxygen_cpp:
	rm -Rf ./docs/cpp
	cd doxygen && doxygen cpp_config

doxygen_py:
	rm -Rf ./docs/py
	cd doxygen && doxygen py_config

sphinx_py:
	@sphinx-build -M html ./sphinx ./docs/sphinx
