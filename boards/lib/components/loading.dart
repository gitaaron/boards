import 'package:flutter/material.dart';

class Loading extends StatelessWidget {
  final bool insideContainer;
  Loading({this.insideContainer = false});


  Widget _buildInside() {
    return Center(
        child:Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children:<Widget>[
            Container(
              height:50.0,
              width:50.0,
              child:CircularProgressIndicator(strokeWidth:3.0)
            ),
            Visibility(visible:!insideContainer, child:SizedBox(height:10.0)),
            Visibility(visible:!insideContainer, child:Text('Loading...')),
          ]
        ),
    );

  }

  @override
  Widget build(BuildContext context) {
    return insideContainer?
      Padding(
        padding:EdgeInsets.all(50.0),
        child:_buildInside()
      ):Scaffold(
      body:_buildInside()
    );
  }
}
