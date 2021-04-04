import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AddPage extends StatefulWidget {
  const AddPage({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return AddPageState();
  }
}

class AddPageState extends State<AddPage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 8.0),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Nome',
                    ),
                    validator: (value) {
                      if (value.trim().isEmpty) {
                        return 'Nickname is required';
                      }
                      return value;
                    },
                  ),
                  const SizedBox(height: 16.0),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Full name',
                    ),
                    validator: (String value) {
                      if (value.trim().isEmpty) {
                        return 'Full name is required';
                      }
                      return value;
                    },
                  ),
                  Row(
                    children: <Widget>[
                      const Spacer(),
                      OutlinedButton(
                        onPressed: submit,
                        child: const Text('Register'),
                      ),
                    ],
                  ),
                ],
              ),
            )));
  }

  void submit() {
    formKey.currentState.validate();
    print('Form submitted');
  }
}
