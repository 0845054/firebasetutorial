import 'package:firebasetutorial/constants/constants.dart';
import 'package:firebasetutorial/firebasewidgets/firebasewidgets.dart';
import 'package:flutter/material.dart';

class AddUser extends StatelessWidget {
  const AddUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController _nameController = TextEditingController();
    final TextEditingController _ageController = TextEditingController();
    final _formKey = GlobalKey<FormState>();

    Widget nameField = Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Name:'),
        ),
        Container(
          padding: const EdgeInsets.all(8.0),
          height: 50,
          width: 150,
          child: TextFormField(
            controller: _nameController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please enter a name.";
              } else {
                return null;
              }
            },
          ),
        )
      ],
    );
    Widget ageField = Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Age:'),
        ),
        Container(
          padding: const EdgeInsets.all(8.0),
          height: 50,
          width: 150,
          child: TextFormField(
            controller: _ageController,
            keyboardType: TextInputType.number,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter an age.';
              } else {
                return null;
              }
            },
          ),
        )
      ],
    );

    void _onAddUser() {
      if (_formKey.currentState!.validate()) {
        String _name = _nameController.text;
        int _age =  int.parse(_ageController.text);
        FireBaseWidgets.addUser(_name,_age);
        _nameController.clear();
        _ageController.clear();
      }
      print('validate failed');
      print(_formKey.currentState!.validate());
    }

    return Container(
      padding: const EdgeInsets.all(10),
      width: constants.BOX_WIDTH,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Color(constants.BORDER_COLOR))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Name and Age.
          Form(
            autovalidateMode: AutovalidateMode.always,
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                nameField,
                ageField,
              ],
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: _onAddUser,
                child: const Text('Add User'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
