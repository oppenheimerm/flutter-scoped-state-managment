import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:flutter_scoped_state_managment/database.dart';
import 'package:flutter_scoped_state_managment/pages/scoped_model_page.dart';

class ListViewMain extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => MainViewState();
}

class MainViewState extends State<ListViewMain>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: _buildBody(),
    );
  }

  Widget _buildBody(){
    var database = AppFirestore();
    var stream = database.countersStream();
    return ScopedModel<CountersModel>(
      model: CountersModel(stream: stream),
      child: ScopedModelPage(database: database),
    );
  }

}