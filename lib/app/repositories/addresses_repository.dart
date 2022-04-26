import 'package:projetoe/app/core/database/connection.dart';
import 'package:projetoe/app/models/address_model.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_maps_webservice/places.dart';


class AdressesRepository {
  Future<List<AddressModel>> findAll() async { //Busca os endereços
    final conn = await Connection().instance; //faz a conexão com o banco
    final result = await conn.rawQuery('select * from address'); //faz o select na tabela
    return result.map((e) => AddressModel.fromMap(e)).toList(); //retorna em um obj lista o resultado, já sendo convertido
    // isso foi feito no address_model (fromMap)
  }

  Future<bool> hasAddress() async { 
    final conn = await Connection().instance;
    final result = await conn.rawQuery('select * from address');
    return result.isNotEmpty;
  }

  Future<void> saveAddress(AddressModel model) async { //Salva o endereço
    final conn = await Connection().instance;
    await conn.rawInsert('insert into address values(?, ?, ?, ?, ?)', [
      null, 
      model.address, 
      model.latitude, 
      model.longitude, 
      model.complemento
    ]);
  }

  Future<List<Prediction>> findAddressByGooglePlaces(String address) async {
    final places = GoogleMapsPlaces(apiKey: DotEnv().env['googleApiKey']);
    var response = await places.autocomplete(
      address,
      language: 'pt',
    );

    return response.predictions;
  }

  Future<PlacesDetailsResponse> findGooglePlacesDetail(String placeId) async {
    final places = GoogleMapsPlaces(apiKey: DotEnv().env['googleApiKey']);
    return await places.getDetailsByPlaceId(placeId);
  }

  Future<void> clearDatabase() async { //Limpa os endereços cadastrados após logout 
     final conn = await Connection().instance;
     await conn.rawDelete('delete from address');
  }
}
