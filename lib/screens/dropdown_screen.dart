import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../di/setup_locator.dart';
import '../view_models/dropdown_viewmodel.dart';

class DropdownScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => getIt<DropdownViewModel>(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Dropdown with MVVM and DI'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Consumer<DropdownViewModel>(
              builder: (context, viewModel, child) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DropdownButtonFormField<String>(
                      value: viewModel.selectedItem,
                      decoration: InputDecoration(
                        labelText: 'Select an option',
                        border: OutlineInputBorder(),
                      ),
                      items: viewModel.items
                          .map(
                            (item) => DropdownMenuItem(
                          value: item,
                          child: Text(item),
                        ),
                      )
                          .toList(),
                      onChanged: (String? newValue) {
                        viewModel.setSelectedItem(newValue);
                      },
                    ),
                    SizedBox(height: 20),
                    Text(
                      viewModel.selectedItem != null
                          ? "Selected Item: ${viewModel.selectedItem}"
                          : "No Item Selected",
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
