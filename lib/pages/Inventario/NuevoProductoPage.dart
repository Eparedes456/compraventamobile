import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class NuevoProductoPage extends StatelessWidget {
  const NuevoProductoPage({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text('Agregar producto'),
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 10,),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))
                ),
                child: Column(
                    children: [
                      SizedBox(height: 15,),
                      Container(
                        height: 140,
                        width: double.infinity,
                        //color: Colors.black,
                        child: Padding(
                          padding:  EdgeInsets.only(left: 12,right: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 130,
                                width: MediaQuery.of(context).size.width*1/2,
                                decoration: BoxDecoration(
                                  color: Colors.black54,
                                  borderRadius: BorderRadius.circular(15)
                                ),
                                child: Center(
                                  child: Icon(Icons.camera_alt,color: Colors.white,size: 60,),
                                ),
                              ),
                              SizedBox(width: 12,),
                              Expanded(
                                child: Column(
                                  children: [
                                    Text('Codigo de barras'),
                                    GestureDetector(
                                      onTap: ()async{
                                        //print('hola');
                                        final barcode = await FlutterBarcodeScanner.scanBarcode(
                                          "#ff6666",
                                          "Cancel",
                                          true, 
                                          ScanMode.BARCODE,
                                        );
                                        print(barcode); 
                                      },
                                      child: Container(
                                        height: 45,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          border: Border.all(color: Colors.grey),
                                          borderRadius: BorderRadius.circular(15)
                                        ),
                                        child: Center(
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Text('Escanea aqui'),
                                              Icon(Icons.qr_code_scanner_rounded)
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),

                                    SizedBox(height: 12,),
                                    Text('Cantidad disponible'),
                                    Container(
                                      height: 45,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Expanded(
                                            child: Container(
                                              alignment: Alignment.center,
                                              height: 40,
                                              decoration: BoxDecoration(
                                                border: Border.all()
                                              ),
                                              child: Center(child: Icon(Icons.minimize))
                                            ),
                                          ),
                                          Expanded(
                                            child: Container(
                                              height: 40,
                                              decoration: BoxDecoration(
                                                border: Border.all()
                                              ),
                                              child: Center(child: Text('2'))
                                            ),
                                          ),
                                          Expanded(
                                            child: Container(
                                              height: 40,
                                              decoration: BoxDecoration(
                                                border: Border.all()
                                              ),
                                              child: Center(child: Icon(Icons.add))
                                            ),
                                          )
                                        ],
                                      ),
                                    )

                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: ListView(
                          children: [
                            SizedBox(height: 30,),
                            Padding(
                                    padding:  EdgeInsets.only(left: 10,right: 10,top: 10),
                                    child: Container(
                                      height: 80,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.grey[300]
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:  EdgeInsets.only(left: 8,top: 8),
                                            child: Text('Nombre'),
                                          ),
                                          Padding(
                                            padding:  EdgeInsets.only(left: 8,right: 8),
                                            child: TextField(
                                              decoration: InputDecoration(
                                                border: InputBorder.none,
                                                hintText: 'Producto (obligatorio)',
                                                icon: Icon(Icons.description)
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                            Padding(
                                    padding:  EdgeInsets.only(left: 10,right: 10,top: 10),
                                    child: Container(
                                      height: 80,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.grey[300]
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:  EdgeInsets.only(left: 8,top: 8),
                                            child: Text('Precio unitario'),
                                          ),
                                          Padding(
                                            padding:  EdgeInsets.only(left: 8,right: 8),
                                            child: TextField(
                                              decoration: InputDecoration(
                                                border: InputBorder.none,
                                                hintText: 'Valor de venta (obligatorio)',
                                                icon: Icon(Icons.local_atm)
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),

                            Padding(
                                    padding:  EdgeInsets.only(left: 10,right: 10,top: 10),
                                    child: Container(
                                      height: 80,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.grey[300]
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:  EdgeInsets.only(left: 8,top: 8),
                                            child: Text('Costo unitario'),
                                          ),
                                          Padding(
                                            padding:  EdgeInsets.only(left: 8,right: 8),
                                            child: TextField(
                                              decoration: InputDecoration(
                                                border: InputBorder.none,
                                                hintText: 'Valor de compra (obligatorio)',
                                                icon: Icon(Icons.local_atm)
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                            Padding(
                                    padding:  EdgeInsets.only(left: 10,right: 10,top: 10),
                                    child: Container(
                                      height: 80,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.grey[300]
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:  EdgeInsets.only(left: 8,top: 8),
                                            child: Text('Categoría'),
                                          ),
                                          Padding(
                                            padding:  EdgeInsets.only(left: 8,right: 8),
                                            child: Row(
                                              children: [
                                                Icon(Icons.arrow_drop_down,size: 50,),
                                                SizedBox(width: 8,),
                                                Expanded(
                                                  child: TextField(
                                                    readOnly: true,
                                                    decoration: InputDecoration(
                                                      border: InputBorder.none,
                                                      hintText: 'Categoria',
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 12,),
                      Padding(
                        padding: const EdgeInsets.only(left: 30,right:30),
                        child: Container(
                          color: Colors.blue,
                          width: double.infinity,
                          child: MaterialButton(
                            onPressed: (){},
                            child: Text('Crear producto'),
                          ),
                        ),
                      ),
                      SizedBox(height: 12,)
                          ],
                        ),
                      ),
                      
                      
                    ],
                  ),
                
                 
              ),
            )

          ],
        ),
      ),
      
      
    );
  }
}