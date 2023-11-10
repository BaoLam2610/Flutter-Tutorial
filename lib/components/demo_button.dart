import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        print('Hello World');
      },
      style: TextButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Colors.deepOrange,
          // minimumSize: const Size(200, 100),
          padding: const EdgeInsets.all(20),
          elevation: 20,
          shadowColor: Colors.blue.withOpacity(0.5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(35), // Rounded corners
          ),
          side: const BorderSide(
            color: Colors.indigo,
            width: 3,
          )),
      child: const Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: 'Click here to ',
            ),
            WidgetSpan(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Icon(
                  Icons.accessible,
                  color: Colors.white,
                ),
              ),
            )
          ],
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}

class ButtonIconWidget extends StatelessWidget {
  const ButtonIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {},
      style: TextButton.styleFrom(
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      icon: const Icon(
        Icons.add,
        size: 30,
      ),
      label: const Text("Click me!!"),
    );
  }
}

class DisableButtonWidget extends StatelessWidget {
  const DisableButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: null,
      style: TextButton.styleFrom(
        disabledBackgroundColor: Colors.black87,
        disabledForegroundColor: Colors.white,
      ),
      child: const Text("This is a disable button!"),
    );
  }
}

class ElevatedButtonWidget extends StatelessWidget {

  const ElevatedButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.redAccent,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        shape: const StadiumBorder()
      ),
      child: const Text(
        "This is an elevated button!",
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}

class OutlinedButtonWidget extends StatelessWidget {
  const OutlinedButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
          backgroundColor: Colors.white,
          foregroundColor: Colors.redAccent,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      ),
      child: const Text(
        "This is an outlined button!",
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}

class ButtonWithTextWidget extends StatefulWidget {

  final String _label;
  const ButtonWithTextWidget(this._label,{super.key});

  @override
  State<ButtonWithTextWidget> createState() => _ButtonWithTextWidgetState();
}

class _ButtonWithTextWidgetState extends State<ButtonWithTextWidget> {

  late String mLabel;

  @override
  void initState() {
    super.initState();
    mLabel = widget._label;
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.redAccent,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          shape: const StadiumBorder()
      ),
      child: Text(
        mLabel,
        style: const TextStyle(fontSize: 20),
      ),
    );
  }
}
