import 'package:flutter/material.dart';
import 'chat_message.dart';

class chatscreen extends StatefulWidget {
  @override
  _chatscreenState createState() => _chatscreenState();
}

class _chatscreenState extends State<chatscreen> {

 final TextEditingController _textController = TextEditingController();

 final List<chatmessage> _messages = <chatmessage> [];
 void _handlesubmitted(String text)
 {
   _textController.clear();
   chatmessage message = chatmessage(
     text: text,
   );
   setState(() {
     _messages.insert(0, message);
   });
 }

  Widget _textcomposerwidget()
  {
    return IconTheme(
      data: IconThemeData(
        color: Colors.blue
      ),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: <Widget>[
            Flexible(
              child: TextField(
                decoration: InputDecoration.collapsed(
                    hintText: "Send a message"),
                controller: _textController,
                onSubmitted: _handlesubmitted,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 4.0),
              child: IconButton(
                  icon: Icon(Icons.send), onPressed:()=> _handlesubmitted(_textController.text)),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Flexible(
          child: ListView.builder(padding: EdgeInsets.all(8.0),
            reverse: true,
            itemBuilder: (_,int index)=> _messages[index],
            itemCount: _messages.length,
          ),
        ),
        Divider(
          height: 1.0,
        ),
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
          ),
          child: _textcomposerwidget(),
        )
      ],
    );
  }
}
