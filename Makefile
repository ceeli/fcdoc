doc:
	rm -Rf ./docs/cpp
	rm -Rf ./docs/py
	doxygen cpp_config
	doxygen py_config
