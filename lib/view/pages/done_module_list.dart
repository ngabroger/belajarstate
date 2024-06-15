import 'package:belajar_statemanagement/provider/done_module_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DoneModuleList extends StatefulWidget {
  const DoneModuleList({Key? key, required List<String> doneModuleList})
      : super(key: key);

  @override
  State<DoneModuleList> createState() => _DoneModuleListState();
}

class _DoneModuleListState extends State<DoneModuleList> {
  @override
  Widget build(BuildContext context) {
    final doneModuleList =
        Provider.of<DoneModuleProvider>(context, listen: false).doneModuleList;
    return Scaffold(
        appBar: AppBar(
          title: Text('Done Module Page'),
        ),
        body: Consumer<DoneModuleProvider>(
          builder: (context, doneModuleProvider, child) {
            final DoneModuleList = doneModuleProvider.doneModuleList;
            return ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(doneModuleList[index]),
                  trailing: IconButton(
                      onPressed: () {
                        setState(() {
                          doneModuleProvider.remove(doneModuleList[index]);
                        });
                      },
                      icon: Icon(Icons.delete)),
                );
              },
              itemCount: doneModuleList.length,
            );
          },
        ));
  }
}
