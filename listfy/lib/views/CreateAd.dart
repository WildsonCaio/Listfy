import 'package:flutter/material.dart';
import 'package:listfy/components/InputText.dart';
import 'package:listfy/components/SelectImage.dart';
import 'package:listfy/data/CategoriesData.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:listfy/services/CreateAdService.dart';

class CreateAd extends StatefulWidget {
  const CreateAd({super.key});

  @override
  State<CreateAd> createState() => _CreateAdState();
}

class _CreateAdState extends State<CreateAd> {
  var imageController_1;
  var imageController_2;
  var imageController_3;

  var titleController = '';
  var categoryController = '';
  var priceController = '';

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
                    updateImage: (value) {
                      setState(() {
                        imageController_1 = value;
                      });
                    },
                  ),
                  SelectImage(
                    imageController: imageController_2,
                    updateImage: (value) {
                      setState(() {
                        imageController_2 = value;
                      });
                    },
                  ),
                  SelectImage(
                    imageController: imageController_3,
                    updateImage: (value) {
                      setState(() {
                        imageController_3 = value;
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              InputText(
                updateController: (value) {
                  setState(() {
                    titleController = value;
                  });
                },
                inputController: titleController,
                label: 'Título',
              ),
              InputText(
                label: 'Descrição',
                height: 4,
              ),
              InputText(
                inputController: priceController,
                label: 'Preço',
              ),
              DropdownSearch(
                onChanged: (value) {
                  categoryController = value;
                },
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
                  onPressed: () {
                    createadService(titleController);
                  },
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
