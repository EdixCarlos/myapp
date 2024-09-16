import 'package:flutter/material.dart';
import '../../widgets/custom_drawer.dart';
import '../../widgets/custom_header.dart';
import '../../widgets/data_table_widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pantalla Principal'),
      ),
      drawer: CustomDrawer(), // Menú lateral
      body: Column(
        children: [
          CustomHeader(),   // Header reutilizable
          Expanded(
            child: DataTableWidget(), // Tabla con filtros
          ),
        ],
      ),
    );
  }
}
