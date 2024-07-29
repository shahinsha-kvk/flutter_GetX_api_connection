import 'package:get/get.dart';
import 'package:get_x/models/data_model.dart';

import '../sevices/data_service.dart';

class Datacontroller extends GetxController{
  var ddddddddddddddddddddddd = <Datamodel1>[].obs;
  var loading = true.obs;

  getdata()async{
    try{
      loading.value = true;
      var data = await DataService().getservice();
      if(data!= null){
        ddddddddddddddddddddddd.value = data;
        loading.value = false;
      }
    }catch(e){
      Get.snackbar("title", "$e");
      loading.value = false;
    }
  }


  @override
  void onInit() {
    getdata();
    super.onInit();
  }
}