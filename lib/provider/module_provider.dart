import 'package:belajar_statemanagement/view/module_page.dart';
import 'package:flutter/material.dart';

class ModuleProvider extends StatefulWidget {
  const ModuleProvider({Key? key}) : super(key: key);

  @override
  _ModuleProviderState createState() => _ModuleProviderState();
}

class _ModuleProviderState extends State<ModuleProvider> {
  final List<String> doneModuleList = [];
  void addModule(String module) {
    setState(() {
      doneModuleList.add(module);
    });
  }

  void deleteModule(String module) {
    setState(() {
      doneModuleList.remove(module);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ModulePage();
  }
}
