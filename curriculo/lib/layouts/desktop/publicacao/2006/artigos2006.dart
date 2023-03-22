import 'package:curriculo/constantes.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Artigos2006 extends StatelessWidget {
  Artigos2006({Key? key}) : super(key: key);

  List<Map<String, String>> publi2006 = [
    {
      'PDF':
          'Geotechnologies Applied to the Evaluation of Coffee Environments of the State of Minas Gerais, Brazil. In: INTERNATIONAL CONFERENCEOF THE GLOBAL SPATIAL DATA INFRASTRUCTURE, 9.',
      'path': '',
    },
    {
      'PDF':
          'Monitoring the relationships between environment and coffee production in agroecosystems of the state of Minas Gerais In Brazil. In: INTERNATIONAL SYMPOSIUM ON SPATIAL DATA HANDLING, 12.',
      'path':
          'curriculo-wesley/curriculo/assets/publicacoes/2006/Monitoring the relationships between environment and coffee production in agroecosystems of the state of Minas Gerais In Brazil.pdf',
    },
    {
      'PDF':
          'Digital Terrain Models Derived form SRTM Data and Kriging. In: Abdul-Rahman, A., Zlatanova, S., Coors, V. Innovations in 3D Geo information systems.',
      'path': '',
    },
    {
      'PDF':
          'Geotecnologias aplicadas na avaliação da dinâmica da cafeicultura no Complexo Serra Negra, em Patrocínio, Minas Gerais. In: CONGRESSO BRASILEIRO DE PESQUISAS CAFEEIRAS, 32.',
      'path':
          'curriculo-wesley/curriculo/assets/publicacoes/2006/Geotecnologias aplicadas na avaliação da dinâmica da cafeicultura no Complexo Serra Negra, em Patrocínio, Minas Gerais.pdf',
    },
    {
      'PDF':
          'The use of soil-landscape relationships modelling and geotechnologies for detailing the soil map of Distrito Federal in Brazil. In: INTERNATIONAL SYMPOSIUM ON SPATIAL DATA HANDLING, 12.',
      'path':
          'curriculo-wesley/curriculo/assets/publicacoes/2006/The use of soil-landscape relationships modelling and geotechnologies for detailing the soil map of Distrito Federal in Brazil.pdf',
    },
    {
      'PDF':
          'Use of Digital Terrain Model (DTM) for generation of Pedoforms Map in Distrito Federal, Brazil.. In: INTERNATIONAL CONFERENCEOF THE GLOBAL SPATIAL DATA INFRASTRUCTURE, 9.',
      'path':
          'curriculo-wesley/curriculo/assets/publicacoes/2006/Use of Digital Terrain Model (DTM) for generation of Pedoforms Map in Distrito Federal, Brazil.pdf',
    },
    {
      'PDF':
          'Mapping of actual use of the lands of Distrito Federal, Brazil, using remote sensing. In: GLOBAL WORKSHOP ON DIGITAL SOIL MAPPING AND COUNTRIES WITH SPARSE SOIL DATA INFRASTRUCTURE, 2006, Rio de Janeiro.',
      'path': '',
    },
    {
      'PDF':
          'Crop parameters and spectral response of coffee (Coffeaarábica L.) areas within the state of Minas Gerais, Brazil. Coffee Science.',
      'path': '',
    },
    {
      'PDF':
          'Mapeamento do uso da terra na Região de Patrocínio/MG utilizando o Sistema de Informação Geográfica SPRING. In: CONGRESSO BRASILEIRO DE PESQUISAS CAFEEIRAS, 32.',
      'path':
          'curriculo-wesley/curriculo/assets/publicacoes/2006/Mapeamento do uso da terra na Região de Patrocínio-MG utilizando o Sistema de Informação Geográfica SPRING.pdf',
    },
    {
      'PDF':
          'Assessing and mapping changes, in space and time, of coffee lands of the state of Minas Gerais in Brazil. In: INTERNATIONAL SYMPOSIUM ON SPATIAL DATA HANDLING, 12.',
      'path':
          'curriculo-wesley/curriculo/assets/publicacoes/2006/Assessing and mapping changes, in space and time, of coffee lands of the state of Minas Gerais in Brazil.pdf',
    },
    {
      'PDF':
          'Assessing and mapping changes, in space and time, of coffee lands of the state of Minas Gerais in Brazil. In: INTERNATIONAL GEOGRAPHICAL UNION COMMISSIONON GEOGRAPHICAL INFORMATION SYSTEMS.',
      'path':
          'curriculo-wesley/curriculo/assets/publicacoes/2006/Assessing and mapping changes, in space and time, of coffee lands of the state of Minas Gerais in Brazil.pdf',
    },
  ];

  get pdfFiles => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: kbackgroundColor,
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Center(
            child: Container(
              color: kbackgroundColorSec,
              child: SizedBox(
                width: 800,
                child: ListView.builder(
                  itemCount: publi2006.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(publi2006[index]['PDF']!),
                      onTap: () {
                        /*Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Publi2014(
                              pdfPath: publi2014[index]['path']!,
                            ),
                          ),
                        );
                        */
                      },
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
}
