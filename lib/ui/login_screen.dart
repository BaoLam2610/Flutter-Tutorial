import 'package:flutter/material.dart';

class LoginWidget extends StatelessWidget {
  const LoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          const Card(
            color: Colors.redAccent,
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            margin: EdgeInsets.only(top: 30, left: 30, right: 30, bottom: 10),
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 4,
                        child: TextStyleLogin("Username"),
                      ),
                      SizedBox(height: 10),
                      Expanded(
                        flex: 8,
                        child: TextStyleLogin("Nguyen Bao Lam"),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        flex: 4,
                        child: TextStyleLogin("Email"),
                      ),
                      SizedBox(height: 10),
                      Expanded(
                        flex: 8,
                        child: TextStyleLogin("baolam12a2610@gmail.com"),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        flex: 4,
                        child: TextStyleLogin("Address"),
                      ),
                      SizedBox(height: 10),
                      Expanded(
                        flex: 8,
                        child: TextStyleLogin("Pha Lai, Chi Linh, Hai Duong"),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: null,
                    style: ElevatedButton.styleFrom(
                      disabledForegroundColor: Colors.white,
                      disabledBackgroundColor: Colors.black26,
                      shape: const StadiumBorder(),
                    ),
                    child: const TextStyleLogin("Cancel"),
                  ),
                ),
                const SizedBox(width: 30),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.blueAccent,
                      shape: const StadiumBorder(),
                    ),
                    child: const TextStyleLogin("Accept"),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class TextStyleLogin extends StatefulWidget {
  const TextStyleLogin(this.label, {super.key});

  final String label;

  @override
  State<TextStyleLogin> createState() => _TextStyleLoginState();
}

class _TextStyleLoginState extends State<TextStyleLogin> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.label,
      style: const TextStyle(color: Colors.white, fontSize: 20),
    );
  }
}
