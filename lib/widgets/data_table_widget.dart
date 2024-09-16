import 'package:flutter/material.dart';

class DataTableWidget extends StatefulWidget {
  @override
  _DataTableWidgetState createState() => _DataTableWidgetState();
}

class _DataTableWidgetState extends State<DataTableWidget> {
  List<DataRow> _rows = [
    DataRow(cells: [DataCell(Text('1')), DataCell(Text('Item 1'))]),
    DataRow(cells: [DataCell(Text('2')), DataCell(Text('Item 2'))]),
    DataRow(cells: [DataCell(Text('3')), DataCell(Text('Item 3'))]),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(labelText: 'Filtrar'),
            onChanged: (value) {
              setState(() {
                _rows = _rows
                    .where((row) => row.cells[1].child.toString().contains(value))
                    .toList();
              });
            },
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: DataTable(
              columns: [
                DataColumn(label: Text('ID')),
                DataColumn(label: Text('Nombre')),
              ],
              rows: _rows,
            ),
          ),
        ),
      ],
    );
  }
}
