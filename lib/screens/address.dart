
import 'package:flutter/material.dart';
import 'package:untitled2/models/address_model.dart';
import 'package:untitled2/services/address_service.dart';

class AddressWidget extends StatelessWidget {
  final AddressService addressService = AddressService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder(
        future: addressService.getCategory(),
        builder:
            (BuildContext context, AsyncSnapshot<List<Address>> snapshot) {
          if (snapshot.hasData) {
            List<Address> adress = snapshot.data;

            return ListView(
              children: adress
                  .map((Address address) => Row(children: [
                Text(address.id.toString() + address.name + address.region_id.toString()),
              ]
              )
              ).toList(),
            );
          }
        },
      ),
    );
  }
}
