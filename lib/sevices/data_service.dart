import 'package:http/http.dart' as http;
import '../models/data_model.dart';

class DataService{
  var urll = "https://fakestoreapi.com/products";
  Future<List<Datamodel1>?> getservice()async{
    var response = await http.get(Uri.parse(urll));
    if(response.statusCode==200){
      return datamodelFromJson1(response.body);
    }else{
      return null;
    }
  }
}