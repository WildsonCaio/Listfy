import 'package:flutter/material.dart';
import 'package:listfy/components/InputText.dart';
import 'package:listfy/components/SelectImage.dart';
import 'package:listfy/data/CategoriesData.dart';
import 'package:dropdown_search/dropdown_search.dart';

class CreateAd extends StatefulWidget {
  const CreateAd({super.key});

  @override
  State<CreateAd> createState() => _CreateAdState();
}

class _CreateAdState extends State<CreateAd> {
  var imageController_1;
  var imageController_2;
  var imageController_3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Anunciar'),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SelectImage(
                    imageController: imageController_1,
                  ),
                  SelectImage(
                    imageController: imageController_2,
                  ),
                  SelectImage(
                    imageController: imageController_3,
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              InputText(
                label: 'Título',
              ),
              InputText(
                label: 'Descrição',
                height: 4,
              ),
              InputText(
                label: 'Preço',
              ),
              DropdownSearch(
                dropdownDecoratorProps: DropDownDecoratorProps(
                  dropdownSearchDecoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)),
                  ),
                ),
                items: categoriesData,
                popupProps: PopupProps.menu(),
              ),
              SizedBox(
                height: 10,
              ),
              InputText(
                label: 'Cidade',
              ),
              InputText(
                label: 'Email',
              ),
              InputText(
                label: 'Telefone',
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Criar Anúncio'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// Titulo 
// descrição 
// preço 
// cidade 
// categoria
// Email
// Telefone



