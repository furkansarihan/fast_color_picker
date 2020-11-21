# fast_color_picker
This package provides a color picker like in story editor of Instagram.

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