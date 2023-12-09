import 'package:flutter/material.dart';
import 'package:listfy/components/InfoAnnounce.dart';
import 'package:listfy/data/ProductData.dart';

class DetailsAD extends StatefulWidget {
  const DetailsAD({super.key});

  @override
  State<DetailsAD> createState() => _DetailsADState();
}

class _DetailsADState extends State<DetailsAD> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Detalhes',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 210,
            // TODO: CRIAR PAGEVIEW NA EXIBIÇÃO DE TELA CHEIA
            child: PageView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return Dialog(
                              insetPadding: const EdgeInsets.all(5),
                              child: Container(
                                height: 400,
                                child: Image.network(
                                  products[0]['pictures'][index],
                                  fit: (BoxFit.fill),
                                  width: double.infinity,
                                ),
                              ),
                            );
                          });
                    },
                    child: Image.network(
                      products[0]['pictures'][index],
                      fit: BoxFit.cover,
                    ),
                  );
                }),
          ),
          InfoAnnounce(
            title: 'Corsa',
            price: '50000',
            description:
                'carro muito bem conservado, unico dono e na garantia. Modelo 2002',
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return const Dialog(
                  insetPadding:
                      EdgeInsets.symmetric(vertical: 200, horizontal: 20),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Informações para contato',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Email:',
                              style: TextStyle(fontSize: 18),
                            ),
                            Text(
                              'wcaio41@gmail.com',
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Telefone:', style: TextStyle(fontSize: 18)),
                            Text(
                              '48988157712',
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Anunciante:',
                              style: TextStyle(fontSize: 18),
                            ),
                            Text(
                              'wcaio41',
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              });
        },
        child: const Icon(
          Icons.phone_android_rounded,
          color: Colors.white,
        ),
      ),
    );
  }
}
