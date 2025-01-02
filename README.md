# CustomButton

`CustomButton` is a Flutter widget that provides a highly customizable button with support for loading states, icons (standard and SVG), and custom styles.

## Features

- Customizable styles and dimensions.
- Optional loading state.
- Support for both SVG and standard icons.
- Flexible alignment and spacing options.
- Reversible icon positioning.

## Preview

![CustomButton Example](https://github.com/ilkin0120/custom_button_flutter/blob/main/example_files/preview.jpg?raw=true)

## Getting Started

Add the following dependencies to your `pubspec.yaml` file:

```yaml
dependencies:
  flutter_svg: ^1.0.0
```

Clone the project

```bash
git clone https://github.com/ilkin0120/custom_button_flutter
```

Move the `custom_button.dart` file to your desired folder in your project and import it as follows:

```dart
import 'path/custom_button.dart';
```


## Usage

Here is a simple example of how to use `CustomButton` in your Flutter application:

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('CustomButton Demo')),
        body: Center(
          child: CustomButton(
              label: const Text(
                'Primary',
                style: TextStyle(
                    fontWeight: FontWeight.w500, color: Colors.white),
              ),
              sizeBehavior: MainAxisSize.min,
              height: 48,
              isEnabled: true,
              isLoading: false,
              svgIcon: SvgPicture.network(
                'https://www.svgrepo.com/show/530573/pie-chart.svg',
                width: 20,
                height: 20,
                colorFilter:
                    const ColorFilter.mode(Colors.white, BlendMode.srcIn),
              ),
              spacing: 15,
              onPressed: () => print('Button Pressed'),
              style: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(15),
              ),
              padding:
                  const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
            )
        ),
      ),
    );
  }
}
```

## Parameters

| Parameter           | Type              | Default                 | Description                                                                 |
|---------------------|-------------------|-------------------------|-----------------------------------------------------------------------------|
| `label`             | `Text?`          | `null`                  | Text to display inside the button.                                         |
| `isLoading`         | `bool`           | `false`                 | Whether the button should display a loading state.                         |
| `isEnabled`         | `bool`           | `true`                  | Whether the button is enabled and clickable.                               |
| `onPressed`         | `VoidCallback`   | Required                | Callback executed when the button is clicked.                              |
| `isIconReversed`    | `bool`           | `false`                 | Whether the icon appears on the right side of the label.                   |
| `style`             | `BoxDecoration?` | `null`                  | Custom decoration style for the button container.                          |
| `padding`           | `EdgeInsets?`    | `null`                  | Padding for the button content.                                            |
| `svgIcon`           | `SvgPicture?`    | `null`                  | SVG icon to display inside the button.                                     |
| `icon`              | `Icon?`          | `null`                  | Standard icon to display inside the button.                                |
| `height`            | `double?`        | `null`                  | Fixed height for the button.                                               |
| `width`             | `double?`        | `null`                  | Fixed width for the button.                                                |
| `alignment`         | `MainAxisAlignment` | `MainAxisAlignment.center` | Alignment for the row of elements inside the button.                     |
| `sizeBehavior`      | `MainAxisSize`   | `MainAxisSize.max`      | Determines the size behavior of the button's row.                          |
| `spacing`           | `double?`        | `null`                  | Spacing between the icon and the label.                                    |

## Customization

### Icon Support
The button supports both standard Flutter icons and SVG icons:

```dart
CustomButton(
  icon: Icon(Icons.check), // Standard icon
  svgIcon: SvgPicture.asset('assets/icon.svg'), // SVG icon
)
```

### Styling
Customize the button's appearance using `BoxDecoration`:

```dart
CustomButton(
  style: BoxDecoration(
    color: Colors.green,
    borderRadius: BorderRadius.circular(12),
  ),
  padding: EdgeInsets.all(16),
)
```

### Icon Position
Reposition the icon to the right of the label:

```dart
CustomButton(
  isIconReversed: true,
  icon: Icon(Icons.arrow_back),
)
```

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
