import 'package:flutter/material.dart';
import 'package:pharmacy/model/remedy.dart';

class Home extends StatelessWidget {
  Home({
    super.key,
  });

  final List<Remedy> remedies = [
    Remedy(
      remedyName: 'Aspirina',
      remedyDescription:
          'Descrição do Remédi Aspirina é indicada para o alívio sintomático de dores de intensidade leve a moderada, como dor de cabeça, dor de dente, dor de garganta, dor menstrual, dor muscular, dor nas articulações, dor nas costas e dor da artrite e alívio sintomático da dor e da febre nos resfriados ou gripes.',
      grams: 100,
    ),
    Remedy(
      remedyName: 'Dorflex',
      remedyDescription:
          'é indicado no alívio da dor associada a contraturas musculares, incluindo dor de cabeça tensional.',
    ),
    Remedy(
      remedyName: 'Energilc',
      remedyDescription:
          'A vitamina C está indicada como correção dos estados de carência de vitamina C.',
      grams: 50,
    ),
    Remedy(
      remedyName: 'Ivermectina',
      remedyDescription:
          'A ivermectina é um medicamento que atua contra várias espécies de parasitas e vermes. Sua ação se dá por meio da paralisação da musculatura de vermes e parasitas, ocasionando a morte e eliminação desses do seu corpo.',
      grams: 200,
    ),
    Remedy(
      remedyName: 'Novalgina',
      remedyDescription:
          'Novalgina é um medicamento analgésico e antitérmico, à base de dipirona, que pode ser utilizado no tratamento de dores e febre.',
      grams: 200,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ItemWise"),
      ),
      backgroundColor: Color.fromARGB(255, 250, 250, 250),
      floatingActionButton:
          FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),
      body: ListView.builder(
        itemCount: remedies.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: ListTile(
              title: Text(remedies[index].remedyName),
              subtitle: Text(remedies[index].remedyDescription),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.edit),
                    onPressed: () {
                      // Ação para editar o remédio
                      print('Editar ${remedies[index].remedyName}');
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      // Ação para excluir o remédio
                      _showDeleteDialog(context, index);
                    },
                  ),
                ],
              ),
              onTap: () {
                // Ação ao tocar no item da lista (opcional)
                print('Remédio selecionado: ${remedies[index].remedyName}');
              },
            ),
          );
        },
      ),
    );
  }

  void _showDeleteDialog(BuildContext context, int index) {}
  void _deleteRemedy(int index) {
    remedies.removeAt(index);
  }
}
