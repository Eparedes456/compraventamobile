import 'package:flutter/material.dart';

class PerfilPage extends StatelessWidget {
  const PerfilPage({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.store),
          onPressed: (){},
        ),
        elevation: 0,
        centerTitle: true,
        title: Text('Nombre del negocio'),
        actions: [
          IconButton(
            icon: Icon(Icons.help),
            onPressed: (){}
          )
        ],
        
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 10,),
              Center(
                child: Container(
                  height: 100,
                  //color: Colors.yellow,
                  child: Center(
                    child: Padding(
                      padding:  EdgeInsets.only(left: 30,right: 30),
                      child: Stack(
                        children: [
                          Container(
                            height: 80,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(40),
                                bottomLeft: Radius.circular(40),
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20)
                              )
                            ),
                          ),
                          CircleAvatar(
                            radius: 40,
                          )
                        ],
                      ),
                    ),
                  ),    
                ),
              ),
              SizedBox(height: 20,),
              
            ],
          ),
        ),
      ),
      
    );
  }
}