//*
//---------------------------------------------------------------tela2
class Tela2 extends StatefulWidget{
    const Tela2View({super.key});
    @override
    State<Tela2View> createState()=> _Tela2ViewState();
}
class _Tela2ViewState extends State<Tela2View>{
    @override
    Widget build (BuildContext context){
        return Scaffold(
            appBar: AppBar(
                title: Text('Sobre'),
            ),
            body: Center(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                        var formKey = GlobalKey<FormState>();
                        //Controladores dos comapos de texto
                        var txtValor5 = labelText();
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
                                                            controller: txtValor5,
                                                            style: TextStyle(fontSize: 32),
                                                            decoration: InputDecoration(
                                                            labelText: 'Este e um aplicativo para organizar sua lista de compras.
                                                                        Ele permite que o usuário crie sua lista de compras, nomear
                                                                        a lista, pesquise um item da lista, inclua um item na lista e
                                                                        quantidade do item, permite marcar item como comprado, remover
                                                                        item da lista e até mesmo, remover lista. O usuário deve clicar em salvar.',
                                                            border:OutlineInputBorder(),
                                                            ),
                                                        ),
                                                        SizedBox(height: 30),
                                                        OutlineInputButton(
                                                          onPressed: (){
                                                            setState((){
                                                              Navigator.pushNamed(
                                                                context,
                                                                  't3',
                                                              );
                                                            });
                                                          }
                                                        ),
                                                child: Text('Voltar'),
                                                SizedBox(height: 30),
                                                OutlineInputButton(
                                                  onPressed: (){
                                                    setState((){
                                                        Navigator.pushNamed(
                                                            context,
                                                            't4',
                                                        );
                                                    });
                                                }
                                               ),
                                               child: Text('Avançar'),
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
    }
}

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
//tela4
class Tela4 extends StatefulWidget{
    const Tela4View ({super.key});
    @override
    State<Tela4View> createState()=>_Tela4ViewState();
}
class _Tela4ViewState extends State<Tela4View>{
    @override
    Widget build(BuildContext context){
        return Scaffold(
            appBar: AppBar(
                body: Center(
                    child: Row(
                        MainAxisAligment: MainAxisAligment.Center,
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
                    SizedBox(height:20),
                        OutlinedButton(
                            onPressed(){
                                setState((){
                                    Navigator.pushNamed(
                                        context,
                                            't8',
                                    );
                                });
                            },
                        child: Text('Voltar'),
                    ),
                    SizedBox(height:20),
                        OutlinedButton(
                            onPressed(){
                                setState((){
                                    Navigator.pushNamed(
                                        context,
                                            't9',
                                    );
                                });
                            },
                            child: Text('Salvar e Fechar'),
                        ),
                )
            )
        )
    }
}
*/