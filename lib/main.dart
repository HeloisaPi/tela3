\\import 'package:flutter/material.dart';

// tela3
class tela3 extends StatefulWidget{
  const tela3View({super.key});

  @override
  State<tela3View> createstate() => _tela3ViewState();

}
class _tela3ViewState extends State<tela3View>{
  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Criar Lista de Compras'),
      ),
      body: Center(
        child: Row(
          MainAxisAlignment: MainAxisAlignment.center,
          children: [
            var formkey = GlobalKey<FormState>();

            //Controladores de campo de texto
            var txtValor8 = TextEditingController();
            var txtValor9 = labelText();
            var txtvalor10 = labelText();
            
            Widget build(BuildContext context){
              return Scaffold(
                body: Padding(
                  padding: EdgeInsets.fromLTRB(50,100,50,100),
                  child: Form(
                    key: FormKey,
                    child: Column(
                      children: [
                        SizedBox(height:30),

                        TextFormField(
                          controller: txtValor8,
                          style: TextStyle(frontSize32),
                          decoration:InputDecoration(
                          labelText: 'Nome da Lista: ',
                          border: OutlineInputBorder(),
                          ),
                          //validacao
                          validator(value){
                            if(value==null){
                              return 'Informe o nome da lista';
                            }else if (value.isEmpty){
                              return 'Informe o nome da lista';
                            }else if (double.TryParse(value) == null){
                              return 'Informe um nome valido';
                            }
                            return null;
                          }

                        ),
                        row(
                          children[
                            body: Column(
                              body: Column(
                                Padding(
                                  padding: const EdgeInsets.all(20),
                                  Text(
                                    'Lista:',
                                  ),
                                  Text(
                                    'Quantidade:',
                                  ),
                                )
                                

                              )
                            )
                          ]
                        )
                        SizedBox(Height:20),
                        OutlinedButton(
                          onPressed: (){
                            setState((){
                              Navigator.pushNamed(
                                context,
                                't5',
                              );
                            });
                          },
                          child: Text('Salvar'),
                        ),
                        SizedBox(Height:20),
                        OutlinedButton(
                          onPressed: (){
                            setState((){
                              Navigator.pushNamed(
                                context,
                                't6',
                              );
                            });
                          },
                          child: Text('Voltar'),
                        ),
                        SizedBox(Height:20),
                        OutlinedButton(
                          onPressed: (){
                            setState((){
                              Navigator.pushNamed(
                                context,
                                't7',
                              );
                            });
                          },
                          child: Text('Avançar'),
                        ),
                      ]
                      
                    )
                  )
                )
              )
            }

          ],
        )
      )
    )
  }
}

