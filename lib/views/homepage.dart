import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../controller/data_controller.dart';



class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
   final vcvcvcv = Get.put(Datacontroller());
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
           title: Text("get X Api")
       ),
       body: Container(
         height: double.infinity,
         width: double.infinity,
         child: Obx((){
           return vcvcvcv.loading.isTrue? Center(child: CircularProgressIndicator())
           : ListView.builder(
           //     itemCount: vcvcvcv.ddddddddddddddddddddddd.length,
           //     itemBuilder: (c,i){
           //       final data = vcvcvcv.ddddddddddddddddddddddd[i];
           //       return Center (child: Text(data.id.toString()));
           //
           // }

             itemCount: vcvcvcv.ddddddddddddddddddddddd.length,
             itemBuilder: (context, index) {
               final data = vcvcvcv.ddddddddddddddddddddddd[index];
               // final rating = data.rating ?? {}; // Handle null safety for rating
               final rating = data.rating; // Assume rating is of type Rating
               // final rating = data.rating as Map<String, dynamic>?; // Cast to Map<String, dynamic>?
               // final rate = rating?['rate'] ?? 0.0;
               final rate = rating?.rate ?? 0.0;
               final count = rating?.count ?? 0;
               // final count = rating?['count'] ?? 0;
               final imageUrl = data.image ?? ''; // Handle null safety for image URL
               return Card(
                 margin: EdgeInsets.all(8.0),
                 child: Padding(
                   padding: EdgeInsets.all(16.0),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text('ID: ${data.id}', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                       SizedBox(height: 8.0),
                       // Text('Title: ${data.title}', style: TextStyle(fontSize: 16))
                       Text('Title: ${data.title ?? 'N/A'}', style: TextStyle(fontSize: 19)),
                       SizedBox(height: 8.0),
                       // Text('Price: \$${data.price}', style: TextStyle(fontSize: 16)),
                       Text('Price: \$${data.price ?? 'N/A'}', style: TextStyle(fontSize: 16)),
                       SizedBox(height: 8.0),
                       // Text('Description: ${data.description}', style: TextStyle(fontSize: 16)),
                       Text('Description: ${data.description ?? 'N/A'}', style: TextStyle(fontSize: 16)),
                       SizedBox(height: 8.0),
                       // Text('Category: ${data.category}', style: TextStyle(fontSize: 16)),
                       Text('Category: ${data.category ?? 'N/A'}', style: TextStyle(fontSize: 16)),

                       SizedBox(height: 8.0),

                       imageUrl.isNotEmpty
                           ? SizedBox(
                         height: 400, // Specify desired height
                         width: 200, // Specify desired width
                         child: Image.network(imageUrl, fit: BoxFit.cover),
                       )
                           : Container(),
                       SizedBox(height: 8.0),

                       // Text('Rating: ${data.rating.rate} (${data.rating.count} reviews)', style: TextStyle(fontSize: 16)),
                       Text('Rating: $rate ($count reviews)', style: TextStyle(fontSize: 16)),

                     ],
                   ),
                 ),
               );
             },
           );
         }
         ),
       ),




     );
   }
 }
