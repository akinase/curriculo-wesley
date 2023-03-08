// ignore: file_names
import 'package:flutter/material.dart';
import '../../../constantes.dart';

class Publicacao extends StatefulWidget {
  const Publicacao({Key? key}) : super(key: key);

  @override
// ignore: library_private_types_in_public_api
  _PublicacaoState createState() => _PublicacaoState();
}

class _PublicacaoState extends State<Publicacao>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.15,
            width: double.infinity,
            color: kbackgroundColor,
            child: const Center(
              child: Text(
                "Projeto",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            height: 50,
            width: double.infinity,
            color: kbackgroundColorSec,
            child: TabBar(
              controller: _tabController,
              tabs: const [
                Tab(text: 'Artigos'),
                Tab(text: 'Dissertações e Teses'),
              ],
              labelColor: Colors.black,
              indicatorColor: kTextColor,
            ),
          ),
          Expanded(
            child: Container(
              color: kbackgroundColor,
              child: TabBarView(
                controller: _tabController,
                children: [
                  SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Center(
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(40),
                            child: Container(
                              color: const Color.fromARGB(183, 255, 255, 255),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: <Widget>[
                                  // ignore: prefer_const_constructors
                                  Padding(
                                    padding: const EdgeInsets.all(40),
                                    child: const Text(
                                      "Artigos",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(40),
                                    child: SizedBox(
                                      width: 800,
                                      child: Text(
                                        textAlign: TextAlign.center,
                                        "Publicados em 2015",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                  // ignore: prefer_const_constructors
                                  Padding(
                                    padding: const EdgeInsets.all(40),
                                    child: const SizedBox(
                                      width: 800,
                                      child: Text(
                                        textAlign: TextAlign.justify,
                                        "ALVES, H.M.R.; VOLPATO, M.M.L.; VIEIRA, T.G.C.; LACERDA, M.P.C.; BORÉM, R.A.T.; BORÉM, F.M. Geotecnologias aplicadas à caracterização dos ambientes cafeeiros da Mantiqueira de Minas. In: SIMPÓSIO BRASILEIRO DE SENSORIAMENTO REMOTO, 17., 2015, João Pessoa. Anais... São José dos Campos:INPE, 2015. p. 3635 - 3639.\n\nALVES, H.M.R.; VOLPATO, M.M.L.; VIEIRA, T.G.C.; BOELL, M.G.; SOUZA, V.C.O.; MESQUITA, C.H.J. Geoinformação na cafeicultura de Minas Gerais: Mapas digitais, I3GEO, Web Mapping e Internet. In: SOMPÓSIO DE PESQUISA DOS CAFÉS DO BRASIL, 9., 2015, Curitiba. Anais... Brasília:Embrapa Café, 2015.\n\nBORÉM, R.A.T.; VOLPATO, M.M.L.; ALVES, H.M.R.; BORÉM, F.M.; SILVA, L.O. Geotecnologias na análise e mapeamento de Áreas de Preservação Permanente na Mantiqueira de Minas In: SIMPÓSIO DE PESQUISA DOS CAFÉS DO BRASIL, 9., 2015, Curitiba. Anais... Brasília:Embrapa Café, 2015.\n\nGONÇALVES, T.G.; MACIEL, D.A.; ALVES, H.M.R.; VOLPATO, M.M.L., VIEIRA, T.G.C.; DANTAS, M.F. Avaliação do nível de água do reservatório de Furnas nos anos de 2013 e 2014, utilizando imagens Landsat-8. In: SIMPÓSIO BRASILEIRO DE SENSORIAMENTO REMOTO, 17., 2015, João Pessoa. Anais... São José dos Campos:INPE, 2015. p. 1502 - 1507.\n\nGONÇALVES, T.G.; MACIEL, D.A.; VOLPATO, M.M.L.; ALVES, H.M.R.; VIEIRA, T.G.C.; DANTAS, M.F. Determinação de áreas alagadas do reservatório de Furnas nos anos 2013 e 2015, utilizando imagens Landsat 8. In: CONGRESSO DE INICIAÇÃO CIENTÍFICA DA UFLA, 28., 2015, Lavras. Anais... Lavras:UFLA, 2015.\n\nHAMADA, E.; VOLPATO, M.M.L.; FERREIRA, G.L.; ALVES, H.M.R.; SOUZA, V.C.O.; VIEIRA, T.G.C. Simulação dos efeitos das mudanças climáticas sobre a ferrugem do café na região Sudeste do Brasil. In: SIMPÓSIO BRASILEIRO DE SENSORIAMENTO REMOTO, 17., 2015, João Pessoa. Anais... São José dos Campos:INPE, 2015. p. 2629 - 2636.\n\nHOTT, M.C.; CARVALHO, L.M.T.; ANTUNES, M.A.H.; ALVES, H.M.R.; ROCHA, W.S.D. Estimativa de Expoentes de Hurst para séries temporais de imagens NDVI / MODIS em regiões de pastagens da Zona da Mata de Minas Gerais. In: SIMPÓSIO BRASILEIRO DE SENSORIAMENTO REMOTO, 17., 2015, João Pessoa. Anais... São José dos Campos:INPE, 2015. p. 4065 - 4072.\n\nLUZ, M.P.S.; VOLTOLINI, G.B.; VOLPATO, M.M.L.; RIBEIRO, D.E.; TOSTA, M.F.; MIRANDA, F.M.; GUIRALDELI, C.H.C.; SILVA, A.C.A.; ALVES, A.P.C; BORÉM, F.M. Comportamento agrometeorológico em áreas cafeeiras, em diferentes altitudes, no município de Carmo de Minas, MG. In: SIMPÓSIO DE PESQUISA DOS CAFÉS DO BRASIL, 9., 2015, Curitiba. Anais... Brasília:Embrapa Café, 2015\n\nMACIEL, D.A.; GONÇALVES, T.G.; ALVES, H.M.R.; VOLPATO, M.M.L.; VIEIRA, T.G.C.; DANTAS, M.F. Avaliação do nível de água do reservatório de Furnas nos anos de 2013 e 2015, utilizando imagens Landsat 8. In: CONGRESSO MINEIRO DE ENGENHARIA E TECNOLOGIA, 1., 2015, Lavras. Anais... Lavras:UFLA\n\nMACIEL, D.A.; GONÇALVES, T.G.; DANTAS, M.F.; VOLPATO, M.M.L.; ALVES, H.M.R. Caracterização de áreas bioclimáticas para o cultivo de café arábica na região da Mantiqueira de Minas. In: CONGRESSO DE INICIAÇÃO CIENTÍFICA DA UFLA, 28., 2015, Lavras. Anais... Lavras:UFLA, 2015.\n\nMEIRELES, E.J.; PANTANO, A.P., CARVALHO, L.G.; VOLPATO, M.M.L.; CENTURION,L. Caracterização agrometeorológica das regiões cafeeiras de Lavras, MG e Campinas, SP no ano agrícola 2013/2014. In: CONGRESSO BRASILEIRO DE AGROMETEOROLOGIA, 19., 2015, Lavras. Anais... Lavras:SBA, 2015. p. 706 - 710.\n\nSANTOS, M.O.; SILVA, V.A.; SILVEIRA, H.R.O.; VOLPATO, M.M.L.; CARVALHO, G.R.; FERREIRA, E.A. Caracterização fisiológica e espectral de cafeeiro consorciado com arbóreas. In: CONGRESSO BRASILEIRO DE AGROMETEOROLOGIA, 19., 2015, Lavras. Anais... Lavras:SBA, 2015. p. 2459- 2464.\n\nSILVEIRA, H.R.O.; SANTOS, M.O.; SILVA, V.A.; VENTURIN, R.P.; VOLPATO, M.M.L.; SETOTAW, T.A.; MOREIRA, F.C.; DANTAS, M.F.; BARBOSA, J.P.R.A.D. Fisiologia de cafeeiros consorciados com espécies frutíferas e madeireira. In: CONGRESSO BRASIELIRO DE FISIOLOGIA VEGETAL, 15., 2015, Foz do Iguaçu. Anais... Londrina:SBFV, 2015.\n\nSILVEIRA, H.R.O.; SANTOS, M.O.; SILVA, V.A; VENTURIN, R.P.; MOREIRA, F.C.; DANTAS, M.F.; BARBOSA, J.P.R.A.D.; VOLPATO, M.M.L. Respostas ecofisiológicas de cafeeiros consorciados com espécies madeireiras no sul de Minas Gerais. In: SIMPÓSIO DE PESQUISA DOS CAFÉS DO BRASIL, 9., 2015, Curitiba. Anais... Brasília:Embrapa Café, 2015.\n\nSILVEIRA, H.R.O.; SANTOS, M.O.; SILVA, V.A.; VOLPATO, M.M.L.; ALVES, H.M.R.; DANTAS, M.F.; BARBOSA, J.P.R.A.D.; CARVALHO, G.R. Relações entre índices de reflectância foliares e potencial hídrico de cafeeiro irrigado e de sequeiro. In: SIMPÓSIO DE PESQUISA DOS CAFÉS DO BRASIL, 9., 2015, Curitiba. Anais... Brasília:Embrapa Café, 2015.\n\nSOUZA, V.C.O.; TELLA, B.G.; DRUMMOND, I.N.; VOLPATO, M.M.L.; CUNHA, R.L. Aplicação de algoritmos de mineração de dados no reconhecimento de padrões influentes na ocorrência da ferrugem (Hemileia vastatrix berk. &br) em cafeeiros na região sul de Minas Gerais. In: SIMPÓSIO BRASILEIRO DE SENSORIAMENTO REMOTO, 17., 2015, João Pessoa. Anais... São José dos Campos:INPE, 2015. p. 6874- 6881.\n\nVOLPATO, M.M.L; ALVES, H.M.R.; VIEIRA, T.G.C.; BOELL, V.G.; SOUZA, J.C.; BOELL, M.G.; SOARES, W.L. Mineração de dados espectrais para modelagem de ocorrência da Broca do café . In: SIMPÓSIO DE PESQUISA DOS CAFÉS DO BRASIL, 9., 2015, Curitiba. Anais... Brasília:Embrapa Café, 2015.\n\nVOLPATO, M.M.L; ALVES, H.M.R.; VIEIRA, T.G.C.; BORÉM, F.M.. MACIEL, D.A.; GONÇALVES, T.G.; MEIRELES, E.J.L.; BORÉM, R.A.T. Distribuição espacial do déficit hídrico na região da Mantiqueira de Minas, anos 2008 a 2013. In: SIMPÓSIO DE PESQUISA DOS CAFÉS DO BRASIL, 9., 2015, Curitiba. Anais... Brasília:Embrapa Café, 2015.\n\nVOLPATO, M.M.L.; ALVES, H.M.R.; VIEIRA, T.G.C.; BORÉM, F.M.; MACIEL, D.A.; GONÇALVES, T.G.; MEIRELES, E.J.L.; DANTAS, M.F. Caracterização de áreas bioclimáticas para o cultivo de café arábica na região da Mantiqueira de Minas. In: CONGRESSO BRASILEIRO DE AGROMETEOROLOGIA, 19., 2015, Lavras. Anais... Lavras:SBA, 2015. p. 2021 - 2025.",
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: kfontText,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(40),
                                    child: SizedBox(
                                      width: 800,
                                      child: Text(
                                        textAlign: TextAlign.center,
                                        "Publicados em 2014",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(40),
                                    child: SizedBox(
                                      width: 800,
                                      child: Text(
                                        textAlign: TextAlign.justify,
                                        "ALVES, H.M.R.; BORÉM, F.M.; VIEIRA, T.G.C.; VOLPATO, M.M.L.; BORÉM, R.T.; LACERDA, M.P.C. Geotechnologies applied to the characterization of coffee environments and assessment of land-use change in Minas Gerias.  In: INTERNATIONAL CONFERENCE ON COFFEE SCIENCE - ASIC, 25., 2014, Armenia, Colombia. Proceedings... Armenia: ASIC, 2014. P. 208.\n\nALVES, H.M.R.; VIEIRA, T.G.C.; VOLPATO, M.M.L.; LACERDA, M.P.C.; BORÉM, F.M. Geotechnologies for the characterization of coffee agroenvironments and their relation to coffee quality in space and time. In: Global Land Project (eds.), 2014. Proceedings of the Global Project 2 nd Open Science Meeting, Berlim, March 19-21,2014. Amsterdam/Berlim/São Paulo, 528 pp. http://www.ihdp.unu.edu/file/get/11621\n\nBORÉM, R.A.T.; SILVA, L.O.; VOLPATO, M.M.L.; ALVES, H.M.R.; VIEIRA, T.C.G.; BORÉM, F.M.; CARVALHO, R.N.; TARTARINI, L.A.F.  Environmental degradation in coffee producing farms of south Minas Gerais.  In: INTERNATIONAL CONFERENCE ON COFFEE SCIENCE - ASIC, 25., 2014, Armenia, Colombia. Proceedings... Armenia: ASIC, 2014. P. 199.\n\nDANTAS, M.F.; VIEIRA, T.G.C..; ALVES, H.M.R.; VOLPATO, M.M.L. Detecção de mudanças na cafeicultura da região de Machado - MG de 2000 - 2013. In: CONGRESSO BRASILEIRO DE PESQUISAS CAFEEIRAS, 40., 2014, Serra Negra. Anais... Varginha:Fundação Procafé, 2014.\n\nDANTAS, M.F.; VIEIRA, T.G.C..; ALVES, H.M.R.; VOLPATO, M.M.L. Detecção de mudanças na cafeicultura da região de Machado - MG de 2000 - 2013. In: CONGRESSO BRASILEIRO DE PESQUISAS CAFEEIRAS, 40., 2014, Serra Negra. Anais... Varginha:Fundação Procafé, 2014.\n\nGONÇALVES, T.G.; VIEIRA, A.R.; VIEIRA, T.G.C.; ALVES, H.M.R.; VOLPATO, M.M.L.; BOELL, M.G.; DANTAS, M.F. Sistema de Informação Geográfica para o estudo da distribuição da cafeicultura na Serra da Mantiqueira de Minas. In: SEMINÁRIO INTERNO DE INICIAÇÃO CIENTIFÍCA E TECNOLÓGICA, 6., 2014, Lavras. Anais... Lavras:EPAMIG URESM\n\nLACERDA, M.P.C.; ALVES, H.M.R.; CHAVES, A.A.A.; BORÉM, F.M.; VIEIRA, T.G.C.; VOLPATO, M.M.L.; BORÉM, R.A.T. Soil distribution associated to quality coffees produced in the geographical indication Mantiqueira de Minas. .  In: INTERNATIONAL CONFERENCE ON COFFEE SCIENCE - ASIC, 25., 2014, Armenia, Colombia. Proceedings... Armenia: ASIC, 2014. P. 214.\n\nLACERDA, M.P.C.; ALVES, H.M.R.; VIEIRA, T.G.C.; VOLPATO, M.M.L.; SOUZA, V.C.O. Evaluation of the lands use and environmental degradation in Brazilian savannah ecosystem, Distrito Federal, Brazil. In: Global Land Project (eds.), 2014.  Proceedings of the Global Project 2 nd Open Science Meeting, Berlim, March 19-21,2014. Amsterdam/Berlim/São Paulo. http://www.ihdp.unu.edu/file/get/11621\n\nMACIEL, D.A.; VOLPATO, M.M.L.; ALVES, H.M.R.; VIEIRA, T.G.C.; BOELL, M.G. Caracterização e delimitação de áreas bioclimáticas na região da Serra da Mantiqueira de Minas Gerais. In: SEMINÁRIO INTERNO DE INICIAÇÃO CIENTIFÍCA E TECNOLÓGICA, 6., 2014, Lavras. Anais... Lavras:EPAMIG URESM\n\nOLIVEIRA, J.V.T.M.; VIEIRA, A.R.; VIEIRA, T.C.G.; ALVES, H.M.R.; VOLPATO, M.M.L. Quantificação de áreas cafeeiras através de imagens do satélite RapidEye dos municípios de São Gonçalo do Sapucaí, São Sebastião da Bela Vista e Piranguinho. In: SEMINÁRIO DE INICIAÇÃO CIENTÍFICA E TECNOLÓGICA, 11., 2014, Belo Horizonte. Anais... Belo Horizonte:EPAMIG, 2014.\n\nRIOS, M.S.; VOLPATO, M.M.L.; ALVES, H.M.R.; VIEIRA, T.G.C. Classificação supervisionada de imagens de satélite para mapeamento de áreas cafeeiras: Teste de algoritmos. In: CONGRESSO DE INICIAÇÃO CIENTÍFICA DA UFLA, 27., 2014, Lavras. Anais... Lavras:UFLA 2014.\n\nRIOS, M.S.; VOLPATO, M.M.L.; VIEIRA, T.G.C.; ALVES, H.M.R. Classificação supervisionada de imagens de satélite para mapeamento de áreas cafeeiras: Teste de algoritmos. . In: SEMINÁRIO DE INICIAÇÃO CIENTÍFICA E TECNOLÓGICA, 11., 2014, Belo Horizonte. Anais... Belo Horizonte:EPAMIG, 2014.\n\nRIOS, M.S.; VOLPATO, M.M.L.; VIEIRA, T.G.C.; ALVES, H.M.R. Classificação supervisionada de imagens de satélite para mapeamento de áreas cafeeiras: Teste de algoritmos. . In: SEMINÁRIO INTERNO DE INICIAÇÃO CIENTIFÍCA E TECNOLÓGICA, 6., 2014, Lavras. Anais... Lavras:EPAMIG URESM.\n\nSOUZA, C.G.; ZANELLA, L.; BORÉM, R.A.T.; CARVALHO, L.M.T.; ALVES, H.M.R.; VOLPATO, M.M.L. Análise da fragmentação florestal da Área de Proteção Ambiental Coqueiral, Coqueiral – MG. Ciência Florestal, Santa Maria, v. 24, n. 3, p. 631-644, jul.-set., 2014.\n\nVIEIRA, A.R.; VIEIRA, T.G.C.; VOLPATO, M.M.L.; ALVES, H.M.R. Parâmetros físicos e qualidade fisiológica de sementes de café (Coffea arábica L.) produzidas na Fazenda Experimental da EPAMIG, em Três Pontas - MG. In: CONGRESSO BRASILEIRO DE PESQUISAS CAFEEIRAS, 40., 2014, Serra Negra. Anais... Varginha:Fundação Procafé, 2014.\n\nVIEIRA, A.R.; VIEIRA, T.G.C.; VOLPATO, M.M.L.; ALVES, H.M.R. Qualidade de sementes de café (Coffea arábica L.) Produzidas na Fazenda Experimental da EPAMIG em Machado – MG. In: CONGRESSO BRASILEIRO DE PESQUISAS CAFEEIRAS, 40., 2014, Serra Negra. Anais... Varginha:Fundação Procafé, 2014.\n\nVIEIRA, T.G.C.; ALVES, H.M.R.; VOLPATO, M.M.L.; LACERDA, M.P.C. Monitoring land transformations in the coffee region of Machado: How can remote sensing and gis help. In: INTERNATIONAL CONFERENCE ON COFFEE SCIENCE - ASIC, 25., 2014, Armenia, Colombia. Proceedings... Armenia: ASIC, 2014. P. 202.\n\nVIEIRA, T.G.C.; ALVES, H.M.R.; VOLPATO, M.M.L.; LACERDA, M.P.C.; SOUZA, V.C.O. Geospatial Tecnologies for the assessment of changes in land use in coffee producing regions of Brazil. In: Global Land Project (eds.), 2014.  Proceedings of the Global Project 2 nd Open Science Meeting, Berlim, March 19-21,2014. Amsterdam/Berlim/São Paulo. http://www.ihdp.unu.edu/file/get/11621\n\nVOLPATO, M.M.L.;  ALVES, H. M. R.; VIEIRA, T.G.C.; BORÉM, F. M.; BORÉM, R. T. MODIS EVI2 Spectral Index for Monitoring Coffee Environments in the South of Minas Gerais. In: INTERNATIONAL CONFERENCE ON COFFEE SCIENCE - ASIC, 25., 2014, Armenia, Colombia. Proceedings... Armenia: ASIC, 2014. P. 161- 162.\n\nVOLPATO, M.M.L.; ALVES, H. M. R.; VIEIRA, T. G. C. Comportamento sazonal do índice espectral EVI2 do sensor orbital Modis para o monitoramento de áreas cafeeiras do Sul de Minas Gerais. In: ROSALEN, D.L.; FURLANI, C. E. A.; FARIA, R. T. Estratégias para  redução do custo Brasil no agronegócio. Jaboticabal: SBEA, 2014. Disponível em: http://www.sbea.org.br/conbea/2014/livro/R0377-1.pdf. Acesso em: 4 de set de 2014.\n\nVOLPATO, M.M.L.; ALVES, H.M.R.; VIEIRA, T.G.C. Comportamento sazonal do índice espectral EV12 do sensor orbital MODIS para o monitoramento de áreas cafeeiras do Sul de Minas Gerais. In: CONGRESSO BRASILEIRO DE ENGENHARIA AGRÍCOLA, 43., 2014, Campo Grande. Anais... Jaboticabal:SBEA, 2014.\n\nVOLPATO, M.M.L.; ALVES, H.M.R.; VIEIRA, T.G.C. Monitoramento espectral de áreas cafeeiras do sul de Minas Gerais e sua relação com a precipitação mensal. In: CONGRESSO BRASILEIRO DE PESQUISAS CAFEEIRAS, 40., 2014, Serra Negra. Anais... Varginha:Fundação Procafé, 2014.",
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: kfontText,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(40),
                                    child: SizedBox(
                                      width: 800,
                                      child: Text(
                                        textAlign: TextAlign.center,
                                        "Publicados em 2013",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(40),
                                    child: SizedBox(
                                      width: 800,
                                      child: Text(
                                        textAlign: TextAlign.justify,
                                        "ALVES, H.M.R.; VIEIRA, T.G.C.; VOLPATO, M.M.L.; SILVA, L.F.M.; LACERDA, M.P.C.; BORÉM, F.M.; Mapeamento do uso da terra da Indicação Geográfica da região da Serra da Mantiqueira de Minas Gerias. In: CONGRESSO BRASILEIRO DE CIÊNCIA DO SOLO, 34., 2013,Florianópolis. Anais... Florianópolis: EPAGRI E SBCS, 2013.\n\nANDRADE, L.N.; VIEIRA, T.G.C. ; VOLPATO, M.M.L.; SOUZA, V.C.O.; SOUZA, C.G.; ALVES, H.M.R. Modelagem, estruturação e implantação de um banco de dados geográfico de dados de pesquisa da cafeicultura mineira. In: SIMPÓSIO BRASILEIRO DE SENSORIAMENTO REMOTO, 16., Foz do Iguaçu. Anais... São José dos Campos:INPE, 2013, p.6002-6009.\n\nANDRADE, L.N.; VIEIRA, T.G.C.; LACERDA, W.S.; VOLPATO, M.M.L.; DAVIS JUNIOR, C.A.; Aplicação de redes neurais artificiais na classificação de áreas cafeeiras da região de Machado (MG).  Coffee Science, Lavras, v.8, n.1, p.78-90, jan./mar. 2013\n\nBOELL, V.G; VOLPATO, M.M.L.; ALVES, H.M.R.; VIEIRA, T.G.C.; ALVARENGA, M.T.; SOUZA, J.C. Mineração de dados espectrais e climáticos para modelagem de ocorrência de broca do café (Hypothenemus hampei). In: CONGRESSO DE INICIAÇÃO CIENTÍFICA DA UFLA, 26., 2013. Anais... ... Lavras:PRP-UFLA, 2013.\n\nLACERDA, M. P. C.; BORGES, T. B.; SOUZA, R.Q.; OLIVEIRA JUNIOR, M. P.; ALVES, H. M. R.; VIEIRA, T.G.C. Relações pedomorfogeológicas no Parque Ecológico Pequizeiros – DF, com auxílio de geotecnologias. In: CONGRESSO BRASILEIRO DE CIÊNCIA DO SOLO, 34., 2013, Florianópolis. Anais...Viçosa:SBCS, 2013.\n\nLEME, D.S.; BOELL, M.G.; VIEIRA, T.G.C.; VOLPATO, M.M.L.; ALVES, H.M.R. Banco de dados geográfico sobre a cafeicultura mineira: organização lógica e inserção de dados. In: SIMPÓSIO DE PESQUISA DOS CAFÉS DO BRASIL, 8., 2013. Salvador. Anais... Brasília:Embrapa Café, 2013.\n\nLUZ, M.P.S.; VOLPATO, M.M.L.; ALVES, H.M.R.; VIEIRA, T.G.C.; BORÉM, F.M. Caracterização da temperatura do ar e precipitação em áreas cafeeiras na região da Serra da Mantiqueira de Minas Gerais. In: CONGRESSO BRASILEIRO DE ENGENHARIA AGRÍCOLA, 42., 2013. Fortaleza. Anais... Jaboticabal:SBEA, 2013.\n\nMARUJO, R.F.B.; VIEIRA, T.G.C.; ALVES, H.M.R.; VOLPATO, M.M.L.; RIBEIRO, M.B.P. Classificação automática de imagens Rapideye no mapeamento de áreas cafeeiras da região de São Sebastião do Paraíso, MG. In: CONGRESSO BRASILEIRO DE ENGENHARIA AGRÍCOLA, 42., 2013. Fortaleza. Anais... Jaboticabal:SBEA, 2013.\n\nMARUJO, R.F.B.; VOLPATO, M.M.L.; VIEIRA, T.G.C.; ALVES, H.M.R.; RIBEIRO, M.B.P. Classificação supervisionada de imagens de satélite para mapeamento de áreas cafeeiras: estudo das regiões de Três Pontas e são Sebastião do Paraíso- MG. In: SEMINÁRIO DE INICIAÇÃO CIENTÍFICA E TECNOLÓGICA, 10., 2013, Belo Horizonte. Anais... Belo Horizonte:EPAMIG, 2013.\n\nMARUJO, R.F.B.; VOLPATO, M.M.L; VIEIRA, T.G.C.; ALVES, H.M.R.; RIBEIRO, M.B.P. Classificação orientada a objetos aplicada á cultivos cafeeiros em Três Pontas MG. In: SIMPÓSIO BRASILEIRO DE SENSORIAMENTO REMOTO, 16., Foz do Iguaçu. Anais... São José dos Campos:INPE, 2013, p.1338-1345.\n\nMESQUITA JÚNIOR, C.H.; VOLPATO, M.M.L.; ALVES, H.M.R.; VIEIRA, T.G.C.; LEME, D.S.; BOELL, M.G. Processo de desenvolvimento de um site utilizando WEB Mapping para o laboratório de Geoprocessamento Geosolos. In: SIMPÓSIO DE PESQUISA DOS CAFÉS DO BRASIL, 8., 2013. Salvador. Anais... Brasília:Embrapa Café, 2013.\n\nOLIVEIRA, J.V.T.M.; VIEIRA, A.R.; SILVA, L.F.M. Qualidade de sementes de café produzidas na Fazenda Experimental de Três Pontas da EPAMIG Sul de Minas. . In: SEMINÁRIO DE INICIAÇÃO CIENTÍFICA E TECNOLÓGICA, 10., 2013, Belo Horizonte. Anais... Belo Horizonte:EPAMIG, 2013.\n\nOLIVEIRA, J.V.T.M.; VIEIRA, A.R.; VIEIRA, T.G.C.; ALVES, H.M.R.; VOLPATO, M.M.L. Quantificação de áreas cafeeiras através de imagens do satélite Rapideye dos municípios de são Gonçalo do Sapucaí, São Sebastião da Bela Vista e Piranguinho. In: CONGRESSO DE INICIAÇÃO CIENTÍFICA DA UFLA, 26., 2013. Anais... Lavras:PRP-UFLA, 2013.\n\nPEREIRA, L.A.A.; VIEIRA, T.G.C.; VOLPATO, M.M.L.; ALVES, H.M.R.; ANDRADE, L.N.; SOUZA, C.G. Sistema de informação geográfica na integração do conhecimento científico e tecnológico da cafeicultura em Minas Gerais. In: SEMINÁRIO DE INICIAÇÃO CIENTÍFICA E TECNOLÓGICA, 10., 2013, Belo Horizonte. Anais... Belo Horizonte:EPAMIG, 2013.\n\nSILVA, A.C.O. ; LACERDA, W.S. ; ANDRADE, L.N. ; VIEIRA, T.G.C. . Discriminação de áreas cafeeiras de imagens multiespectrais da região de Três Pontas MG através de Redes Neurais Artificiais e Extratores de Textura. In: SIMPÓSIO BRASILEIRO DE SENSORIAMENTO REMOTO, 16., Foz do Iguaçu. Anais... São José dos Campos:INPE, 2013, p.3795-3802.\n\nSILVA, L.F.M.; ALVES, H.M.R.; VIEIRA, T.G.C.; BORÉM, R.A.T.; ANGELINI, P.H.B.; VOLPATO, M.M.L. Avaliação de modelos digitais de elevação para aplicação na caracterização do ambiente cafeeiro na região da Serra da Mantiqueira, MG. In: SIMPÓSIO BRASILEIRO DE SENSORIAMENTO REMOTO, 16., Foz do Iguaçu. Anais... São José dos Campos:INPE, 2013, p.4716-4722.\n\nSILVA, L.F.M.; ALVES, H.M.R.; VIEIRA, T.G.C.; VOLPATO, M.M.L.; BORÉM, F.M. Avaliação de interpoladores espaciais para representação da temperatura do ar na região da Serra da Mantiqueira, Minas Gerais. In: CONGRESSO BRASILEIRO DE ENGENHARIA AGRÍCOLA, 42., 2013. Fortaleza. Anais... Jaboticabal:SBEA, 2013.\n\nSOUZA, V.C.O.; CUNHA, L.R.; ANDRADE, L.N.; VOLPATO, M.M.L.; CARVALHO, V.L.; ESMIN, A.A.A. Técnicas de extração de conhecimentos aplicadas à modelagem de ocorrência da Cercosporiose ( Cercospora coffeicola Berkeley & Cooke) em cafeeiros na região Sul de Minas Gerais.  Coffe Science, Lavras, v.8, n.1, p.91-100, jan./mar. 2013\n\nVENTURIN R.P.; SILVA, V.A.; CUNHA, R.L.; VOLPATO, M.M.L.; CHALFOUN, S.M.; CARVALHO, G.R.; CARVALHO, V.L. A pesquisa e as mudanças climáticas na cafeicultura. Informe Agropecuário. Semana Internacional do Café, Belo Horizonte, v. 34, Edição Especial, p. 34-43, 2013.\n\nVIEIRA, T.G.C.; ALVES, H.M.R.; VOLPATO, M.M.L.; BORÉM, R.A.T.; LACERDA, M.P.C.; SOUZA, V.C.O.; BORÉM, F.M. Mapeamento do uso da terra da Indicação Geográfica Mantiqueira de Minas. . In: SIMPÓSIO DE PESQUISA DOS CAFÉS DO BRASIL, 8., 2013. Salvador. Anais... Brasília:Embrapa Café, 2013.\n\nVIEIRA, T.G.C.; SILVA, E.; ALVES, H.M.R.; VOLPATO, M.M.L.; ANDRADE, H. Classes de solos ocupadas pelo parque cafeeiro da região de Três Pontas - MG. In: CONGRESSO BRASILEIRO DE CIÊNCIA DO SOLO, 34., 2013,Florianópolis. Anais... Florianópolis: EPAGRI E SBCS, 2013.\n\nVIEIRA, T.G.C.; SOUZA, V.C.O.; VOLPATO, M.M.L.; ANDRADE, L.N.; ALVES, H.M.R.; SOUZA, C.G. Sistema de informação geográfica na integração do conhecimento científico e tecnológico da cafeicultura em Minas Gerais. In: SIMPÓSIO BRASILEIRO DE SENSORIAMENTO REMOTO, 16., Foz do Iguaçu. Anais... São José dos Campos:INPE, 2013, p.0688-0695.\n\nVOLPATO, M.M.L.; ALVES, H.M.R.; VIEIRA, T.G.C.; ANDRADE, L.N.; SOARES, W.L.; SOUZA, V.C.O.; ALVARENGA, M.T.; BOELL, M.G. Mineração de dados espectrais para modelagem de ocorrência de Cercosporiose em cafeeiros. In: SIMPÓSIO DE PESQUISA DOS CAFÉS DO BRASIL, 8., 2013. Salvador. Anais... Brasília:Embrapa Café, 2013.\n\nVOLPATO, M.M.L.; ALVES, H.M.R.; VIEIRA, T.G.C.; SILVA, L.F.M.; BORÉM, F.M.; MEIRELES, E.J.L.; BORÉM R.A.T. Espacialização da temperatura do ar na região de Indicação Geográfica da Mantiqueira de Minas. In: SIMPÓSIO DE PESQUISA DOS CAFÉS DO BRASIL, 8., 2013. Salvador. Anais... Brasília:Embrapa Café, 2013.\n\nVOLPATO, M.M.L.; VIEIRA, T.G.C.; ALVES, H.M.R.; SANTOS, W.J.R. Imagens do sensor MODIS para monitoramento agrometeorológico de áreas cafeeiras. Coffee Science, Lavras, v.8, n.2, p.176-182, abr/jun.2013.",
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: kfontText,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(40),
                                    child: SizedBox(
                                      width: 800,
                                      child: Text(
                                        textAlign: TextAlign.center,
                                        "Publicados em 2012",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(40),
                                    child: SizedBox(
                                      width: 800,
                                      child: Text(
                                        textAlign: TextAlign.justify,
                                        "ALVARENGA, M. T.; LACERDA, W. S.; ANDRADE, L. N.; VOLPATO, M. M. L.; CUNHA, R. L.; MARUJO, R. F. B. Mineração de Dados Espectrais e Climáticos para Modelagem de Ocorrência de Cercospora (Cercorsporacoffeicola Berkeley &Cooke) em Cafeeiros. In: CONGRESSO DE INICIAÇÃO CIENTÍFICA DA UFLA, 25., 2012, Lavras. Anais... Lavras:PRP-UFLA, 2012.\n\nALVES, H.M.R.; BARBOSA, J.N.; BOREM, F.M.; VOLPATO, M.M.L.; CIRILLO, M.A.; VIEIRA, T.G.C. Spatial distribution of coffees from Minas Gerais state and their relation with quality. In: INTERNATIONAL CONFERENCE ON COFFEE SCIENCE, 24., 2012, San José. Proceedings... Paris:ASIC, 2012. p.844-851.\n\nANGELINI, P.H.B.; BORÉM, R.A.T.; SILVA, L.F.M.; ALVES, H.M.R.; VOLPATO, M.M.L. Utilização de técnicas de geoprocessamento como ferramenta para delimitação de áreas de preservação permanente no município de Brasópolis – MG. In: JORNADA CIENTÍFICA DA GEOGRAFIA, 3., 2012, Alfenas. Anais... Alfenas:UNIFAL, 2012.\n\nANGELINI, P.H.B.; BORÉM, R.A.T.; SILVA, L.F.M.S. Mapeamento da áreas de preservação permanente do munícipio de Cachoeira de Minas utilizando geotecnologias. In: CONGRESSO DE INICIAÇÃO CIENTÍFICA DA UFLA, 25., 2012, Lavras. Anais... Lavras:PRP-UFLA, 2012.\n\nBARBOSA, J.N.; BOREM, F.M.; ALVES, H.M.R.; TOSTA, M.F.; RIBEIRO, D.E.; TAVEIRA, J. H. S.; RODRIGUES, C.; MAGUAS, C. Potential use of stable isotopes as an indicator of coffee quality. In: INTERNATIONAL CONFERENCE ON COFFEE SCIENCE, 24., 2012, San José. Proceedings... Paris:ASIC, 2012. p.121.\n\nBARBOSA, J.N.; BORÉM, F.M.; CIRILLO, M.A.; MALTA, M. R.; ALVARENGA, A.A.; ALVES, H.M.R. Coffee quality and its interactions with environmental factors in Minas Gerais, Brazil. Journal of Agricultural Science, v. 4, p. 81-190, 2012\n\nBOREM, R.A.T.; SILVA, L.F.M.; ALVES, H.M.R.; VIEIRA, T.G.C.; VOLPATO, M.M.L.; BOREM, F.M. Identification of areas for permanent preservation in coffee producing regions of south Minas Gerais. In: INTERNATIONAL CONFERENCE ON COFFEE SCIENCE, 24., 2012, San José. Proceedings... Paris:ASIC, 2012. p.1025-1029.\n\nLUZ,  M.P.S.; VOLPATO, M.M.L.; BOREM, F.M.; ALVES, H.M.R.; SILVA, L.F.M.; VIEIRA, T.G.C. Caracterização da temperatura do ar e precipitação em áreas cafeeiras na região da Serra da Mantiqueira de Minas Gerais. In: CONGRESSO BRASILEIRO DE PESQUISAS CAFEEIRAS, 38., 2012, Caxambu. Anais... Varginha:Fundação Procafé, 2012, p.226-227.\n\nMARUJO, R.F.B.; VIEIRA, T.G.C.; VOLPATO, M.M.L.; ALVES, H.M.R.; RIBEIRO, M.B.P. Classificação pixel a pixel de cultivos cafeeiros em imagem de satélite de alta resolução. In: JORNADA CIENTÍFICA DA GEOGRAFIA, 3., 2012, Alfenas. Anais... Alfenas:UNIFAL, 2012.\n\nMARUJO, R.F.B.; VIEIRA, T.G.C.; VOLPATO, M.M.L.; ALVES, H.M.R.; RIBEIRO, M.B.P. Classificação pixel a pixel supervisionada em imagem de satélite – São Sebastião do Paraíso, MG. In: ENCONTRO DE GEOGRAFIA DO CAMPO DAS VERTENTES, 2., 2012, São João Del Rei. Anais... São João Del-Rei:UFSJ, 2012.\n\nMARUJO, R.F.B.; VIEIRA, T.G.C.; VOLPATO, M.M.L.; ALVES, H.M.R.; RIBEIRO, M.B.P. Classificação supervisionada de imagens de satélite para mapeamento de áreas cafeeiras: estudos das regiões de Três Pontas e São Sebastião do Paraíso - MG. In: SEMINÁRIO DE INICIAÇÃO CIENTÍFICA E TECNOLÓGICA DA EPAMIG/FAPEMIG, 9., 2012, Belo Horizonte. Anais... Belo Horizonte:EPAMIG, 2012.\n\nMARUJO, R.F.B.; VIEIRA, T.G.C.; VOLPATO, M.M.L.; ALVES, H.M.R.; RIBEIRO, M.B.P. Estimativa da área de produção de café na região de Três Pontas Utilizando imagem de satélite Rapideye. In: CONGRESSO BRASILEIRO DE PESQUISAS CAFEEIRAS, 38., 2012, Caxambu. Anais... Varginha:Fundação Procafé, 2012, p.303.\n\nMARUJO, R.F.B.; VIEIRA, T.G.C.; VOLPATO, M.M.L.; ALVES, H.M.R.; RIBEIRO, M.B.P. Uso de imagens de satélite Rapideye associado com classificação orientada a objetos para mapeamento de café. In: CONGRESSO DE INICIAÇÃO CIENTÍFICA DA UFLA, 25., 2012, Lavras. Anais... Lavras:PRP-UFLA, 2012.\n\nMESQUITA JÚNIOR, C.H.; VOLPATO, M.M.L.; VIEIRA, T.G.C.; ALVES, H.M.R.; LUZ, M.P.S. Caracterização climática do município de Soledade de Minas na região da Serra da Mantiqueira de Minas Gerias visando qualidade para a bebida de cafeeiras. In: SEMINÁRIO DE INICIAÇÃO CIENTÍFICA E TECNOLÓGICA DA EPAMIG/FAPEMIG, 9., 2012, Belo Horizonte. Anais... Belo Horizonte:EPAMIG, 2012.\n\nMESSIAS, C.G.; ALVES, H.M.R.; VOLPATO, M.M.L.; VIEIRA, T.G.C.; BOREM, F.M.; BOREM, R.A.T., LACERDA, M.P.C. Mapping of coffee lands by remote sensing. In: INTERNATIONAL CONFERENCE ON COFFEE SCIENCE, 24., 2012, San José. Proceedings... Paris:ASIC, 2012. p.303.\n\nMESSIAS, C.G.; VOLPATO, M.M.L.; VIEIRA, T.G.C.; ALVES, H.M.R. Mapeamento de áreas cafeeiras utilizando técnicas de sensoriamento remoto: Estudo do município de Carmo de Minas (MG). In: SEMANA DE GEOGRAFIA DA UNICAMP, 7., 2012, Campinas. Anais... Campinas:UNICAMP, 2012.\n\nOLIVEIRA, J.V.T.M.; VIEIRA, A.R.; SILVA, L.F.M. Qualidade de sementes de café produzidas na fazenda experimental da EPAMIG em Três Pontas-MG. In: CONGRESSO DE INICIAÇÃO CIENTÍFICA DA UFLA, 25., 2012, Lavras. Anais... Lavras:PRP-UFLA, 2012.\n\nPEREIRA, L.A.A.; LACERDA, W.S.; ANDRADE, L.N.; VIEIRA, T.G.C.; VOLPATO, M.M.L.; ALVES, H.M.R. Classificação automática de áreas cafeeiras em imagens de satélite, utilizando Redes Neurais Artificiais. In: CONGRESSO DE INICIAÇÃO CIENTÍFICA DA UFLA, 25., 2012, Lavras. Anais... Lavras:PRP-UFLA, 2012.\n\nPEREIRA, L.A.A.; VIEIRA, T.G.C.; VOLPATO, M.M.L.; ALVES, H.M.R. Sistema de Informações Geográficas na integração do conhecimento científico e tecnológico da cafeicultura em Minas Gerais. In: SEMINÁRIO DE INICIAÇÃO CIENTÍFICA E TECNOLÓGICA DA EPAMIG/FAPEMIG, 9., 2012, Belo Horizonte. Anais... Belo Horizonte:EPAMIG, 2012.\n\nRIBEIRO, M.B.P.; VIEIRA, T.G.C.; VOLPATO, M.M.L.; ALVES, H.M.R.; MARUJO, R.F.B.; SILVA, L.F.M. Classificação de imagens Rapideye para áreas cafeeiras no município de Campanha - MG. In: JORNADA CIENTÍFICA DA GEOGRAFIA, 3., 2012, Alfenas. Anais... Alfenas:UNIFAL, 2012.\n\nRIBEIRO, M.B.P.; VIEIRA, T.G.C.; VOLPATO, M.M.L.; ALVES, H.M.R.; MARUJO, R.F.B. Mapeamento de áreas cafeeiras por classificação automática utilizando imagens Rapideye para o município de Campanha-MG. In: CONGRESSO BRASILEIRO DE PESQUISAS CAFEEIRAS, 38., 2012, Caxambu. Anais... Varginha:Fundação Procafé, 2012, p.383.\n\nSILVA, E.; VIEIRA, A.R.; CASTRO, D.G. Qualidade de sementes de café produzidas pela EPAMIG em São Sebastião do Paraíso. In: SEMINÁRIO DE INICIAÇÃO CIENTÍFICA E TECNOLÓGICA DA EPAMIG/FAPEMIG, 9., 2012, Belo Horizonte. Anais... Belo Horizonte:EPAMIG, 2012.\n\nSILVA, L.F.M.; BORÉM, R.A.T.; ALVES, H.M.R.; VIEIRA, T.G.C.; BOREM, F.M.; VOLPATO, M.M.L.; LUZ M.P. Monitoramento ambiental das áreas de produção cafeeira do município de Conceição das Pedras, Minas Gerais: Proposta metodológica para conservação de preservação permanente. In: CONGRESSO BRASILEIRO DE PESQUISAS CAFEEIRAS, 38., 2012. Anais... Varginha:Fundação Procafé, 2012, p.417-418.\n\nSILVA, L.F.M.; BORÉM, R.A.T.; ANGELINI, P.H.B.; VOLPATO, M.M.L.; VIEIRA, T.G.C.; RIBEIRO, M.B.P. Utilização de técnicas de sensoriamento remoto e geoprocessamento como subsídio para análise das áreas de preservação permanente do município de Olímpio Noronha - MG. In: JORNADA CIENTÍFICA DA GEOGRAFIA, 3., 2012, Alfenas. Anais... Alfenas:UNIFAL, 2012\n\nSILVA, L.O.; BOREM, R.A.T.; LEITE, G.N.; SILVA, L.F.M.; VOLPATO, M.M.L.; ALVES, H.M.R.; VIEIRA, T.G.C.; BOREM, F.M. Mapping of areas for permanent preservation in coffee producing regions of south Minas Gerais, Brazil and identification of land use conflicts. In: INTERNATIONAL CONFERENCE ON COFFEE SCIENCE, 24., 2012, San José. Proceedings... Paris:ASIC, 2012. p.1030-1034.\n\nSOUZA, C.G.; BOREM, R.A.T.; CARVALHO, L.M.T.; VOLPATO, M.M.L.; ALVES, H.M.R.; VIEIRA, T.G.C.; ZANELLA, L. Environmental characterization of coffee in the environmental protection area of Coqueiral, southern region of the State Minas Gerais, Brazil. In: INTERNATIONAL CONFERENCE ON COFFEE SCIENCE, 24., 2012, San José. Proceedings... Paris:ASIC, 2012.  p.1189-1192.\n\nSOUZA, V.C.O.; CUNHA, R.L.; VOLPATO, M.M.L.; ANDRADE, L.N.; ESMIN, A.A.A.; CARVALHO, V.L. Applied data mining to modeling the occurrence of brown eye spot (Cercospora coffeicola Berkeley & Cooke) Coffee Tree. In: INTERNATIONAL CONFERENCE ON COFFEE SCIENCE, 24., 2012, San José. Proceedings... Paris:ASIC, 2012. p.352.\n\nSOUZA, V.C.O.; VIEIRA, T.G.C.; VOLPATO, M.M.L.; ALVES, H.M.R. Espacialização e dinâmica da cafeicultura mineira entre 1990 e 2008, utilizando técnicas de geoprocessamento. Coffee Science, Lavras, v. 7, n. 2, p.122-134, maio/ago. 2012.\n\nVIEIRA, T.G.C.; ALVES, H.M.R.; VOLPATO, M.M.L.; LACERDA, M.P.C. Evolution in time and space of coffee production in the region of São Sebastião do Paraíso, Minas Gerais State, Brazil. In: INTERNATIONAL CONFERENCE ON COFFEE SCIENCE, 24., 2012, San José. Proceedings... Paris:ASIC, 2012. p.279.\n\nVOLPATO, M.M.L.; ALVES, H.M.R.; VIEIRA, T.G.C.; BOREM, F.M.; LUZ, M.P.S.; MEIRELES, E.J.L. The relation between coffee phenology, rainfall and temperature in coffee lands in the Serra da Mantiqueira region, Minas Gerais State, Brazil. In: INTERNATIONAL CONFERENCE ON COFFEE SCIENCE, 24., 2012, San José. Proceedings... Paris:ASIC,2012. p.275.\n\nZANELLA, L.; BOREM, R.A.T.; SOUZA, C.G.S.; BOREM, F.M.; ALVES, H.M.R. Relationship between coffee and environmental preservation in the Serra da Mantiqueira, Minas Gerais, Brazil. In: INTERNATIONAL CONFERENCE ON COFFEE SCIENCE, 24., 2012, San José. Proceedings... Paris:ASIC, 2012. p.935-939.",
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: kfontText,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(40),
                                    child: SizedBox(
                                      width: 800,
                                      child: Text(
                                        textAlign: TextAlign.center,
                                        "Publicados em 2011",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(40),
                                    child: SizedBox(
                                      width: 800,
                                      child: Text(
                                        textAlign: TextAlign.justify,
                                        "ALVES, H.M.R.; BARBOSA, J.N.; BORÉM, F.M.; SOUZA, V.C.O.; VIEIRA, T.G.C.; VOLPATO, M.M.L. Geoprocessamento para determinação da distribuição de cafés com qualidade sensorial no estado de Minas Gerais no ano de 2007. In: SIMPÓSIO BRASILEIRO DE SENSORIAMENTO REMOTO, 15., 2011, Curitiba. Anais... São José dos Campos:INPE, 2011, p.0277-0282.\n\nALVES, H.M.R.; BARBOSA, J.N.; BORÉM, F.M.; VOLPATO, M.M.L.; VIEIRA, T.G.C.; LACERDA, M.P.C. Relações entre ambiente e qualidade sensorial de cafés em Minas Gerais. In: SIMPÓSIO DE PESQUISA DOS CAFÉS DO BRASIL, 7., 2011, Araxá. Anais... Brasília:Embrapa Café, 2011. CD-ROM.\n\nALVES, H.M.R.; VOLPATO, M.M.L.; VIEIRA, T.G.C.; BORÉM, F.M.; BARBOSA, J.N. Características ambientais e qualidade da bebida dos cafés do estado de Minas Gerais. Informe Agropecuário. Produção de café: opção pela qualidade, Belo Horizonte, v.32, n.261, p.1-12, 2011.\n\nANDRADE, L.N.; VIEIRA, T.G.C.; LACERDA, W.S.; DAVIS JUNIOR, C.A. Redes Neurais Artificiais (RNA) aplicadas à classificação de áreas cafeeiras na região de Três Pontas-MG. In: SIMPÓSIO BRASILEIRO DE SENSORIAMENTO REMOTO, 15., 2011, Curitiba. Anais... São José dos Campos:INPE, 2011, p.7603-7610.\n\nANDRADE, L.N.; VIEIRA, T.G.C.; LACERDA, W.S.; VOLPATO, M.M.L.; ALVES, H.M.R.; SILVA, E.; SOUZA, C.G. Redes Neurais Artificiais (RNA) aplicadas à classificação de áreas cafeeiras na região de Três Pontas-MG. In: CONGRESSO BRASILEIRO DE CIÊNCIA DO SOLO, 33., 2011, Uberlândia. Anais... Viçosa:SBCS, 2011. v. CD-ROM.\n\nANDRADE, L.N.; VIEIRA, T.G.C.; LACERDA, W.S.; VOLPATO, M.M.L.; ALVES, H.M.R.; SILVA, A.C.O.; SOUZA, C.G. Redes neurais artificiais (RNA) aplicadas à classificação de áreas cafeeiras na região de Três Pontas – MG. In: SIMPÓSIO DE PESQUISA DOS CAFÉS DO BRASIL, 7., 2011, Araxá. Anais... Brasília:Embrapa Café, 2011. CD-ROM.\n\nLUZ, M.P.S.; VOLPATO, M.M.L.; ALVES, H.M.R.; BORÉM, F.M.; VIEIRA, T.G.C.; MEIRELES, E.J.L. Condições agrometeorológicas de cafeeiros na região da Serra da Mantiqueira Mineira, anos 2006-2008. In: SIMPÓSIO DE PESQUISA DOS CAFÉS DO BRASIL, 7., 2011, Araxá. Anais... Brasília:Embrapa Café, 2011. CD-ROM.\n\nLUZ, M.P.S.; VOLPATO, M.M.L.; ALVES, H.M.R.; VIEIRA, T.G.C.; BORÉM, F.M. Análise de variáveis climáticas, no período 2006 a 2008, na região da Serra da Mantiqueira Mineira. In: CONGRESSO DE PÓS-GRADUAÇÃO DA UFLA, 20., 2011, Lavras. Anais...São Paulo:SBPC, 2011.\n\nLUZ, M.P.S.; VOLPATO, M.M.L.; ALVES, H.M.R.; VIEIRA, T.G.C.; BORÉM, F.M. Condições agrometeorológicas de cafeeiros na região de Soledade de Minas, anos 1999-2011. In: CONGRESSO BRASILEIRO DE PESQUISAS CAFEEIRAS, 37., 2011, Poços de Caldas. Anais... Varginha:Fundação Procafé, 2011.\n\nMEIRELES, E.J.L.; VOLPATO, M.M.L.; GARCIA, A.L.A. Balanço hídrico dos anos agrícolas 2008/2009 e 2009/2010 para áreas cafeeiras no município de Patrocínio, MG. In: SIMPÓSIO DE PESQUISA DOS CAFÉS DO BRASIL, 7., 2011, Araxá. Anais... Brasília:Embrapa Café, 2011. CD-ROM.\n\nMESQUITA JÚNIOR, C.H.; VOLPATO, M.M.L.; ALVES, H.M.R.; VIEIRA, T.G.C.; MEIRELES, E.J.L. Comportamento do índice espectral NDVI em áreas cafeeiras de Três Pontas, MG, nos anos de 2008-2009. In: SIMPÓSIO DE PESQUISA DOS CAFÉS DO BRASIL, 7., 2011, Araxá. Anais... Brasília:Embrapa Café, 2011. CD-ROM.\n\nMESQUITA JÚNIOR, C.H.; VOLPATO, M.M.L.; VIEIRA, T.G.C.; ALVES, H.M.R.; MEIRELES, E.J.L. Relação entre índice espectral NDVI, precipitação e fenologia de cafeeiros do município de Três Pontas, nos anos de 2008-2009. In: CONGRESSO DE INICIAÇÃO CIENTÍFICA DA UFLA, 24., 2011,  Lavras. Anais... Lavras:UFLA, 2011.\n\nSILVA, E.; VIEIRA, T.G.C.; ALVES, H.M.R.; VOLPATO, M.M.L. Geotecnologias para avaliação e análise da dinâmica espaço temporal do parque cafeeiro da região de Três Pontas – MG. In: SIMPÓSIO DE PESQUISA DOS CAFÉS DO BRASIL, 7., 2011, Araxá. Anais... Brasília:Embrapa Café, 2011. CD-ROM.\n\nSILVA. E.; VIEIRA, T.G.C.; ANDRADE, L.N.; LACERDA, W.S.; PEREIRA, L.A.A.; SILVA, A.C.O. Classificação automática de áreas cafeeiras na região de Três Pontas – MG por meio de redes neurais artificiais (RNA). In: CONGRESSO DE INICIAÇÃO CIENTÍFICA DA UFLA, 24., 2011,  Lavras. Anais... Lavras:UFLA, 2011\n\nSILVA. E.; VIEIRA, T.G.C.; ALVES, H.M.R.; VOLPATO, M.M.L.; ANDRADE, L.N.; Relações do ambiente cafeeiro da região de Machado-MG com o meio físico. In: CONGRESSO BRASILEIRO DE CIÊNCIA DO SOLO, 33., 2011, Uberlândia. Anais... Viçosa:SBCS, 2011. v. CD-ROM\n\nSILVA. E.; VIEIRA, T.G.C.; ALVES, H.M.R.; VOLPATO, M.M.L.; ANDRADE, L.N.; VIEIRA, A.R. Uso de geotecnologias para levantamento do meio físico da região de Machado-MG e sua relação com o parque cafeeiro. In: CONGRESSO DE INICIAÇÃO CIENTÍFICA DA UFLA, 24., 2011,  Lavras. Anais... Lavras:UFLA, 2011.\n\nSILVA. E.; VIEIRA, T.G.C.; ALVES, H.M.R.; VOLPATO, M.M.L.; ANDRADE, L.N.; Ocupação da  cafeicultura em relação às classes de solos da região de Machado – MG.  In: CONGRESSO BRASILEIRO DE PESQUISAS CAFEEIRAS, 37., 2011, Poços de Caldas. Anais... Varginha:Fundação Procafé, 2011.\n\nSILVA. E.; VIEIRA, T.G.C.; ALVES, H.M.R.; VOLPATO, M.M.L.; VIEIRA, A.R.; MESQUITA JÚNIOR, C.H. Avaliação e análise da dinâmica espaço-temporal do parque cafeeiro da região de Três Pontas – MG entre os anos de 2000 e 2010. In: CONGRESSO DE INICIAÇÃO CIENTÍFICA DA UFLA, 24., 2011,  Lavras. Anais... Lavras:UFLA, 2011.\n\nSOUZA, C.G.; ALVES, H.M.R.; VIEIRA, T.G.C.; VOLPATO, M.M.L.; ANDRADE, L.N.; SOUZA, K.R. Relação espaço temporal da cafeicultura com as áreas de preservação permanente na região de Três Pontas, Minas Gerais. In: SIMPÓSIO DE PESQUISA DOS CAFÉS DO BRASIL, 7., 2011, Araxá. Anais... Brasília:Embrapa Café, 2011. CD-ROM.\n\nSOUZA, C.G.; ZANELLA, L.; BORÉM, R.A.T.; CARVALHO, L.M.T.; SOUZA, K.R.; VIEIRA, T.G.C. Estrutura Fisiográfica da Área de Proteção Ambiental Coqueiral – MG. In: SIMPÓSIO BRASILEIRO DE SENSORIAMENTO REMOTO, 15., 2011, Curitiba. Anais... São José dos Campos:INPE, 2011, p.3827-3834.\n\nSOUZA, K.R.; VIEIRA, T.G.C.; ALVES, H.M.R.; VOLPATO, M.M.L.; PEREIRA, L.A.A.; SOUZA, C.G.; ANDRADE, L.N.  Classificação automática de imagem do satélite Rapideye para o mapeamento de áreas cafeeiras em Carmo de Minas, MG. In: SIMPÓSIO DE PESQUISA DOS CAFÉS DO BRASIL, 7., 2011, Araxá. Anais... Brasília:Embrapa Café, 2011. CD-ROM.\n\nSOUZA, K.R.; VIEIRA, T.G.C.; ALVES, H.M.R.; VOLPATO, M.M.L.; PEREIRA, L.A.A. Mapeamento de áreas cafeeiras utilizando imagens do satélite Rapideye. In: CONGRESSO BRASILEIRO DE PESQUISAS CAFEEIRAS, 37., 2011, Poços de Caldas. Anais... Varginha:Fundação Procafé, 2011\n\nSOUZA, V.C.O.; VIEIRA, T.G.C.; VOLPATO, M.M.L.; ALVES, H.M.R. Caracterização e evolução do uso da Terra em Áreas de Preservação Permanente de regiões cafeeiras do Sul de Minas. In: SIMPÓSIO BRASILEIRO DE SENSORIAMENTO REMOTO, 15., 2011, Curitiba. Anais... São José dos Campos:INPE, 2011, p.7859-7866.\n\nVIEIRA, T.G.C.; ALVES, H.M.R.; VOLPATO, M.M.L.; SOUZA, V.C.O. Caracterização ambiental de regiões cafeeiras para Indicação Geográfica. Café Arábica da pós-colheita ao consumo.  Lavras: U.R. EPAMIG SM, 2011, v. 2, p.591-634.\n\nVIEIRA, T.G.C.; ALVES, H.M.R.; VOLPATO, M.M.L.; SOUZA, V.C.O. Geotecnologia para avaliar e monitorar mudanças ambientais na região cafeeira de São Sebastião do Paraíso – MG. In: SIMPÓSIO DE PESQUISA DOS CAFÉS DO BRASIL, 7., 2011, Araxá. Anais... Brasília:Embrapa Café, 2011. CD-ROM.\n\nVIEIRA, T.G.C.; ALVES, H.M.R.; VOLPATO, M.M.L.; SOUZA, V.C.O. Mudanças ambientais na região cafeeira de São Sebastião do Paraíso – MG, utilizando geotecnologias. In: SIMPÓSIO BRASILEIRO DE SENSORIAMENTO REMOTO, 15., 2011, Curitiba. Anais... São José dos Campos:INPE, 2011, p.6947-6954.\n\nVOLPATO, M.M.L.; ALVES, H.M.R.; VIEIRA, T.G.C.; SANTOS, W.J.R.; MESQUITA  JÚNIOR, C.H.; SOUZA, V.C.O. Relação entre variáveis meteorológicas e o NDVI de produtos MOD13Q1 em áreas cafeeiras do município de Três Pontas, MG, anos 2008 e 2009. In: SIMPÓSIO BRASILEIRO DE SENSORIAMENTO REMOTO, 15., 2011, Curitiba. Anais... São José dos Campos:INPE, 2011, p.0447-0451.",
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: kfontText,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(40),
                                    child: SizedBox(
                                      width: 800,
                                      child: Text(
                                        textAlign: TextAlign.center,
                                        "Publicados em 2010",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(40),
                                    child: SizedBox(
                                      width: 800,
                                      child: Text(
                                        textAlign: TextAlign.justify,
                                        "ANDRADE, L.N.;VIEIRA, T.G.C.;ALVES, H.M.R.;SOUZA, V.C.O.;VOLPATO, M.M.L.Aplicação de Redes Neurais Artificiais (RNA) na análise e classificação de áreas cafeeiras da região de Machado-MG. In: CONGRESO LATINOAMERICANOYDEL CARIBEDE INGENIERÍAAGRÍCOLA, 9., CONGRESSO BRASILEIRODE ENGENHARIA AGRÍCOLA, 39., 2010, Vitória. Anais... Jaboticabal:SBEA,  2010, TC0281-3.\n\nANDRADE, L.N.; VIEIRA, T.G.C.;LACERDA, W.S.; DAVIS JÚNIOR, C.A.; ALVES, H.M.R.; VOLPATO, M.M.L.; SOUZA, V.C.O.  Aplicação de Redes Neurais Artificiais (RNA) na análise e classificação de áreas cafeeiras em imagens de satélite. In: CONGRESSO BRASILEIRODE PESQUISAS CAFEEIRAS, 36., 2010, Guaraparí. Anais... Varginha:FundaçãoProcafé, 2010. p.195-196.\n\nANDRADE, L.N.; VIEIRA, T.G.C.; LACERDA, W.S.; DAVIS JÚNIOR, C.A.; VOLPATO, M.M.L.; ALVES, H.M.R. Identificação automática de áreas cafeeiras em imagens de satélite utilizando Redes Neurais Artificiais. In: CONGRESSO DE PÓS-GRADUAÇÃO DA UFLA, 19., 2010, Lavras. Anais...São Paulo:SBPC, 2010.\n\nALVES, H.M.R.; VIEIRA, T.G.C.; VOLPATO, M.M.L.; SOUZA, V.C.O. Assessment of changes, in space and time, in the coffee lands of Minas Gerais state, in Brazil. In: INTERNATIONAL CONFERENCEON COFFEE SCIENCE, 23., 2010, Bali. Proceedings...Paris:ASIC, 2010.p.270.\n\nBARBOSA, J.N.; BOREM, F.M.;ALVES, H.M.R.;VOLPATO, M.M.L.;VIEIRA, T.G.C.; SOUZA, V.C.O. Spatial distribution of coffees from Minas Gerais state and their relation with quality. Coffee Science, Lavras,v. 5, p. 237-250, 2010.\n\nMESQUITA JÚNIOR, C.H.; VOLPATO, M.M.L.; VIEIRA, T.G.C.; ALVES, H.M.R.; SOUZA, V.C.O.; SANTOS, W.J.R. Índice de vegetação espectral e sua relação com a estiagem agrícola em áreas cafeeiras no município de Três Pontas, MG. In: CONGRESSO DE INICIAÇÃO CIENTÍFICADA UFLA, 23., 2010, Lavras. Anais...Lavras:PRP-UFLA, 2010.\n\nMACHADO, M.L.; ALVES, H.M.R.; VIEIRA, T.G.C.; FILHO, E.I.F.; LACERDA, M.P.C. Mapeamento de áreas cafeeiras (Coffeea Arabica L.) da Zona da Mata mineira usando sensoriamento remoto. Coffee Science,Lavras,v. 5, p. 113-122, 2010.\n\nPEREIRA, L.A.A.; ANDRADE, L.N.; VIEIRA, T.G.C.;LACERDA, W.S.; ALVES, H.M.R.; VOLPATO, M.M.L. Redes Neurais Artificiais (RNA) para identificação de áreas cafeeiras em imagens de satélite: treinamento e definição de arquiteturas.In: CONGRESSO DE INICIAÇÃO CIENTÍFICADA UFLA, 23., 2010, Lavras.Anais... Lavras:PRP-UFLA, 2010.\n\nSILVA, E.;VIEIRA, T.G.C.;ALVES, H.M.R.;VOLPATO, M.M.L.;SOUZA, V.C.O.; SANTOS, W.J.R. Evolução de áreas cafeeiras na paisagem do município de Três Pontas entre os anos de 1987 e 2007. In: CONGRESSO DE INICIAÇÃO CIENTÍFICADA UFLA, 23., 2010, Lavras. Anais...Lavras:PRP-UFLA, 2010.\n\nSOUZA, V.C.O.; VIEIRA, T.G.C.; VOLPATO, M.M.L.; ALVES, H.M.R. Estudo espaço-temporal do uso da terra em áreas de Preservação Permanente na região de Três Pontas-MG. In: REUNIÃO BRASILEIRA DE MANEJO E CONSERVAÇÃO DO SOLO E DA ÁGUA, 18., 2010, Teresina. Anais...Viçosa:SBCS, 2010. CD-ROM.\n\nSOUZA, K.R.;ALVES, H.M.R.;VOLPATO, M.M.L.; BARBOSA, J.N. ; SOUZA, C.G.;VIEIRA, T.G.C. Turismo do café: setor promissor para agricultura familiar do Sul de Minas Gerais. In: CONGRESSO DE PÓS-GRADUAÇÃO DA UFLA, 19., 2010, Lavras. Anais... São Paulo:SBPC, 2010.\n\nVIEIRA, T.G.C.;ALVES, H.M.R.; LACERDA, M.P.C.;VOLPATO, M.M.L.;SOUZA, V.C.O. Estudo espaço-temporal da cafeicultura na região de São Sebastião do Paraíso-MG, utilizando geotecnologias.In: REUNIÃO BRASILEIRA DE MANEJOE CONSERVAÇÃO DO SOLO E DA ÁGUA, 18., 2010, Teresina. Anais...Viçosa:SBCS, 2010. CD-ROM.\n\nVIEIRA, T.G.C.; ALVES, H.M.R.; VOLPATO, M.M.L.; SANTOS, W.J.R.;SOUZA, V.C.O. Estudo da evolução da cafeicultura na região de São Sebastião do Paraíso-MG, utilizando geotecnologias. In: AGROCAFÉ - SIMPÓSIO NACIONAL DO AGRONEGÓCIO CAFÉ, 11., 2010, Salvador. Anais...Brasília:Embrapa Café, 2010.\n\nVIEIRA, T.G.C.; ALVES, H.M.R.; VOLPATO, M.M.L.; SOUZA, V.C.O. Spacialization and dynamics of coffee production in Minas Gerais state, Brazil, between 1990 and 2009 usinggeotechnologies. In: INTERNATIONAL CONFERENCEON COFFEE SCIENCE Bali,23., 2010.Bali.Proceedings... Paris:ASIC, 2010. p.271.\n\nVOLPATO, M.M.L.; CUNHA, R.L.; CARVALHO, V.L.; ALVES, H.M.R.; VIEIRA, T.G.C. Análise do comportamento da temperatura do ar em áreas cafeeiras arborizadas e a pleno sol em São Sebastião do Paraíso, MG. In: CONGRESSO BRASILEIRO DE PESQUISAS CAFEEIRAS, 36., 2010, Guarapari. Anais... Varginha: Fundação Procafé, 2010. p.348-349.\n\nVOLPATO, M.M.L.; MEIRELES, E. J. L.; VIEIRA, T.G.C.; ALVES, H.M.R.; SANTOS, W. J. R.; SOUZA, V.C.O. Potential of index NDVI for agrimeteorological monitoring in the savannah coffee area of Minas Gerais state. In: INTERNATIONAL CONFERENCEON COFFEE SCIENCE, 23., 2010, Bali. Proceedings...Paris:ASIC, 2010. p.264.\n\nVOLPATO, M.M.L.; VIEIRA, T.G.C.; ALVES, H.M.R.; SANTOS, W.J.R.; MESQUITA JÚNIOR, C.H.;SOUZA, V.C.O. Monitoramento do Índice de Vegetação Espectral de áreas cafeeiras e sua relação com a precipitação no município de Três Pontas, Minas Gerais. In: CONGRESSO BRASILEIRODE PESQUISAS CAFEEIRAS, 36., 2010, Guarapari. Anais...Varginha:Fundação Procafé, 2010. p. 349-350.\n\nVOLPATO, M.M.L.;VIEIRA, T.G.C.;ALVES, H.M.R.; SANTOS, W.J.R.;SOUZA, V.C.O. Índice de vegetação espectral e sua relação com a estiagem agrícola em áreas cafeeiras no município de Três Pontas, Minas Gerais. In: CONGRESO LATINOAMERICANOYDEL CARIBEDE INGENIERÍAAGRÍCOLA, 9., CONGRESSO BRASILEIRODE ENGENHARIA AGRÍCOLA, 39., 2010, Vitória. Anais... Jaboticabal:SBEA, 2010, TC0281-1.\n\nVOLPATO, M.M.L.;VIEIRA, T.G.C.;ALVES, H.M.R.;SOUZA, V.C.O. Application of artificial neural networks (ann) in the analysis and classification of coffee areas in the region of Machado, state of de Minas Gerais, Brazil. In: INTERNATIONAL CONFERENCEON COFFEE SCIENCE, 23., 2010, Bali. Proceedings...Paris:ASIC, 2010. p.271.",
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: kfontText,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(40),
                                    child: SizedBox(
                                      width: 800,
                                      child: Text(
                                        textAlign: TextAlign.center,
                                        "Publicados em 2009",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(40),
                                    child: SizedBox(
                                      width: 800,
                                      child: Text(
                                        textAlign: TextAlign.justify,
                                        "ALVES, H.M.R.;VIEIRA, T.G.C.; SANTOS, W.J.R.;VOLPATO, M.M.L.; SOUZA, V.C.O. Influencia do relevo no mapeamento automático do café. In: CONGRESSO BRASILEIRO DE PESQUISAS CAFEEIRAS, 35., 2009, Araxá. Anais... Varginha:Fundação Procafé, 2009.\n\nALVES, H.M.R.;VIEIRA, T.G.C.;SOUZA, V.C.O.;VOLPATO, M.M.L.; ANDRADE, L.N.; BRAGA, R.C.A. . Sistema de informação geográfica na análise espaço-temporal do parque cafeeiro da região de Machado - MG. In:SIMPÓSIO DE PESQUISA DOS CAFÉS DO BRASIL, 6., 2009, Vitória. Anais...Brasília:Embrapa Café, 2009. v.CD ROM.\n\nANDRADE, L.N.;VIEIRA, T.G.C.;LACERDA, W.S.;ALVES, H.M.R.;VOLPATO, M.M.L.; BRAGA, R.C.A.;SOUZA, V.C.O.Redes Neurais Artificiais na classificação de áreas cafeeiras da região de Guaxupé. In:SIMPÓSIO DE PESQUISA DOS CAFÉS DO BRASIL, 6., 2009, Vitória. Anais...Brasília:Embrapa Café, 2009. v.CD ROM.\n\nANDRADE, L.N.;VIEIRA, T.G.C.;LACERDA, W.S.;ALVES, H.M.R.;VOLPATO, M.M.L.; BRAGA, R.C.A.;SOUZA, V.C.O. Redes Neurais Artificiais na classificação de áreas cafeeiras do Sul de Minas Gerais em imagem de satélite. In: CONGRESSO BRASILEIRO DE PESQUISAS CAFEEIRAS, 35., 2009, Araxá. Anais... Varginha:Fundação Procafé, 2009.\n\nBARBOSA, J.N.; BOREM, F.M.; ALVES, H.M.R.; SOUZA, V.C.O.; VOLPATO, M.M.L.; VIEIRA, T.G.C.; SANTOS, W.J.R.; SOUZA, K.R. Cafés de qualidade do estado de Minas Gerais e sua relação com os fatores climáticos. In: CONGRESSO BRASILEIRO DE AGROMETEOROLOGIA, 16., 2009, Belo Horizonte. Anais... Campinas:SBA. 2009.\n\nBARBOSA, J.N.;BOREM, F.M.;ALVES, H.M.R.;VOLPATO, M.M.L.;VIEIRA, T.G.C.; ISQUIERDO, E.P.; OLIVEIRA, P.D.Distribuição espacial de cafés do concurso de qualidade Cafés de Minas - 2008. In: SIMPÓSIO DE PESQUISA DOS CAFÉS DO BRASIL, 6., 2009, Vitória. Anais...Brasília:Embrapa Café, 2009. v.CD ROM.\n\nBARBOSA, J.N.;BOREM, F.M.;ALVES, H.M.R.;VOLPATO, M.M.L.;VIEIRA, T.G.C.;SOUZA, V.C.O.; SOUZA, K.R. Fatores climáticos e a espacialização dos cafés do estado de Minas Gerais e sua relação com a qualidade da bebida. In: CONGRESSO BRASILEIRO DE PESQUISAS CAFEEIRAS, 35., 2009, Araxá. Anais... Varginha:Fundação Procafé, 2009.\n\nBRAGA, R.C.A.;LACERDA, W.S.;VIEIRA, T.G.C.; ANDRADE, L.N. Mapeamento de áreas cafeeiras da região de Guaxupé por classificação automática utilizando Redes Neurais Artificiais. In: CONGRESSO DE INICIAÇÃO CIENTÍFICA DA UFLA, 22., 2009, Lavras. Anais...Lavras:PRP-UFLA, 2009.\n\nMOURA, L.C.; ANDRADE, H.; ALVES, H.M.R.; BERNARDES, T. Levantamento e mapeamento espaço temporal dos cafezais no município mineiro de Machado. Caminhos de Geografia, Uberlândia, v. 10, p. 124-134, 2009.\n\nNAVARES, J.F.; VIEIRA, T.G.C.;LACERDA, W.S. Classificação de áreas cafeeiras por meio de Redes Neurais Artificiais e os aspectos relacionados à reflectância: um estudo exploratório. . In: SIMPÓSIO BRASILEIRO DE SENSORIAMENTO REMOTO, 14., 2009, Natal. Anais... São José dos Campos:INPE, 2009. p.7855-7862.\n\nSANTOS, W.J.R.; ALVES, H.M.R.; VIEIRA, T.G.C.; VOLPATO, M.M.L. Influência do declive na exatidão do classificador MAXVER para o mapeamento da cultura do café. In: SIMPÓSIO BRASILEIRO DE SENSORIAMENTO REMOTO, 14., 2009, Natal. Anais... São José dos Campos:INPE, 2009. p.4333-4338.\n\nSANTOS, W.J.R.; VOLPATO, M.M.L.; ALVES, H.M.R.; VIEIRA, T.G.C.; SOUZA, V.C.O. Pluviosidade acumulada e sua relação com o índice de vegetação espectral de produtos MOD13QL em áreas cafeeiras de Três Pontas, MG. In: CONGRESSO BRASILEIRO DE AGROMETEOROLOGIA, 16., 2009, Belo Horizonte. Anais...: Campinas:SBA. 2009.\n\nSANTOS, W.J.R.;VOLPATO, M.M.L.;ALVES, H.M.R.;VIEIRA, T.G.C.;SOUZA, V.C.O.Variação temporal do índice de vegetação de lavouras cafeeiras utilizando produtos do sensor MODIS/TERRA. In:SIMPÓSIO DE PESQUISA DOS CAFÉS DO BRASIL, 6., 2009, Vitória. Anais...Brasília:Embrapa Café, 2009. v.CD ROM.\n\nSANTOS, W.J.R.;VOLPATO, M.M.L.;ALVES, H.M.R.;VIEIRA, T.G.C. Influência do declive na classificação automática da cultura cafeeira. In: CONGRESSO DE INICIAÇÃO CIENTÍFICA DA UFLA, 22., 2009, Lavras. Anais... Lavras:PRP-UFLA, 2009.\n\nSANTOS, W.J.R.;VOLPATO, M.M.L.;ALVES, H.M.R.;VIEIRA, T.G.C. Monitoramento do NDVI de lavouras cafeeiras por meio de imagens MODIS. In: CONGRESSO DE INICIAÇÃO CIENTÍFICA DA UFLA, 22., 2009, Lavras. Anais... Lavras:PRP-UFLA, 2009.\n\nSILVA, E.; GUALBERTO, V.;ALVES, H.M.R.;VIEIRA, T.G.C.;VOLPATO, M.M.L.; SOUSA, R. B.; SANTOS, W.J.R. Avaliação da acurácia do mapeamento de regiões cafeeiras por meio do índice Global e Kappa. In: CONGRESSO DE INICIAÇÃO CIENTÍFICADA UFLA, 22., 2009, Lavras. Anais...Lavras:PRP-UFLA, 2009.\n\nSOUSA, R.B.;VIEIRA, T.G.C.;ALVES, H.M.R.; SANTOS, W.J.R.; SILVA, E. Mapeamento de áreas cafeeiras do Sul de Minas Gerais Machado e Três Pontas. In: SEMINÁRIO DE INICIAÇÃO CIENTÍFICA E TECNOLÓGICA, 6., 2009, Belo Horizonte.  Anais... Belo Horizonte:EPAMIG, 2009.\n\nSOUSA, R.B.;VIEIRA, T.G.C.;ALVES, H.M.R.;VOLPATO, M.M.L.;SOUZA, V.C.O. ; SANTOS, W.J.R.; SILVA, E. Mapeamento de áreas cafeeiras do Sul de Minas Gerais - Machado e Três Pontas. In:SIMPÓSIO DE PESQUISA DOS CAFÉS DO BRASIL, 6., 2009, Vitória. Anais...Brasília:Embrapa Café, 2009. v.CD ROM.\n\nSOUZA, K.R.; SILVEIRA, M.A.;ALVES, H.M.R.; BORÉM, R.A.T.;VOLPATO, M.M.L.;VIEIRA, T.G.C.; BARBOSA, J.N. Turismo rural: alternativa de melhoria para a cafeicultura familiar do Sul de Minas Gerais. In: CONGRESSO BRASILEIRO DE PESQUISAS CAFEEIRAS, 35., 2009, Araxá. Anais... Varginha:Fundação Procafé, 2009.\n\nSOUZA, V.C.O.; VIEIRA, T.G.C.; ALVES, H.M.R.; VOLPATO, M.M.L.Análise e classificação textural de áreas de mata e café na região de Machado - MG. In: SIMPÓSIO BRASILEIRO DE SENSORIAMENTO REMOTO, 14., 2009, Natal. Anais... São José dos Campos:INPE, 2009. p.7925-7932.\n\nSOUZA, V.C.O.;VIEIRA, T.G.C.;ALVES, H.M.R.;VOLPATO, M.M.L.Análise espaço-temporal da cafeicultura mineira: 1990-2009. . In:SIMPÓSIO DE PESQUISA DOS CAFÉS DO BRASIL, 6., 2009, Vitória. Anais...Brasília:Embrapa Café, 2009. v.CD ROM.\n\nSOUZA, V.C.O.;VIEIRA, T.G.C.;ALVES, H.M.R.;VOLPATO, M.M.L.Espacialização da ocupação da cafeicultura nos municípios de Minas Gerais. In: CONGRESSO BRASILEIRO DE PESQUISAS CAFEEIRAS, 35., 2009, Araxá. Anais...Varginha:FundaçãoProcafé, 2009.\n\nSOUZA, V.C.O.; VIEIRA, T.G.C.; ALVES, H.M.R.; VOLPATO, M.M.L.Mapeamento de áreas cafeeiras por classificação automática utilizando medidas texturais. In:SIMPÓSIO DE PESQUISA DOS CAFÉS DO BRASIL, 6., 2009, Vitória. Anais...Brasília:Embrapa Café, 2009. v.CD ROM.\n\nVIEIRA, T. G. C.;LACERDA, W. S.;BOTELHO, T.G. Mapeamento de áreas cafeeiras utilizando Redes Neurais Artificiais: Estudo de caso na região de Três Pontas, Minas Gerais. . In: SIMPÓSIO BRASILEIRO DE SENSORIAMENTO REMOTO, 14., 2009, Natal. Anais... São José dos Campos:INPE, 2009. p.7947-7954.\n\nVIEIRA, T.G.C.; ALVES, H.M.R.; VOLPATO, M.M.L.; SOUZA, V.C.O.; SANTOS, W.J.R. Ambiente cafeeiro de Machado: mapeamento do uso da terra e relações tempo-espaço. In: CONGRESSO BRASILEIRO DE CIÊNCIA DO SOLO, 32., 2009, Fortaleza. Anais...Viçosa:SBCS, 2009. v. CDROM.\n\nVIEIRA, T.G.C.; LACERDA, W.S.; ALVES, H.M.R.; VOLPATO, M.M.L.; ANDRADE, L.N.; BRAGA, R.C.A.; SOUZA, V.C.O. Mapeamento de áreas cafeeiras da região de Guaxupé por classificação automática utilizando Redes Neurais Artificiais.In: CONGRESSO BRASILEIRO DE CIÊNCIA DO SOLO, 32., 2009, Fortaleza. Anais...Viçosa:SBCS, 2009. v. CDROM.\n\nVIEIRA, T.G.C.; ALVES, H.M.R.; VOLPATO, M.M.L.; SOUZA, V.C.O. Mudanças no parque cafeeiro da região de Machado MG, 2000-2007: estudo espaço-temporal. In: SIMPÓSIO BRASILEIRO DE SENSORIAMENTO REMOTO, 14., 2009, Natal. Anais... São José dos Campos:INPE, 2009. p.6369-6376.\n\nVIEIRA, T.G.C.; ALVES, H.M.R.; VOLPATO, M.M.L.; SOUZA, V.C.O. Análise espacial do parque cafeeiro da região de Três Pontas MG. In: SIMPÓSIO BRASILEIRO DE SENSORIAMENTO REMOTO, 14., 2009, Natal. Anais... São José dos Campos:INPE, 2009. p. 6361-6368.\n\nVIEIRA, T.G.C.; ALVES, H.M.R.; VOLPATO, M.M.L.; BERNARDES, T.; SANTOS, E.R. Avaliação de classificadores automáticos no mapeamento de áreas cafeeiras da região de Guaxupé, Minas Gerais. In:SIMPÓSIO DE PESQUISA DOS CAFÈS DO BRASIL, 6., 2009, Vitória. Anais... Brasília:Embrapa Café, 2009. v.CD ROM.\n\nVIEIRA, T.G.C.; ALVES, H.M.R.; VOLPATO, M.M.L.; SOUZA, V.C.O. Dinâmica espaço-temporal do parque cafeeiro da região de Três Pontas - MG. In:SIMPÓSIO DE PESQUISA DOS CAFÉS DO BRASIL, 6., 2009, Vitória. Anais... Brasília:Embrapa Café, 2009. v.CD ROM.\n\nVIEIRA, T.G.C.; ALVES, H.M.R.; VOLPATO, M.M.L.; SOUZA, V.C.O.; SANTOS, W.J.R. Ambiente cafeeiro de Machado: mapeamento do uso da terra e relações tempo-espaço. In: CONGRESSO BRASILEIRO DE CIÊNCIA DO SOLO, 32., 2009, Fortaleza. Anais...Viçosa:SBCS, 2009. v. CDROM.\n\nVIEIRA, T.G.C.; LACERDA, W.S.; ALVES, H.M.R.; VOLPATO, M.M.L.; ANDRADE, L.N.; BRAGA, R.C.A.; SOUZA, V.C.O. Redes Neurais Artificiais aplicadas na identificação automática de áreas cafeeiras obtidas por imagem de satélite. In: CONGRESSO BRASILEIRO DE REDES NEURAIS, 9., 2009, Ouro Preto. Anais...:SBRN, 2009.\n\nVIEIRA, T.G.C.; SANTOS, W.J.R.;ALVES, H.M.R.;VOLPATO, M.M.L.;SOUZA, V.C.O. Geotecnologias para estudo da evolução do parque cafeeiro de São Sebastião do Paraíso entre os anos 2000 e 2009. In: CONGRESSO BRASILEIRO DE PESQUISAS CAFEEIRAS, 35., 2009, Araxá. Anais... Varginha:Fundação Procafé, 2009.\n\nVOLPATO, M.M.L.; MEIRELES, E.J.L.; VIEIRA, T.G.C.; ALVES, H.M.R.; SANTOS, W.J.R.; SOUZA, V.C.O. Potencial do índice NDVI para o monitoramento agrometeorológico em área cafeeira do cerrado mineiro. In: CONGRESSO BRASILEIRO DE AGROMETEOROLOGIA, 16., 2009, Belo Horizonte. Anais... Campinas:SBA. 2009.\n\nVOLPATO, M.M.L.; ALVES, H.M.R.; VIEIRA, T.G.C.; SOUZA, V.C.O.Imagens MODIS para determinação de estiagem agrícola em área cafeeira no município de Patrocínio, MG. In: SIMPÓSIO BRASILEIRO DE SENSORIAMENTO REMOTO, 14., 2009, Natal. Anais... São José dos Campos:INPE, 2009. p.539-545.",
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: kfontText,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 800,
                                    child: Text(
                                      textAlign: TextAlign.justify,
                                      "VOLPATO, M.M.L.; VIEIRA, T.G.C.; ALVES, H.M.R.; SOUZA, V.C.O.; MEIRELES, E.J.L.; SANTOS, W.J.R. Determinação de estiagem em áreas cafeeiras no município de Patrocínio, MG, utilizando imagens MODIS/TERRA.  In:SIMPÓSIO DE PESQUISA DOS CAFÉS DO BRASIL, 6., 2009, Vitória. Anais... Brasília:Embrapa Café, 2009. v.CD ROM.\n\nVOLPATO, M.M.L.; SANTOS, W.J.R.;ALVES, H.M.R.;VIEIRA, T.G.C.;SOUZA, V.C.O.NDVI do produto MOD13Q1 e sua relação com a pluviosidade acumulada, em áreas cafeeiras de Três Pontas, MG. In: CONGRESSO BRASILEIRO DE PESQUISAS CAFEEIRAS, 35., 2009, Araxá. Anais... Varginha:Fundação Procafé, 2009.",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: kfontText,
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(40),
                                    child: SizedBox(
                                      width: 800,
                                      child: Text(
                                        textAlign: TextAlign.center,
                                        "Publicados em 2008",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(40),
                                    child: SizedBox(
                                      width: 800,
                                      child: Text(
                                        textAlign: TextAlign.justify,
                                        "ALVES, H.M.R.; BERNARDES, T.; SILVEIRA, M.A.; VIEIRA, T.G.C.; VOLPATO, M.M.L..Delimitation of a potential territory for the production of quality coffee in the south of the state of Minas Gerais in Brazil. In: INTERNATIONAL CONFERENCE ON COFFEE SCIENCE, 22., 2008, Campinas. Proceedings... Paris:ASIC, 2008.\n\nALVES, H.M.R.; VIEIRA, T.G.C.; VOLPATO, M.M.L.;BERNARDES, T.; LACERDA, M.P.C. Environmental characterization of coffee lands of the region of Guaxupé, south of the state of Minas Gerais in Brazil. In: INTERNATIONAL CONFERENCE ON COFFEE SCIENCE, 22., 2008, Campinas. Proceedings... Paris:ASIC, 2008. p.227-227.\n\nBOTELHO, T.G.; NAVARES, J.F.; VIEIRA, T.G.C.; ALVES, H.M.R.  Redes Neurais Artificiais na classificação de imagens multitemporais da região cafeeira de Três Pontas/MG. In: CONGRESSO  BRASILEIRO DE PESQUISAS CAFEEIRAS, 34, 2008, Caxambú. Anais... Varginha: Fundação Procafé, 2008.\n\nLACERDA, M.P.C.; QUEMENEUR, J.J.G.; ANDRADE, H.; ALVES, H.M.R.; VIEIRA, T.G.C. Estudo da relação pedomorfológica na distribuição de solos com horizontes B textural e B nítico na paisagem de Lavras, Minas Gerais. Revista Brasileira de Ciência do Solo, Viçosa, v.32, p.271-284. 2008.\n\nSANTOS, W.J.R.; ALVES, H.M.H.R.; VIEIRA, T.G.C.; SOUSA, R.B.; SILVA, E.; BRAGA, R.C.A.; VOLPATO, M.M.L. Mapeamento e distribuição por classe de relevo da cultura cafeeira em uma área piloto no município de Três Pontas MG..In: CONGRESSO BRASILEIRO DE PESQUISAS CAFEEIRAS, 34., 2008, Caxambú. Anais... Varginha:FundaçãoProcafé, 2008.\n\nVIEIRA, T.G.C.; ALVES, H.M.R.; VOLPATO, M.M.L.; BERNANRDES, T. SPOT images automatic classification for mapping land use in the coffee growing region of Guaxupé, south of the state of Minas Gerais in Brazil. In: INTERNATIONAL CONFERENCE ON COFFEE SCIENCE, 22., 2008, Campinas. Proceedings... Paris:ASIC, 2008.p. 228-228.\n\nVOLPATO, M.M.L.;  VIEIRA, T.G.C.; ALVES, H.M.R.; SANTOS, W.J.R.; BERNARDES, T.; OLIVEIRA, V.C.S. Monitoramento de cafeeiros utilizando imagens do satélite TERRA/MODIS: distinção das culturas em produção e em formação .In: CONGRESSO BRASILEIRO DE PESQUISAS CAFEEIRAS, 34., 2008, Caxambú. Anais... Varginha:Fundação Procafé, 2008.\n\nVOLPATO, M.M.L.; ALVES, H.M.R.; VIEIRA, T.G.C. Geotecnologias aplicadas à agrometeorologia. Informe Agropecuário. Efeito das mudanças climáticas na agricultura, Belo Horizonte, v.29, n. 246, 2008.",
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: kfontText,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(40),
                                    child: SizedBox(
                                      width: 800,
                                      child: Text(
                                        textAlign: TextAlign.center,
                                        "Publicados em 2007",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(40),
                                    child: SizedBox(
                                      width: 800,
                                      child: Text(
                                        textAlign: TextAlign.justify,
                                        "ALVES, H.M.R.; BERNARDES, T.; SILVEIRA, M.A.; NICOLELLA, G.; VIEIRA, T.G.C. Delimitação de um território potencial para a produção de cafés de qualidade diferenciada nos municípios de Campestre, Machado, e Poço Fundo. In: SIMPÓSIO DE PESQUISA DOS CAFÉS DO BRASIL, 5., 2007, Águas de Lindóia. Anais... Brasília:Embrapa Café, 2007. CD ROM.\n\nALVES, H.M.R.; VIEIRA, T.G.C.; BERNARDES, T.; LACERDA, M.P.C.; VOLPATO, M.M.L. Dinâmica espaço-temporal de ambientes cafeeiros de Minas Gerais. Informe Agropecuário. Geotecnologias, Belo Horizonte, v.28 n. 241, p.38-49,. 2007.\n\nBERNARDES, T.; ALVES, H. M. R.; VIEIRA, T. G. C. Classificação automática de imagens de satélites no mapeamento da região cafeeira de Patrocínio, MG. In:SIMPÓSIO DE PESQUISA DOS CAFÉS DO BRASIL, 5., 2007, Águas de Lindóia. Anais... Brasília:Embrapa Café, 2007. CD ROM.\n\nBERNARDES, T.; ALVES, H.M.R.; VIEIRA, T.G.C.; ANDRADE, H.; MOURA, L.C. Interações entre variáveis ambientais e o comportamento espectral do cafeeiro em imagens orbitais. In: SIMPÓSIO DE PESQUISA DOS CAFÉS DO BRASIL, 5., 2007, Águas de Lindóia. Anais... Brasília:Embrapa Café, 2007. CD ROM.\n\nBERNARDES, T.; ALVES, H.M.R.; VIEIRA, T.G.C.; ANDRADE, H. Avaliação da acurácia do mapeamento do uso da terra no complexo Serra Negra, Patrocínio, MG, por interpretação visual e classificação automática de imagens Landsat. In: SIMPÓSIO BRASILEIRO DE SENSORIAMENTO REMOTO, 13., 2007, Florianópolis. Anais... São José dos Campos:INPE, 2007. p.5587-5594.\n\nBERNARDES, T.;ALVES, H.M.R.; VIEIRA, T.G.C.;VOLPATO, M.M.L.; ZACARIAS, M.S.; REZENDE, F.A.; BOTELHO, T.G.; SANTOS, W.J.R. Mapeamento de áreas cafeeiras na região de Guaxupé: uma abordagem automatizada. In: CONGRESSO BRASILEIRO DE PESQUISAS CAFEEIRAS,33.,2007, Lavras. Anais... Varginha:Fundação Procafé, 2007.\n\nREZENDE, F.A.; ALVES, H.M.R.;VIEIRA, T.G.C.; VOLPATO, M.M.L.; BERNARDES, T.; BOTELHO, T.G.; SANTOS, W.J.R. . Mapeamento do uso da terra em área piloto no município de Três Pontas, MG.In: CONGRESSO BRASILEIRO DE PESQUISAS CAFEEIRAS,33.,2007, Lavras. Anais... Varginha:Fundação Procafé, 2007.\n\nBOTELHO, T.G.;VIEIRA, T.G.C.;ALVES, H.M.R.; ZACARIAS, M.S.;VOLPATO, M.M.L.;BERNARDES, T.; REZENDE, F.A.; SANTOS, W.J.R. Sistema de Informação Geográfica para realização de consultas a dados relacionados a cafeicultura de Minas Gerais. . In: CONGRESSO BRASILEIRO DE PESQUISAS CAFEEIRAS,33.,2007, Lavras. Anais... VarginhaFundação Procafé, 2007.\n\nLACERDA, M.P.C.; BARBOSA, I.O.; ALVES, H.M.R.; VIEIRA, T.G.C. Modelagem pedomorfogeológica para o mapeamento de solos. Informe Agropecuário. Geotecnologias, Belo Horizonte, v.28 n. 241, p.108-119, nov./dez. 2007.\n\nLACERDA, M.P.C.; CHAVES, A.A.A.; ALVES, H.M.R.; VIEIRA, T.G.C. Evaluation of land use and correlations with soil quality and water quality in Descoberto River watershed, Distrito Federal, Brazil. In: INTERNATIONAL GEOSCIENCEAND REMOTE SENSING SYMPOSIUM, 2007, Barcelona. Anais..., 2007. v. CDROM.\n\nMEIRELES E.J.L.; VOLPATO, M.M.L.; ALVES, H.M.R.; VIEIRA, T.G.C. Zoneamento agroclimático: um estudo de caso para o café. Informe Agropecuário. Geotecnologias, Belo Horizonte, v.28 n. 241, p.50-57, 2007.\n\nMOURA, L.C.; ALVES, H.M.R. ; ANDRADE, H. ; VIEIRA, T.G.C.; BERNARDES, T. Levantamento e mapeamento espaço-temporal dos cafezais no município mineiro de Machado. In: SIMPÓSIO DE PESQUISA DOS CAFÉS DO BRASIL, 5., 2007, Águas de Lindóia. Anais... Brasília:Embrapa Café, 2007. CD ROM.\n\nVIEIRA, T.G.C.;ALVES, H.M.R.;VOLPATO, M.M.L.;SOUZA, V.C.O.;BOTELHO, T.G. Sistema de Informação Geográfica para a Cafeicultura do Sul de Minas. In: CONGRESSO BRASILEIRO DE PESQUISAS CAFEEIRAS,33., 2007, Lavras. Anais... Varginha:Fundação Procafé, 2007.\n\nSANTOS, W.J.R.;ALVES, H.M.R.;VIEIRA, T.G.C.;VOLPATO, M.M.L.;BERNARDES, T.; REZENDE, F.A.;BOTELHO, T.G. Sensoriamento remoto para a caracterização do ambiente cafeeiro das cidades: Arceburgo, Monte Santo de Minas, Guaxupé e Guaranésia, MG. In: CONGRESSO BRASILEIRO DE PESQUISAS CAFEEIRAS,33., 2007, Lavras. Anais... Varginha:Fundação Procafé, 2007\n\nSANTOS, W.J.R.; ALVES, H.M.R.; VIEIRA, T.G.C.; VOLPATO, M.M.L.; BERNARDES, T.; REZENDE, F.A. Avaliação  da acuracia dos classificadores Bathacahrya e Isoseg para o mapeamento de café. . In: CONGRESSO DE INICIAÇÃO CIENTÍFICA DA UFLA, 20., 2007, Lavras. Anais... Lavras:PRP-UFLA, 2007.\n\nSANTOS, W.J.R.; ALVES, H.M.R.; VIEIRA, T.G.C.; VOLPATO, M.M.L.; BERNARDES, T.; REZENDE, F.A. Utilização do sensoriamento remoto para a caracterização do ambiente cafeeiro da região de Guaxupé, MG. In: CONGRESSO DE INICIAÇÃO CIENTÍFICA DA UFLA, 20., 2007, Lavras. Anais... Lavras:PRP-UFLA, 2007.\n\nSANTOS, W.J.R.;VIEIRA, T.G.C.;BERNARDES, T.;ALVES, H.M.R.; SILVEIRA, S.P.S. Exatidão de classificações automáticas de uma imagem Landsat 5 TM para a região cafeeira de Machado, MG. In: SIMPÓSIO DE PESQUISA DOS CAFÉS DO BRASIL, 5., 2007, Águas de Lindóia. Anais... Brasília:Embrapa Café, 2007. CD ROM.\n\nSILVEIRA, M.A.; BONNAL, P. ; NICOLELLA, G. ;BERNARDES, T.;ALVES, H.M.R. Identificação e avaliação de estratégias de desenvolvimento territorial em áreas de cafeicultura familiar do sul de Minas Gerais. In:SIMPÓSIO DE PESQUISA DOS CAFÉS DO BRASIL, 5., 2007, Águas de Lindóia. Anais... Brasília:Embrapa Café, 2007. CD ROM.\n\nSOUZA, V.C.O.; VIEIRA, T.G.C.; ALVES, H.M.R.; BOTELHO, T.G. Informações e dados geográficos: compartilhamento e disponibilização. Informe Agropecuário. Geotecnologias, Belo Horizonte, v.28 n. 241, p.7-15, 2007.\n\nSOUZA, V.C.O.;VIEIRA, T.G.C.;ALVES, H.M.R.;VOLPATO, M.ML.; BOTELHO, T.G. Portal GEOSOLOS: web na divulgação mapas de caracterização ambiental em lavouras cafeeiras de Minas Gerais.. In: CONGRESSO BRASILEIRO DE PESQUISAS CAFEEIRAS,33.,2007, Lavras. Anais... Varginha:Fundação Procafé, 2007.\n\nVIEIRA, T.G.C.; ALVES, H.M.R.; BERTOLDO, M.; SOUZA, V.C.O. Geothecnologies in the assessment of land use changes in coffee regions of the state of Minas Gerais in Brasil. Coffee Science, Lavras, v.2, p.142-149, 2007.\n\nVIEIRA, T.G.C.; ALVES, H.M.R.; SILVEIRA, S.P.S.; BERNARDES, T.; SOUZA, V.C.O. Estruturação, modelagem e implantação do banco de dados geográfico para cafeicultura do Sul de Minas, utilizando o modelo de dados OMT-G (Object Modelling Technique - Geographic ). In: SIMPÓSIO DE PESQUISA DOS CAFÉS DO BRASIL, 5., 2007, Águas de Lindóia. Anais... Brasília:Embrapa Café, 2007. CD-ROM.\n\nVIEIRA, T.G.C.; ALVES, H.M.R.; VOLPATO, M.M.L.; SOUZA, V.C.O. Sistema de geoinformação para a cafeicultura do Sul de Minas. Informe Agropecuário. Geotecnologias, Belo Horizonte, v.28 n.241, p.16-26, 2007.\n\n",
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: kfontText,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(40),
                                    child: SizedBox(
                                      width: 800,
                                      child: Text(
                                        textAlign: TextAlign.center,
                                        "Publicados em 2006",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(40),
                                    child: SizedBox(
                                      width: 800,
                                      child: Text(
                                        textAlign: TextAlign.justify,
                                        "ALVES, H.M.R. ;VIEIRA, T.G.C.; BERNARDES, T.; LACERDA, P.C.; SANTOS, N.B.  Geotechnologies Applied to the Evaluation of Coffee Environments of the State of Minas Gerais, Brazil. In: INTERNATIONAL CONFERENCEOF THE GLOBAL SPATIAL DATA INFRASTRUCTURE, 9, 2006, Santiago. Proceedings...:GSDI, 2006. v. CD-ROM. p.\n\nALVES, H.M.R.; VIEIRA, T.G.C.; SOUZA, V.C.O.; BERTOLDO, M.A.; LACERDA, M.P.C.; ANDRADE, H.; SANTOS, N.B. Monitoring the relationships between environment and coffee production in agroecosystems of the state of Minas Gerais In Brazil. In: INTERNATIONAL SYMPOSIUM ON SPATIAL DATA HANDLING, 12., 2006, Vienna. Proceedings... Vienna:ISPRS, 2006. v.36, p.131-135.\n\nBERNARDES, T.; GONTIJO, I. ; ANDRADE, H. ; VIEIRA, T.G.C. ; ALVES, H.M.R. Digital Terrain Models Derived form SRTM Data and Kriging. In: Abdul-Rahman, A., Zlatanova, S., Coors, V. Innovations in 3D Geo information systems. Berlin:SPRINGER, 2006. p.673-682.\n\nBERNARDES, T.; VIEIRA, T.G.C.; ALVES, H.M.R.; RIBEIRO, F.P.; Geotecnologias aplicadas na avaliação da dinâmica da cafeicultura no Complexo Serra Negra, em Patrocínio, Minas Gerais. In: CONGRESSO BRASILEIRO DE PESQUISAS CAFEEIRAS, 32., 2006, Poços de Caldas. Anais... Varginha:Fundação Procafé, 2006.\n\nLACERDA, M.P.C.; BARBOSA, I.O. ; ALVES, H.M.R.; VIEIRA, T.G.C.; MENEZES, P.R. The use of soil-landscape relationships modelling and geotechnologies for detailing the soil map of Distrito Federal in Brazil. In: INTERNATIONAL SYMPOSIUM ON SPATIAL DATA HANDLING, 12., 2006, Vienna. Proceedings... Vienna:ISPRS, 2006. v.36, p.13-18.\n\nLACERDA, M.P.C.; BARBOSA, I.O.; ALVES, H.M.R.; VIEIRA, T.G.C. Use of Digital Terrain Model (DTM) for generation of Pedoforms Map in Distrito Federal, Brazil.. In: INTERNATIONAL CONFERENCEOF THE GLOBAL SPATIAL DATA INFRASTRUCTURE, 9, 2006, Santiago. Proceedings... :GSDI, 2006. v. CD-ROM. p.1-4.\n\nLACERDA, M.P.C.; BARBOSA, I.O.; ALVES, H.M.R.; VIEIRA, T.G.C.Mapping of actual use of the lands of Distrito Federal, Brazil, using remote sensing. In: GLOBAL WORKSHOP ON DIGITAL SOIL MAPPING AND COUNTRIES WITH SPARSE SOIL DATA INFRASTRUCTURE, 2006, Rio de Janeiro, RJ. Anais... Rio de Janeiro:Embrapa Solos 2006. v.CD-ROM. p.1-6.\n\nVIEIRA, T.G.C.; ALVES, H.M.R.; LACERDA, M.P.C.; VEIGA, R.D.; EPIPHANIO, J.C.N. Crop parameters and spectral response of coffee (Coffeaarábica L.) areas within the state of Minas Gerais, Brazil. Coffee Science, Lavras, v. 1, n. 2, p.111-118, jul./dez. 2006.\n\nVIEIRA, T.G.C.; ALVES, H.M.R.; RIBEIRO, F.P.; BERNARDES, T.; Mapeamento do uso da terra na Região de Patrocínio/MG utilizando o Sistema de Informação Geográfica SPRING. In: CONGRESSO BRASILEIRO DE PESQUISAS CAFEEIRAS, 32., 2006, Poços de Caldas. Anais... Varginha:FundaçãoProcafé, 2006.\n\nVIEIRA, T.G.C.; ALVES, H.M.R.; SOUZA, V.C.O.; BERNARDES, T.; LACERDA, M.P.C. Assessing and mapping changes, in space and time, of coffee lands of the state of Minas Gerais in Brazil. In: INTERNATIONAL SYMPOSIUM ON SPATIAL DATA HANDLING, 12., 2006, Viena. Proceedings... Vienna:ISPRS, 2006. v.36, p.31-35.\n\nVIEIRA, T.G.C.; ALVES, H.M.R.; SOUZA, V.C.O.; BERNARDES, T.; LACERDA, M.P.C. Assessing and mapping changes, in space and time, of coffee lands of the state of Minas Gerais in Brazil. InINTERNATIONAL GEOGRAPHICAL UNION COMMISSIONON GEOGRAPHICAL INFORMATION SYSTEMS, 2006, Vienna, Austria. Proceedings... Vienna:ISPRS, 2006. v.2. p.31-35.",
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: kfontText,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(40),
                                    child: SizedBox(
                                      width: 800,
                                      child: Text(
                                        textAlign: TextAlign.center,
                                        "Publicados em 2005",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(40),
                                    child: SizedBox(
                                      width: 800,
                                      child: Text(
                                        textAlign: TextAlign.justify,
                                        "ALVES, H.M.R.; VIEIRA, T.G.C.; SOUZA, V.C.O.; BERTOLDO, M.A.; ANDRADE, H..; BERNARDES, N. Geotechnologies for the assessement of the relationships between coffee and environment of agroecosystems of the state of Minas Gerais in Brazil. In: INTERNATIONAL CARTOGRAPHIC CONFERENCE, 22., 2005, La Coruña. Proceedings... La Coruña:ICA, 2005.CD-ROM.\n\nALVES, H.M.R.; VIEIRA, T.G.C.; BERTOLDO, M.A.; SOUZA, V.C.O. Modelagem Geomorfopedológica da região de São Sebastião do Paraíso utilizando geotecnologias. In: CONGRESSO BRASILEIRO DE CIÊNCIA DO SOLO, 30., 2005, Recife. Anais... Viçosa:SBCS, 2005. v. CD-ROM.\n\nALVES, H.M.R.; VIEIRA, T.G.C.; SOUZA, V.C.O.; BERTOLDO, M.A.; ANDRADE, H.; BERNARDES,N. . Análise da Dinâmica de regiões cafeeiras em Minas Gerais em relação ao ambiente. In: SIMPÓSIO DE PESQUISA DOS CAFÉS DO BRASIL, 4., 2005, Londrina. Anais... Brasília:Embrapa Café, 2005. CD-ROM.\n\nBERTOLDO, M.A.; ANDRADE, H.; VIEIRA, T.G.C.; ALVES, H.M.R.; SOUZA, V.C.O.; SANTOS, N.B. Uso do geoprocessamento e modelagem para detalhamento do mapa de solos na região de Três Pontas, sul de Minas Gerais. In: CONGRESSO BRASILEIRO DE CIÊNCIA DO SOLO, 30., 2005, Recife. Anais... Viçosa:SBCS, Brasília: Embrapa Café, 2005. v. CD-ROM.\n\nBERTOLDO, M.A.; VIEIRA, T.G.C.; ALVES, H.M.R.; SOUZA, V.C.O.; SANTOS, N.b. Uso de imagens CBERS para avaliação de áreas cafeeiras no município de Campo do Meio, Minas Gerais. In: SIMPÓSIO BRASILEIRO DE SENSORIAMENTO REMOTO, 12., 2005, Goiânia. Anais... São José dos Campos:INPE, 2005. p.835-841. CD-ROM.\n\nBERTOLDO, M.A.; VIEIRA, T.G.C.; ALVES, H.M.R.; SOUZA, V.C.O.; BERNARDES, N. Monitoramento e Dinâmica da cultura cafeeira na Região de Três Pontas, Sul de Minas Gerais. In: SIMPÓSIO DE PESQUISA DOS CAFÉS DO BRASIL, 4., 2005, Londrina. Anais... Brasília:Embrapa Café, 2005. CD-ROM.\n\nBERTOLDO, M.A.; VIEIRA, T.G.C.; ALVES, H.M.R.; SOUZA, V.C.O.; BERNARDES, N. Avaliação de áreas cafeeiras no município de Campo do Meio em Minas Gerais, utilizando imagens CBERS e TM-LANDSAT. In: SIMPÓSIO DE PESQUISA DOS CAFÉS DO BRASIL, 4., 2005, Londrina. Anais... Brasília:Embrapa Café, 2005. CD-ROM.\n\nSOUZA, V.C.O.; OLIVEIRA, M.L.R.; VIEIRA, T.G.C.; ALVES, H.M.R. Portal Vertical GeoSolos – Spring Web na divulgação dos resultados de pesquisa em regiões cafeeiras de Minas Gerais. In: SIMPÓSIO BRASILEIRO DE SENSORIAMENTO REMOTO, 12., 2005, Goiânia. Anais... São José dos Campos:INPE, 2005. p.2389-2396. CD-ROM.\n\nSOUZA, V.C.O.; VIEIRA, T.G.C.; ALVES, H.M.R. Disponibilização de Mapas de Solos de Minas Gerais na Internet. In: CONGRESSO BRASILEIRO DE CIÊNCIA DO SOLO, 30., 2005, Recife. Anais...Viçosa:SBCS, 2005. v. CD-ROM.\n\nSOUZA, V.C.O.; VIEIRA, T.G.C.; ALVES, H.M.R.; BERTOLDO, M.A. Implementação de banco de dados geográfico para disponibilizar mapas de caracterização da cultura cafeeira. In: CONGRESSO BRASILEIRO DE PESQUISAS CAFEEIRAS, 31., 2005, Guarapari. Anais...Varginha:Procafé, 2005.\n\nSOUZA, V.C.O.; VIEIRA, T.G.C.; ALVES, H.M.R.; OLIVEIRA, M.L.R. Portal GeoSolos: Internet na divulgação de resultados de pesquisas cafeeiras em Minas Gerais. In: SIMPÓSIO DE PESQUISA DOS CAFÉS DO BRASIL, 4., 2005, Londrina. Anais... Brasília:Embrapa Café, 2005. CD-ROM.\n\nSOUZA, V.C.O.; VIEIRA, T.G.C.; ALVES, H.M.R.; OLIVEIRA, M.L.R. The use of the Internet to publish geoinformation from coffee environments of Brazil. In: INTERNATIONAL CARTOGRAPHIC CONFERENCE, 22, 2005, La Coruña. Proceedings… La Coruña:ICA, 2005.CD-ROM.\n\nVIEIRA, T.G.C.; ALVES, H.M.R.; BERTOLDO, M.A.; SOUZA, V.C.O. Relação Espacial entre uso da terra e solos da região de Machado/MG. In: CONGRESSO BRASILEIRO DE CIÊNCIA DO SOLO, 30., 2005, Recife. Anais... Viçosa:SBCS, Brasília: Embrapa Café, 2005. v. CD-ROM.\n\nVIEIRA, T.G.C.; ALVES, H.M.R.; BERTOLDO, M.A.; SOUZA, V.C.O. Uso de geotecnologias na avaliação espaço-temporal das principais regiões cafeeiras de Minas Gerais. In: SIMPÓSIO BRASILEIRO DE SENSORIAMENTO REMOTO, 12., 2005, Goiânia. Anais... São José dos Campos:INPE, 2005. p.313-320. CD-ROM.\n\nVIEIRA, T.G.C.; ALVES, H.M.R.; BERTOLDO, M.A.; SOUZA, V.C.O.; BERNARDES, T.; Assessing and mapping the evolution, in space and time, of coffee lands of the state of Minas Gerais in Brazil. In: INTERNATIONAL CARTOGRAPHIC CONFERENCE, 22., 2005, La Coruña. Proceedings... La Coruña:ICA, 2005.CD-ROM.\n\nVIEIRA, T.G.C.; ALVES, H.M.R.; BERTOLDO, M.A.; SOUZA, V.C.O.; BERNARDES, T.  Evolução de áreas cafeeiras na região de Machado/MG em relação ao uso da terra e às classes de declive, utilizando o Sistema de Informação Geográfica SPRING. In:CONGRESSO BRASILEIRO DE PESQUISAS CAFEEIRAS, 31., 2005, Guarapari. Anais... Varginha:Procafé, 2005.\n\nVIEIRA, T.G.C.; ALVES, H.M.R.; SOUZA, V.C.O.; BERTOLDO, M.A. Dinâmica da ocupação de áreas cafeeiras de Minas Gerais utilizando Geotecnologias. . In: SIMPÓSIO DE PESQUISA DOS CAFÉS DO BRASIL, 4., 2005, Londrina. Anais... Brasília:Embrapa Café, 2005. CD-ROM.",
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: kfontText,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(40),
                                    child: SizedBox(
                                      width: 800,
                                      child: Text(
                                        textAlign: TextAlign.center,
                                        "Publicados em 2004",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(40),
                                    child: SizedBox(
                                      width: 800,
                                      child: Text(
                                        textAlign: TextAlign.justify,
                                        "ALVES, H.M.R.; VIEIRA, T.G.C.; BERTOLDO, M.A.; SOUZA, V.C.O.; BERNARDES, T. Evolução de áreas cafeeiras na região de São Sebastião do Paraíso/MG em relação ao uso da terra e às classes de solos, utilizando o Sistema de Informação Geográfica SPRING. In: CONGRESSO BRASILEIRO DE PESQUISAS CAFEEIRAS, 30., 2004, São Lourenço. Anais... Varginha:Fundação Procafé, 2004.\n\nALVES, H.M.R.; VIEIRA, T.G.C.; LACERDA, M.P.C.; BERTOLDO, M.A.; ANDRADE, H. Characterization of coffee agroecosystems of The state of Minas Gerais in Brazil. In: CONGRESSO DE ISPRS - SOCEIDADE INTERNACIONAL DE FOTOGRAMETRIA E SENSOPRIAMENTO REMOTO, 20., 2004, Istambul. Proceedings... Holanda:ISPRS, v.35-B7, p.175, 2004.\n\nALVES, H.M.R.; VIEIRA, T.G.C.; SOUZA, V.C.O.; BERTOLDO,M.A.; BERNARDES, T. Uso de geotecnologias no estudo do ambiente cafeeiro de Machado – região sul de Minas. In: CONGRESSO BRASILEIRO DE PESQUISAS CAFEEIRAS, 30., 2004, São Lourenço. Anais...Varginha:Fundação Procafé, 2004.\n\nBERNARDES, T.; ALVES, H.M.R.; ANDRADE, H.; VIEIRA, T.G.C.; BERTOLDO ,M.A.; SOUZA, V.C.O. Uso e ocupação da terra na região de Serra Negra em Patrocínio-MG por meio de Sistemas de Informação Geográfica. In: CONGRESSO BRASILEIRO DE PESQUISAS CAFEEIRAS, 30., 2004 São Lourenço. Anais...Varginha:Fundação Procafé, 2004.\n\nBERTOLDO, M.A.; VIEIRA, T.G.C.; ALVES, H.M.R.; GUIMARÃES, P.T.G.; SOUZA, V.C.O.; SANTOS, N.B. Dinâmica das áreas de cafeeiros em função das classes de declividade do relevo e estimativa da produtividade  na região de Três Pontas-M.G. In: CONGRESSO BRASILEIRO DE PESQUISAS CAFEEIRAS, 30., 2004, São Lourenço. Anais... Varginha:Fundação Procafé, 2004.\n\nSOUZA, V.C.O.; VIEIRA, T.G.C.; ALVES, H.M.R.; BERTOLDO, M.A.; BERNARDES, T. Uso do ambiente web para a divulgação de resultados de pesquisas cafeeiras utilizando técnicas de geoprocessamento. In: CONGRESSO BRASILEIRO DE PESQUISAS CAFEEIRAS, 30., 2004, São Lourenço. Anais...Varginha:Fundação Procafé, 2004.\n\nSOUZA, V.C.O.; VIEIRA, T.G.C.; ALVES, H.M.R.; BERTOLDO, M.A.; BERNARDES, T. Uso do Sistema de Informação Geográfica para avaliação ambiental da propriedade a partir de dados regionais: Estudo de caso da Fazenda Diamantina, São Sebastião do Paraíso. In: CONGRESSO BRASILEIRO DE PESQUISAS CAFEEIRAS, 30., 2004, São Lourenço. Anais... Varginha:Fundação Procafé, 2004.\n\nVIEIRA, T.G.C.; ALVES, H.M.R.; BERTOLDO, M.A.; SOUZA, V.C.O.; BERNARDES, T. Evolução de áreas cafeeiras na região de Patrocínio/MG em relação ao uso da terra e às classes de orientação de vertente, utilizando o Sistema de Informação Geográfica SPRING. In: CONGRESSO BRASILEIRO DE PESQUISAS CAFEEIRAS, 30., 2004, São Lourenço. Anais... Varginha:Fundação Procafé, 2004.\n\nVIEIRA, T.G.C.; ALVES, H.M.R.; LACERDA, M.P.C.; VEIGA, R.D.; EPIPHANIO, J.C.N. Crop parameters for the evaluation of the spectral response of coffee (Coffea Arabica) areas within the state of Minas Gerais, Brazil. . In: CONGRESSO DE ISPRS - SOCEIDADE INTERNACIONAL DE FOTOGRAMETRIA E SENSOPRIAMENTO REMOTO, 20., 2004, Istambul. Proceedings... Holanda:ISPRS v.35, p.170-174, 2004.",
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: kfontText,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(40),
                                    child: SizedBox(
                                      width: 800,
                                      child: Text(
                                        textAlign: TextAlign.center,
                                        "Publicados em 2003",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(40),
                                    child: SizedBox(
                                      width: 800,
                                      child: Text(
                                        textAlign: TextAlign.justify,
                                        "ALVES, H.M.R.; ALVARENGA, M.I.N.; LACERDA, M.P.C. ; VIEIRA, T.G.C. Avaliação das terras e sua importância para o planejamento racional do uso. Informe Agropecuário, Agroecologia, Belo Horizonte, v. 24, n.220, p.82-93, 2003.\n\nALVES, H.M.R.; LACERDA, M.P.C.; VIEIRA, T.G.C. Caracterização de agroecossistemas cafeeiros nas principais regiões produtoras do estado de Minas Gerais. In: SIMPÓSIO BRASILEIRO DE SENSORIAMENTO REMOTO,11., 2003, Belo Horizonte. Anais... São José dos Campos:INPE, 2003. p.11-17.\n\nBERTOLDO, M.A.; VIEIRA, T.G.C.; ALVES, H.M.R.; OLIVEIRA, M.L.R.; MARQUES, H.S. Caracterização da cultura cafeeira  em relação as classes de solos e declividade utilizando técnicas de geoprocessamento na região de São Sebastião do Paraíso-MG. In: SIMPÓSIO BRASILEIRO DE SENSORIAMENTO REMOTO,11.,2003, Belo Horizonte. Anais...São José dos Campos:INPE, 2003. p.33-38.\n\nCARVALHO, L. G.; SEDIYAMA, G. C.; CECON, P. R. ; ALVES, H. M. R. Avaliação de um modelo agrometeorológico para a previsão de produtividade de café em três localidades da Região Sul do Estado de Minas Gerais. Revista Brasileira de Agrometeorologia, Santa Maria, v. 11, n.2, p.343-352, 2003.\n\nMARQUES, H.S.; BERTOLDO, M.A.; ANDRADE, H.; ALVES, H.M.R.; VIEIRA, T.G.C.; OLIVEIRA, M.L.R. Mapeamento das classes de solos da região de Machado-MG, a partir da correlação entre solos e relevo, utilizando técnicas de geoprocessamento. In: SIMPÓSIO BRASILEIRO DE SENSORIAMENTO REMOTO, 11., 2003, Belo Horizonte. Anais... São José dos Campos:INPE, 2003. p.169-172.\n\nVIEIRA, T.G.C.; ALVES, H.M.R.; LACERDA, M.P.C. Parâmetros culturais para avaliação do comportamento espectral da cultura do café(coffea arábica) em Minas Gerais. In: SIMPÓSIO BRASILEIRO DE SENSORIAMENTO REMOTO, 11., 2003, Belo Horizonte. Anais... São José dos Campos:INPE, 2003. p.247-254.",
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: kfontText,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(40),
                                    child: SizedBox(
                                      width: 800,
                                      child: Text(
                                        textAlign: TextAlign.center,
                                        "Publicados em 2002",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(40),
                                    child: SizedBox(
                                      width: 800,
                                      child: Text(
                                        textAlign: TextAlign.justify,
                                        "ALVES, H.M.R.; VIEIRA, T.G.C.; LACERDA, M.P.C.; ANDRADE, H.; MACHADO, M.L. Caracterização ambiental de áreas de café do cerrado mineiro. In: REUNIÃO BRASILEIRA DE MANEJO E CONSERVAÇÃO DO SOLO E DA ÁGUA, 14., 2002, Cuiabá. Anais... Viçosa:SBCS, 2002. CD-ROM.\n\nLACERDA, M.P.C.; ALVES, H.M.R.; VIEIRA, T.G.C.; ANDRADE, H.; MACHADO, M.L. Caracterização de agroecossistemas cafeeiros do Sul de Minas por meio de SIG, para fins de monitoramento e planejamento sustentável In: REUNIÃO BRASILEIRA DE MANEJO E CONSERVAÇÃO DO SOLO E DA ÁGUA, 14., 2002, Cuiabá. Anais... Viçosa:SBCS, 2002. CD-ROM.\n\nVIEIRA, T.G.C.; ALVES, H.M.R.; LACERDA, M.P.C.; MACHADO, M.L. Identificação de áreas ocupadas pela cafeicultura nas principais regiões produtoras de Minas Gerais utilizando-se técnicas de geoprocessamento. In: REUNIÃO BRASILEIRA DE MANEJO E CONSERVAÇÃO DO SOLO E DA ÁGUA, 14., 2002, Cuiabá. Anais... Viçosa:SBCS, 2002. CD-ROM.",
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: kfontText,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(40),
                                    child: SizedBox(
                                      width: 800,
                                      child: Text(
                                        textAlign: TextAlign.center,
                                        "Publicados em 2001",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(40),
                                    child: SizedBox(
                                      width: 800,
                                      child: Text(
                                        "ALVES, H.M.R.; LACERDA, M.P.C.; VIEIRA, T.G.C.; RESENDE, R.J.T.P.; ANDRADE, H.; MACHADO, M.L.; CEREDA, G.J.  Caracterização de agroecossistemas cafeeiros de Minas Gerais por meio do SPRING. Parte I: Agroecossistema de São Sebastião do Paraíso. In: SIMPÓSIO DE PESQUISA DOS CAFÉS DO BRASIL, 2., 2001, Vitória. Anais... Brasília:Embrapa Café, 2001. p.2367-2376.\n\nLACERDA, M.P.C.; ALVES, H.M.R.; VIEIRA, T.G.C.; RESENDE, R.J.T.P.; ANDRADE, H.; MACHADO, M.L.; CEREDA, G.J.  Caracterização de agroecossistemas cafeeiros de Minas Gerais por meio do SPRING. Parte II: Agroecossistema de Machado. In: SIMPÓSIO DE PESQUISA DOS CAFÉS DO BRASIL, 2., 2001, Vitória. Anais... Brasília:Embrapa Café, 2001. p.2377-2385.\n\nLACERDA, M.P.C.; ALVES, H.M.R.; VIEIRA, T.G.C.; MACHADO, M.L.; RESENDE, R.J.T.P.; ANDRADE, H.; CEREDA, G.J.  Caracterização de agroecossistemas cafeeiros de Minas Gerais por meio do SPRING. Parte III: Agroecossistema de Patrocíno. In: SIMPÓSIO DE PESQUISA DOS CAFÉS DO BRASIL, 2., 2001, Vitória. Anais... Brasília:Embrapa Café, 2001. p.2386-2393.\n\nMACHADO, M.L.; ALVES, H.M.R.; VIEIRA, T.G.C.; LACERDA, M.P.C.; ANDRADE, H.; FERNANDES FILHO, E.I.; SCHAEFER, C.E.R.; CEREDA, G.J. Caracterização do meio físico de agroecossistemas cafeeiros da Zona da Mata de Minas Gerais usando técnicas de Sensoriamento Remoto e Sistemas de Informações Geográficas e fotografias aéreas não convencionais. In: SIMPÓSIO DE PESQUISA DOS CAFÉS DO BRASIL, 2., 2001, Vitória. Anais... Brasília:Embrapa Café, 2001. p.2399-2409.\n\nVIEIRA, T.G.C.; LACERDA, M.P.C.; ALVES, H.M.R.; VEIGA, R.D.; VILELA, A.V.; CEREDA, G.J.; ANDRADE, H.; MACHADO, M.L.  Imagens orbitais aplicadas ao levantamento da cultura do café em Minas Gerais. In: SIMPÓSIO DE PESQUISA DOS CAFÉS DO BRASIL, 2., 2001, Vitória. Anais... Brasília:Embrapa Café, 2001. p.144-152.\n\n",
                                        textAlign: TextAlign.justify,
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: kfontText,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(40),
                                    child: SizedBox(
                                      width: 800,
                                      child: Text(
                                        textAlign: TextAlign.center,
                                        "Publicados em 2000",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(40),
                                    child: SizedBox(
                                      width: 800,
                                      child: Text(
                                        "ALVES, H.M.R.; LACERDA, M.P.C.; VIEIRA, T.G.C. Caracterização de agroecossistemas cafeeiros em regiões produtoras de Minas Gerais por meio do geoprocessamento. In: SIMPÓSIO DE PESQUISA DOS CAFÉS DO BRASIL, 1., 2000, Poços de Caldas, MG. Resumos expandidos... Brasília:Embrapa Café, 2000. v.1, p.11-14.\n\nALVES, H.M.R.; RESENDE, R.J.T.P.; ANDRADE, H. Utilização do Spring para avaliação do uso da terra em agroecossistemas cafeeiros da região de São Sebastião do Paraíso- MG. In: SIMPÓSIO DE PESQUISA DOS CAFÉS DO BRASIL, 1., 2000, Poços de Caldas. Resumos expandidos... Brasília:Embrapa Café, 2000. v.1, p.7-10.\n\nALVES, H.M.R.; VIEIRA, T.G.C.; ANDRADE, H.  Sistemas de Informação Geográfica na avaliação de impactos ambientais provenientes de atividades agropecuárias.Informe Agropecuário. Agropecuária e Ambiente,Belo Horizonte, v.21,n.202, p.99-109, 2000.\n\nLACERDA, M.P.C.; VIEIRA, T.G.C.; ALVES, H.M.R.; ANDRADE, H.; MARQUES, H.S.; ROSA, E.R. O uso do software SPRING no zoneamento geomorfopedológico da região de Machado, MG, ocupada pela cafeicultura. In: REUNIÃO BRASILEIRA DE MANEJO E CONSERVAÇÃO DO SOLO E DA ÁGUA, 13., 2000, Ilhéus. Resumos... Viçosa:SBCS, 2000. CD-ROM.\n\nLACERDA, M.P.C.; ANDRADE, H.; ALVES, H.M.R.; VIEIRA, T.G.C.; MARQUES, H.S.; ROSA, E.R.; ESTEVES, D.R. Uso de sistema de informação geográfica na determinação de classes de susceptibilidade erosiva dos solos da região de Lavras, MG. In: REUNIÃO BRASILEIRA DE MANEJO E CONSERVAÇÃO DO SOLO E DA ÁGUA, 13., 2000, Ilhéus. Resumos... Viçosa:SBCS, 2000. CD-ROM.\n\nLACERDA, M.P.C.; VIEIRA, T.G.C.; ALVES, H.M.R. Estimativa de áreas ocupadas pela cafeicultura em regiões produtoras de Minas Gerais por meio de geoprocessamento. In: SIMPÓSIO DE PESQUISA DOS CAFÉS DO BRASIL, 1., 2000, Poços de Caldas. Resumos expandidos... Brasília:Embrapa Café, 2000.\n\nRESENDE, R.J.T.P.; ALVES, H.M.R.; ANDRADE, H. Utilização do Spring para avaliação do uso da terra em agroecossistemas cafeeiros da região de Lavras- MG. In: SIMPÓSIO DE PESQUISA DOS CAFÉS DO BRASIL, 1., 2000, Poços de Caldas. Resumos expandidos... Brasília:Embrapa Café, 2000.\n\nRESENDE, R.J.T.P.; ALVES, H.M.R.; ANDRADE, H.; VIEIRA, T.G.C.; LACERDA, M.P.C. Caracterização ambiental e evolução da área ocupada pela cafeicultura na microbacia do Ribeirão Vermelho em Lavras-MG. In: CONGRESSO BRASILEIRO DE PESQUISAS CAFEEIRAS, 26., 2000, Marília. Trabalhos apresentados... Varginha:FundaçãoProcafé, 2000.\n\nRESENDE, R.J.T.P.; ANDRADE, H.; ALVES, H.M.R.; ESTEVES, D.R.; BRASIL, J.P.K.; VIEIRA, T.G.C.; LACERDA, M.P.C. Uso de Sistema de Informação Geográfica na caracterização da microbacia do Ribeirão Fundo, município de São Sebastião do Paraíso, MG. In: REUNIÃO BRASILEIRA DE MANEJO E CONSERVAÇÃO DO SOLO E DA ÁGUA, 13., 2000, Ilhéus. Resumos... Viçosa:SBCS, 2000. CD-ROM.\n\nVIEIRA, T.G.C.; LACERDA, M.P.C.; ALVES, H.M.R. Imagens orbitais aplicadas ao levantamento da cultura do café em Minas Gerais. In: SIMPÓSIO DE PESQUISA DOS CAFÉS DO BRASIL, 1., 2000, Poços de Caldas. Resumos expandidos...Brasília:Embrapa Café, 2000.\n\nVIEIRA, T.G.C.; MARQUES, H.S.; LACERDA, M.P.C.; ALVES, H.M.R.; ANDRADE, H.; ROSA, E.R.; BRASIL, J.P.K.; ESTEVES, D.R. Uso do sensoriamento remoto na análise temporal da ocupação do solo pela cafeicultura em São Sebastião do Paraíso, MG. In: REUNIÃO BRASILEIRA DE MANEJO E CONSERVAÇÃO DO SOLO E DA ÁGUA, 13., 2000, Ilhéus. Resumos... Viçosa:SBCS, 2000. CD-ROM.",
                                        textAlign: TextAlign.justify,
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: kfontText,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Center(
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(40),
                            child: Container(
                              color: const Color.fromARGB(183, 255, 255, 255),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: <Widget>[
                                  // ignore: prefer_const_constructors
                                  Padding(
                                    padding: const EdgeInsets.all(40),
                                    child: const Text(
                                      textAlign: TextAlign.center,
                                      "Dissertações e Teses",
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(40),
                                    child: SizedBox(
                                      width: 800,
                                      child: Text(
                                        textAlign: TextAlign.justify,
                                        "MACHADO, M.L. Caracterização de agroecossistemas cafeeiros da Zona da Mata de Minas Gerias, usando Sensoriamento Remoto e Sistemas de Informações Geográficas. 2002. 135 f. Tese ( Mestrado em Agronomia) - Universidade Federal de Lavras, Lavras, 2002.\n\nRESENDE, R.J.T.P. Caracterização do meio físico de áreas cafeeiras do Sul de Minas por meio do SPRING. 2000. 135f. Tese ( Mestrado em Agronomia) - Universidade Federal de Lavras, Lavras, 2000.\n\nMARQUES, H.S. Uso de geotecnologias no estudo das relações entre solos, orientação de vertentes e o comportamento espectral de áreas cafeeiras em Machado, Minas Gerais. 2003. 82f. Tese ( Mestrado em Agronomia) - Universidade Federal de Lavras, Lavras, 2003.\n\nSOUZA, V.C.O. Portal Vertical do GeoSolos: Geoprocessamento e Caracterização de Agroecossistemas Cafeeiros. 2004. 53f. Monografia ( Bacharel em Ciência da Computação) - Universidade Federal de Lavras, Lavras, 2004.\n\nBERNARDES, T. Caracterização do ambiente agrícola do complexo Serra Negra por meio de Sensoriamento e Sistemas de Informação Geográfica. 2006. 119f. Tese ( Mestrado em Agronomia) - Universidade Federal de Lavras, Lavras, 2006.\n\nMOURA, L.C. A ocupação espaço - temporal dos cafezais no município de Machado, no Sul de Minas: a relação entre aptidão agrícola da terra e seu uso na atividade cafeeira. 2007. 117f. Tese ( Doutorado em Agronomia) - Universidade Federal de Lavras, Lavras, 2007.\n\nREZENDE, F.A. Determinação das áreas cafeeiras mecanizáveis no Sul de Minas Gerais com cenários para a colheita. 2008. 94f. Tese ( Mestrado em Engenharia Agrícola) - Universidade Federal de Lavras, Lavras, 2008.\n\nBARBOSA, J.N. Distribuição espacial de cafés do estado de Minas Gerais e sua relação com a qualidade. 2009. 91f. Tese ( Mestrado em Agronomia) - Universidade Federal de Lavras, Lavras, 2009.\n\nANDRADE, L.N. Redes neurais artificiais aplicadas na identificação automática de áreas cafeeiras em imagens de satélite. 2011. 87f. Tese ( Mestrado em Ciência da Computação) - Universidade Federal de Minas Gerais, Belo Horizonte, 2011.\n\nPEREIRA, L.A.A. Classificação automática de áreas cafeeiras em imagens de satélite, utilizando Redes Neurais Artificiais. 2011. 50f. Monografia ( Bacharel em Ciência da Computação) - Universidade Federal de Lavras, Lavras, 2011.\n\nSANTOS, W.J.R. Geotecnologias para o estudo espaço-temporal da cafeicultura da região de São Sebastião do Paraíso, MG. 2009. 49f. Monografia ( Agronomia) - Universidade Federal de Lavras, Lavras, 2009",
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: kfontText,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
