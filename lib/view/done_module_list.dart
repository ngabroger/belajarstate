import 'package:belajar_statemanagement/provider/done_module_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
    final DoneModuleList =
        Provider.of<DoneModuleProvider>(listen: false, context).doneModuleList;
    return Scaffold(
        appBar: AppBar(
          title: Text('Done Module Page'),
        ),
        body: Consumer<DoneModuleProvider>(
          builder: (context, doneModuleProvider, child) {
            final doneModuleList = doneModuleProvider.doneModuleList;
            return ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(doneModuleList[index]),
                  trailing: IconButton(
                      onPressed: () {
                        doneModuleProvider.remove(doneModuleList[index]);
                      },
                      icon: Icon(Icons.delete)),
                );
              },
              itemCount: DoneModuleList.length,
            );
          },
        ));
  }
}
