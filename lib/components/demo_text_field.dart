import 'package:flutter/material.dart';
import 'package:tutorial/main.dart';

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget({super.key});

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  final TextEditingController controller = TextEditingController();
  late bool isLoading;

  @override
  void initState() {
    super.initState();
    isLoading = false;
  }

  void setText(String value) {
    setState(() {
      controller.text = value;
    });
  }

  void setLoading(bool loading) {
    setState(() {
      isLoading = loading;
    });
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("lamnb:reload ui");
    const borderInputField = OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.transparent,
        // width: 2,
        // style: BorderStyle.solid,
        // strokeAlign: BorderSide.strokeAlignOutside,
      ),
      borderRadius: BorderRadius.all(Radius.circular(30)),
    );
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          TextField(
            controller: controller,
            onChanged: (value) {
              debugPrint("lamnb:${controller.text}");
              setText(value);
            },
            style: const TextStyle(
              color: Colors.redAccent,
              fontSize: 20,
            ),
            decoration: const InputDecoration(
              // labelText: "This is a label",
              // label: Text(
              //   "This is a label",
              //   style: TextStyle(color: Colors.green),
              // ),
              helperText: "This is a helper text",
              helperStyle: TextStyle(
                color: Colors.deepOrange,
                fontWeight: FontWeight.bold,
              ),
              hintText: "This is a hint text",
              hintStyle: TextStyle(
                color: Colors.blueAccent,
              ),
              prefixIcon: Icon(Icons.search),
              prefixIconColor: Colors.purple,
              suffixIcon: Icon(Icons.close),
              suffixIconColor: Colors.red,
              filled: true,
              fillColor: Colors.lightGreenAccent,
              focusedBorder: borderInputField,
              enabledBorder: borderInputField,
              // focusedBorder: InputBorder.none,
              // enabledBorder: InputBorder.none,
              contentPadding: EdgeInsets.all(8),
              // errorText: "This a error text"
            ),
            // textInputAction: TextInputAction.newline,
            keyboardType: TextInputType.multiline,
            textAlign: TextAlign.start,
            maxLines: 3,
            minLines: 1,
          ),
          ElevatedButton(
            onPressed: () {
              debugPrint("lamnb:${controller.text}");
              setState(() {

              });
            },
            child: const Text("Submit"),
          ),
          NumberWidget(controller.text),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  setLoading(true);
                },
                child: const Text("Show loading"),
              ),
              ElevatedButton(
                onPressed: () {
                  setLoading(false);
                },
                child: const Text("Close loading"),
              ),
            ],
          ),
          LoadingDialog(isLoading)
        ],
      ),
    );
  }
}

class NumberWidget extends StatelessWidget {
  const NumberWidget(this.number, {super.key});

  final String number;

  @override
  Widget build(BuildContext context) {
    return Text(
      number,
      style: const TextStyle(color: Colors.red, fontSize: 35),
    );
  }
}
