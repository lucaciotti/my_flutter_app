import 'package:flutter/material.dart';

import 'package:flutter_app/widgets/heading_box.dart';

class AboutTab extends StatelessWidget {
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
          HeadingBox('http://www.koblenz.it/wp-content/uploads/2012/03/www.koblenz.test2.extera.com/sede.jpg'),
          Flexible(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(10.0),
                    margin: EdgeInsets.all(2.0),
                    color: Colors.white,
                    child: Column(
                      children: <Widget>[
                       Text('Krona Koblenz, azienda produttrice di soluzioni per porte scorrevoli e a battente, ha la sua sede, a Coriano di Rimini. Una struttura che riflette esattamente lo spirito del gruppo Krona Koblenz: 1500mq di tecnologia all’avanguardia e puro design abbracciati dal suggestivo paesaggio dell’entroterra riminese. Capitale d’impresa sono le risorse umane: un mix composto dalla professionalità e l’esperienza qualificata dei collaboratori storici, unita all’entusiasmo dei tanti giovani.'),
                       Padding(padding: EdgeInsets.symmetric(vertical: 5.0),),
                       Text('Affidabilità, qualità e design sono più che mai sinonimi del prodotto Made in Italy, e sono le caratteristiche imprescindibili su cui Marketing, Ricerca & Sviluppo hanno lavorato e costruito la storia e lo sviluppo di KRONA KOBLENZ SPA. Per poter operare con efficacia nel tempo, è fondamentale avere la massima flessibilità in base all’evoluzione dei mercati di riferimento, per questo motivo l’azienda propone un vasto ventaglio di articoli e soluzioni innovative per porte scorrevoli e a battente presentati nelle due gamme prodotto:'),
                       Text('KRONA e KOBLENZ'),
                      ],
                    ),
                  ),
                  Container(
                    decoration: new BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage('http://www.koblenz.it/wp-content/uploads/2012/03/www.koblenz.test2.extera.com/esterno.jpg')
                      ),
                      border: Border(bottom: BorderSide(width: 2.0))
                    ),
                    height: 180.0,
                  ),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    margin: EdgeInsets.all(2.0),
                    color: Colors.white,
                    child: Column(
                      children: <Widget>[
                       Text('La gamma di prodotti KOBLENZ offre un catalogo con molteplici soluzioni scorrevoli innovative ed un‘ ampia gamma di cerniere a scomparsa e regolabili per porte a battente.'),
                       Text('Articoli coperti da brevetti tecnici e di design che vanno ad affiancarsi alla gamma KRONA ricca di prodotti sia per porte scorrevoli, come controtelai per intonaco e cartongesso, sia per porte a battente, orientate al design contemporaneo.'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

      ],
    );
  }
}