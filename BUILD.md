# Building the RABET-V Documentation

## Dependencies

In order to build the RABET-V Documentation, the following components must be installed:

- Python 3+
- [Pipenv](https://pipenv.pypa.io/en/latest/)
- pandoc 1.16
- [Imagemagick](https://imagemagick.org/index.php)
- [Inkscape](https://inkscape.org/)

### Imagemagick and Inkscape

Both Imagemagick and Inkscape convert svg files to pngs, which is necessary to convert the html document to Word. Imagemagick is currently configured for use with Sphinx for converting svgs while Inkscape works with pandoc. Imagemagick must be installed independently using the instructions for the given operating system. Once Imagemagick is installed, either add Imagemagick to the system path or uncomment and edit the image_converter line in `conf.py`:

```py
# Windows Imagemagick configuration
if sys.platform.startswith('win32'):
    image_converter = 'C:\path\to\ImageMagick\magick.exe'
```

## Build Instructions

First, install the required libraries and then build the html files:

```sh
pipenv install
pipenv shell
sphinx-build -b html . build
```

To view the html files, run a simple http server with python inside the build directory:

```sh
cd build
python -m http.server
```

## Exporting as a Single Document

To build the documentation into a single file in Word `.docx` format, execute the following commands:

```sh
pipenv shell
sphinx-build -b singlehtml . build
cd build
pandoc --filter=../svg_filter.py -o rabet-v.docx  --reference-doc ../WorkingModel/RABET-V\ Working\ Model\ 0.1\ 20200423.docx toctree.html
```
