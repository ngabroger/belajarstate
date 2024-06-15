import 'package:flutter/material.dart';

class DoneModuleList extends StatefulWidget {
  final List<String> doneModuleList;
  const DoneModuleList({Key? key, required this.doneModuleList})
      : super(key: key);

  @override
  State<DoneModuleList> createState() => _DoneModuleListState();
}

class _DoneModuleListState extends State<DoneModuleList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Done Module Page'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(widget.doneModuleList[index]),
            // trailing: IconButton(
            //     onPressed: () {
            //       setState(() {
            //         // widget.doneModuleList.removeAt(index);
            //       });
            //     },
            //     icon: Icon(Icons.delete)),
          );
        },
        itemCount: widget.doneModuleList.length,
      ),
    );
  }
}
