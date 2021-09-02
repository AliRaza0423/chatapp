import 'package:chatapp/constants.dart';
import 'package:chatapp/models/ChatMessage.dart';
import 'package:chatapp/screens/messages/components/Message.dart';
import 'package:chatapp/screens/messages/components/chat_input_field.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';

class Body extends StatelessWidget {
  // final ChatMessage message;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: GroupedListView<Message, String>(
            floatingHeader: true,
            elements: myMsg,
            groupBy: (object) => object.group,
            groupComparator: (value1, value2) => value2.compareTo(value1),
            itemComparator: (item1, item2) =>
                item1.name.compareTo(item2.name),
            order: GroupedListOrder.DESC,
            useStickyGroupSeparators: true,
            groupSeparatorBuilder: (String value) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[ Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue[100]
                  ),
                  child: Text(
                    value,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),]
              ),
            ),
            itemBuilder: (c, element) {
              return Container(
                  // elevation: 8.0,
                  // margin:
                  //     EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Messages(message: element),
                  ));
              //   child: Container(
              //     child: ListTile(
              //       contentPadding: EdgeInsets.symmetric(
              //           horizontal: 20.0, vertical: 10.0),
              //       leading: Icon(Icons.account_circle),
              //       title: Text(element.name),
              //       subtitle: Text(element.text),
              //       trailing: Icon(Icons.arrow_forward),
              //     ),
              //   ),
              // );
            },
          ),
          // ListView.builder(
          //   itemCount: demeChatMessages.length,
          //   itemBuilder: (context, index) => Message(
          //     message: demeChatMessages[index],
          //   ),
          // ),
        ),
        ChatInputField()
      ],
    );
  }
}


