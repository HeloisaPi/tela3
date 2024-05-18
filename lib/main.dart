// ignore_for_file: prefer_const_constructors
//testeComit

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login',
      //
      // Rotas de Navegação
      initialRoute: 't1',
      routes: {
        't1': (context) => LoginView(),
        't2': (context) => Tela2View(),
        /*'t3': (context) => tela3View(),
        't4': (context) => Tela4View(),*/
      },
    );
  }
}
//------------------------------------------------------------------

class LoginView extends StatefulWidget {
  const LoginView({super.key});
  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  var formKey = GlobalKey<FormState>();

  var txtValor1 = TextEditingController();
  var txtValor2 = TextEditingController();
  var txtValor3 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(50, 100, 50, 100),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              SizedBox(height: 30),
              TextFormField(
                controller: txtValor1,
                style: TextStyle(fontSize: 32),
                decoration: InputDecoration(
                  labelText: 'Nome',
                  border: OutlineInputBorder(),
                ),
                //Validacao
                validator: (value) {
                  if (value == null) {
                    return 'Informe um nome';
                  } else if (value.isEmpty) {
                    return 'Informe um nome';
                  }
                  return null;
                },
              ),
              SizedBox(height: 30),
              TextFormField(
                controller: txtValor2,
                style: TextStyle(fontSize: 32),
                decoration: InputDecoration(
                  labelText: 'E-mail',
                  border: OutlineInputBorder(),
                ),
                //Validacao
                validator: (value) {
                  if (value == null) {
                    return 'Informe um e-mail';
                  } else if (value.isEmpty) {
                    return 'Informe um e-mail';
                  }
                  return null;
                },
              ),
              SizedBox(height: 30),
              TextFormField(
                controller: txtValor3,
                style: TextStyle(fontSize: 32),
                decoration: InputDecoration(
                  labelText: 'Senha',
                  border: OutlineInputBorder(),
                ),
                //Validacao
                validator: (value) {
                  if (value == null) {
                    return 'Informe uma senha';
                  } else if (value.isEmpty) {
                    return 'Informe uma senha';
                  }
                  return null;
                },
              ),
              SizedBox(height: 30),
              OutlinedButton(
                onPressed: () {},
                child: Text('entrar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//-------------------------------------------------------

class Tela2View extends StatefulWidget {
  const Tela2View({super.key});
  @override
  State<Tela2View> createState() => _Tela2ViewState();
}

class _Tela2ViewState extends State<Tela2View> {
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sobre'),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(50, 100, 50, 100),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              SizedBox(height: 30),
              Text(
                'Este e um aplicativo para organizar sua lista de compras. Ele permite que o usuário crie sua lista de compras, nomear a lista, pesquise um item da lista, inclua um item na lista e quantidade do item, permite marcar item como comprado, remover  item da lista e até mesmo, remover lista. O usuário deve clicar em salvar.',
              ),
              SizedBox(height: 30),
              OutlinedButton(
                onPressed: () {},
                child: Text('Voltar'),
              ),
              SizedBox(height: 30),
              OutlinedButton(
                onPressed: () {},
                child: Text('Avançar'),
              )
            ],
          ),
        ),
      ),
    );
  }
}


    /*
    //tela3
    class tela3View extends StatefulWidget{
      const tela3View({super.key});

      @override
    State<tela3View> createstate() => _tela3ViewState();

}


class _tela3ViewState extends State<tela3View>{
  var formkey = GlobalKey<FormState>();

            //Controladores de campo de texto
            var txtValor8 = TextEditingController();
            var txtValor9 = labelText();
            var txtvalor10 = labelText();
  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Criar Lista de Compras'),
      ),
      body: Padding(
        padding:EdgeInsets.fromLTRB(50,100,50,100),
        child: Form(
          Key: formkey(
            child: Column(
          children: [
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
                        SizedBox(height: 30),
                          OutlinedButton(
                          onPressed: () {},
                          child: Text('Salvar'),
                        ),
                        SizedBox(height: 30),
                          OutlinedButton(
                          onPressed: () {},
                          child: Text('Voltar'),
                          ),
                        SizedBox(height: 30),
                          OutlinedButton(
                          onPressed: () {},
                          child: Text('Avançar'),
                        ),
                      ]
                    )
                  )
                )
              )
            }
          ]
        )
      )
    )
      )
    )
  }                  
                            };
                          
//tela4
class Tela4 extends StatefulWidget{
    const Tela4View ({super.key});
    @override
    State<Tela4View> createState() => _Tela4ViewState();
}
class _Tela4ViewState extends State<Tela4View>{
    @override
    Widget build(BuildContext context){
        return Scaffold(
            appBar: AppBar(
                body: Center(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:[
                            var formKey = GlobalKey<FormState>();
                            //Controladores de campo de texto
                            var txtValor11 = labelText();
                            var txtValor12 = labelText();
                            var txtValor13 = labelText();
                            var txtValor14 = labelText();
                            Widget build(BuildContext context){
                            return Scaffold(
                                body: Padding(
                                    padding: EdgeInsets.fromLTRB(50,100,50,100),
                                        child: Form(
                                            key: FormKey,
                                                child: Column(
                                                    children:[
                                                        SizedBox(height:30),
                                                        TextFormField(
                                                            controller: txtValor11,
                                                            style: TextStyle(fontSize: 32),
                                                            decoration: InputDecoration(
                                                            labelText: 'Pesquisar Item',
                                                            border:OutlineInputBorder(),
                                                            ),
                                                           
                                                            controller: txtValor12,
                                                            style: TextStyle(fontSize: 32),
                                                            decoration: InputDecoration(
                                                            labelText: 'Marcar Item como Comprado',
                                                            border:OutlineInputBorder(),
                                                            ),
                                                            controller: txtValor13,
                                                            style: TextStyle(fontSize: 32),
                                                            decoration: InputDecoration(
                                                            labelText: 'Remover Lista',
                                                            border:OutlineInputBorder(),
                                                            ),
                                                            controller: txtValor14,
                                                            style: TextStyle(fontSize: 32),
                                                            decoration: InputDecoration(
                                                            labelText: 'Remover Item da Lista',
                                                            border:OutlineInputBorder(),
                                                            ),
                                                        ),
                                                    ]
                                                )
                                        )
                                )
                            )
                            }
                        ]
                    )
                    SizedBox(height: 30),
                    OutlinedButton(
                    onPressed: () {},
                    child: Text('Voltar'),
                    ),
                    SizedBox(height: 30),
                    OutlinedButton(
                    onPressed: () {},
                    child: Text('Salvar e Fechar'),
                    ),
                )
            )
        )
    }
}*/