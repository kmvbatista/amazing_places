import 'package:flutter/material.dart';
import 'package:great_places/widgets/image_input.dart';

class AddPlaceScreen extends StatefulWidget {
  static final String routeName = 'add-place';
  @override
  _AddPlaceScreenState createState() => _AddPlaceScreenState();
}

class _AddPlaceScreenState extends State<AddPlaceScreen> {
  final _titleController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add a New Place'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    TextField(
                      controller: _titleController,
                      decoration: InputDecoration(labelText: 'Title'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ImageInput()
                  ],
                ),
              ),
            ),
          ),
          RaisedButton.icon(
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              elevation: 0,
              color: Theme.of(context).accentColor,
              icon: Icon(Icons.add),
              label: Text('Add Place'),
              onPressed: () {}),
        ],
      ),
    );
  }
}
