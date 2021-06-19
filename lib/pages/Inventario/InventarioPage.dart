import 'package:appventas/pages/Inventario/NuevoProductoPage.dart';
import 'package:flutter/material.dart';
class InventarioPage extends StatelessWidget {
  const InventarioPage({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Column(
          children: [
            Text('Nombre del negocio'),
            Text('Propietario',style: TextStyle(fontSize: 13),)
          ],
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding:  EdgeInsets.only(left: 12,right: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    //height: 50,
                    width: MediaQuery.of(context).size.width * 0.45,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Padding(
                      padding:  EdgeInsets.only(top: 16,bottom: 16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('Total de productos'),
                          SizedBox(height: 8,),
                          Text('25',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                  ),
                  Container(
                    //height: 50,
                    width: MediaQuery.of(context).size.width * 0.45,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Padding(
                      padding:  EdgeInsets.only(top: 16,bottom: 16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('Costo invertido'),
                          SizedBox(height: 8,),
                          Text('S/100000.00',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12,),

            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey[200]
                ),
               child: Column(
                 children: [
                   Container(
                     //height: 40,
                     
                     child: Padding(
                       padding:  EdgeInsets.only(top: 8,right: 8,left: 8),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Expanded(
                             child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Buscar productos ..',
                                  prefixIcon: Icon(Icons.search),
                                  border: InputBorder.none
                                ),
                              ),
                             ),
                           ),
                           Icon(Icons.download_rounded,size: 40,)
                         ],
                       ),
                     ),
                   ),
                  SizedBox(height:12),

                  Container(
                    height: 55,
                    
                    //color: Colors.black,
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.blueGrey,
                          child: Center(
                            child:Icon(Icons.edit,color:Colors.white)
                          ),
                        ),
                        Expanded(
                          child: Container(
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 8,
                              itemBuilder: (context,i){
                                return Padding(
                                  padding:  EdgeInsets.only(left: 8,right:8),
                                  child: Container(
                                    height: 50,
                                    width: 100,
                                    color: Colors.blue,
                                    child: Center(
                                      child: Padding(
                                        padding:  EdgeInsets.only(left: 8,right: 8),
                                        child: Text(
                                          "Categoria $i",
                                          overflow: TextOverflow.ellipsis,
                                          style:TextStyle(
                                            color:Colors.white,
                                          ) 
                                        ),
                                      ),
                                    ),
                                  ),
                                );

                              }
                            ),
                          ),
                        )

                      ],
                    ),
                  ),
                  SizedBox(height:12),
                  Expanded(
                    child: Container(
                      child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: 4,
                        itemBuilder: (context,i){
                          return Card(
                            child: Padding(
                              padding: EdgeInsets.only(top:8,bottom: 8,left: 12,right: 12),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 90,
                                    width: 90,
                                    color: Colors.black,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text('nombre producto'),
                                      Text('12 disponible'),
                                      Text('S/120.00')
                                    ],
                                  )

                                ],
                              ),
                            ),
                          );
                        },
                      )
                    ),
                  )

                 ],
               ),
              )
            )
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (BuildContext context) => NuevoProductoPage()));
          
        },
        icon: Icon(Icons.add),
        label: Text('Crear producto'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      
      
    );
  }
}