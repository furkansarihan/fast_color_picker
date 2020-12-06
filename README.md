# fast_color_picker
This package provides a color picker like in story editor of Instagram.

<img src="https://firebasestorage.googleapis.com/v0/b/app-monotony.appspot.com/o/assets%2Ffast_color_picker_demo.gif?alt=media&token=0840ef78-4f65-4c3d-9e81-661d0aca6361">

## Usage

``` Dart
Color _color;

FastColorPicker(
    selectedColor: _color,
    onColorSelected: (color) {
        setState(() {
            _color = color;
        });
    },
),
```