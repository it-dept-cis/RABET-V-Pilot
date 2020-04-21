# RABET-V Documentation Build Instructions

This document describes how to build the RABET-V Documentation to a Word DOCX format.

The following components must be installed:

- Python (tested with Python 3.6.3)
- Pipenv
- pandoc (tested with pandoc 1.16.0.2)

```bash
pipenv shell
sphinx-build -b singlehtml . ../output_directory
pandoc -o rabet-v.docx  --reference-doc wp.docx ../output_directory/toctree.html
```
