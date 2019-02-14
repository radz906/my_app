import 'package:flutter/material.dart';
import 'post.dart';

class ListViewPosts extends StatelessWidget {
  final List<Post> values;

  ListViewPosts({Key key, this.values}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Creates a widget that combines common painting, positioning, and sizing widgets.
    //The height and width values include the padding.
    return Container(
      //ListView
      //Creates a scrollable, linear array of widgets that are created on demand
      child: ListView.builder(
          itemCount: values.length,

          padding: EdgeInsets.only(bottom: 20.0),

          itemBuilder: (context, position) {
            return Column(

              children: <Widget>[
                Divider(height: 15.0),

                ListTile(


                  title: Text(
                    '${values[position].title}',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,

                    ),
                  ),
                  subtitle: Text(
                    '${values[position].body}',
                    style: new TextStyle(
                      fontSize: 15.0,
                      fontStyle: FontStyle.italic,
                      color: Colors.white,
                    ),
                  ),
                  leading: Column(

                    children: <Widget>[

                      CircleAvatar(

                        backgroundColor: Colors.lightGreen,
                        radius: 35.0,
                        child: Text(
                          'User ${values[position].userId}',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),

                ),
              ],
            );
          }),
    );
  }


}
