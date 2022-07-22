import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/global_controller.dart';
import '../commons/common_general_case_widget.dart';

class SelectedCountryWidget extends StatelessWidget {
  final GlobalController _globalController = Get.find();

  SelectedCountryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _buildCountriesDropdown(),
        CommonGeneralCaseWidget(),
        _buildButtonDetail(),
      ],
    );
  }

  Widget _buildCountriesDropdown() {
    return SizedBox(
      width: Get.width * 0.8,
      child: Obx(
        () => DropdownButton(
          hint: const Text("Choose Country"),
          value: _globalController.selectedCountries.value,
          elevation: 16,
          isExpanded: true,
          dropdownColor: Colors.black.withOpacity(0.6),
          autofocus: true,
          underline: Container(
            height: 2,
            color: Colors.black38,
          ),
          items: _globalController.countries.value
              .map(
                (val) => DropdownMenuItem(
                  value: val.iso3 == null ? "" : val.iso3.toString(),
                  child: Text(
                    val.name.toString(),
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              )
              .toList(),
          onChanged: (dynamic value) {
            if (value == "") {
              Get.snackbar("Error", "Data is empty");
            } else {
              _globalController.selectedCountries.value = value;
              print("New Value : ${_globalController.selectedCountries.value}");
            }
          },
        ),
      ),
    );
  }

  Widget _buildButtonDetail() {
    return Obx(
      () => Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.blue.withOpacity(0.2),
              blurRadius: 6.0,
              spreadRadius: 0.8,
            ),
          ],
        ),
        child: ElevatedButton(
          child: Text("See Detail"),
          style: ElevatedButton.styleFrom(
            onPrimary: Colors.lightBlueAccent,
            primary: Colors.lightBlueAccent.withOpacity(0.5),
            minimumSize: const Size(88, 36),
            padding: const EdgeInsets.symmetric(horizontal: 16),
            shape: RoundedRectangleBorder(
              side: const BorderSide(color: Colors.lightBlue),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          onPressed: _globalController.isSelectedCountrySuccess.value
              ? () {
                  Get.toNamed('/detail');
                }
              : null,
        ),
      ),
    );
  }
}
