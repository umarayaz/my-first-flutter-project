import 'package:flutter/material.dart';

class dmc extends StatefulWidget {
  const dmc({Key? key}) : super(key: key);

  @override
  _dmcState createState() => _dmcState();
}

class _dmcState extends State<dmc> {
  late double engl,urdu,math,sci,obt,per;
  late String grade;
  GlobalKey<FormState> FormKey=GlobalKey();
  @override
  void initState() {
     engl=urdu=math=sci=obt=per=0;
    grade='';
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('DMC'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: FormKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                 TextFormField(
                 keyboardType: TextInputType.name,
                 decoration: InputDecoration(
                  hintText: 'Name',
                    labelText: 'Name',
                     border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(8.0),
                        )),
                   validator: (String?text){
                   return null;
                   }
                 ),
                const SizedBox(
                  height: 16,
                ),


                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        hintText: 'enter english marks',
                        labelText: 'enter english marks',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        )),
                    validator: (String?text){
                      if(text == null|| text.isEmpty){
                        return 'please provide english marks';
                      }
                      else{
                        engl = double.parse(text);

                        return null;
                      }
                    }
                  ),


                  const SizedBox(
                    height: 16,
                  ),


                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        hintText: 'enter  urdu marks',
                        labelText: 'enter urdu  marks',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        )),
                      validator: (String?text){
                        if(text == null|| text.isEmpty){
                          return 'please urdu english marks';
                        }
                        else{
                          urdu = double.parse(text);
                          return null;
                        }
                      }
                  ),

                  const SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        hintText: 'enter math marks',
                        labelText: 'enter math  marks',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        )),
                      validator: (String?text){
                        if(text == null|| text.isEmpty){
                          return 'please provide math marks';
                        }
                        else{
                          math = double.parse(text);

                          return null;
                        }
                      }
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        hintText: 'enter science marks',
                        labelText: 'enter science marks',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        )),
                      validator: (String?text){
                        if(text == null|| text.isEmpty){
                          return 'please provide science marks';
                        }
                        else{
                          sci = double.parse(text);

                          return null;
                        }
                      }

                  ),
                  SizedBox(height: 18,),
                  Row(
                    children: [
                      Expanded(child:
                      ElevatedButton(
                        child: Text('clear'),
                        onPressed: () {
                           FormKey.currentState!.reset();

                          setState(() {
                            obt=0;
                            per=0;
                            grade='';
                          });
                        },

                      ),
                      ),
                      SizedBox(width: 20),
                      Expanded(child:
                      ElevatedButton(
                        child: Text('calculate'),
                        onPressed: () {
                          if(FormKey.currentState!.validate()){
                        setState(() {
                          obt = engl+urdu+math+sci;
                          per=obt*100/400;
                          grade= calculateGrade(per);
                        });
                          }
                          else{
                           }
                        },

                      ),
                      ),


                    ],
                  ),
                  Text('obtain marks $obt',style: TextStyle(fontSize: 20),),
                  Text('percntage $per',style: TextStyle(fontSize: 20),),
                  Text('grade $grade',style: TextStyle(fontSize: 20),),

                ],
              ),
            ),
          ),
        ));

  }
  String calculateGrade(double per){
    if(per >= 80){
      return'A1';
    }
    else if(per >=70){
      return 'A';
    }else if(per >=50){
      return 'B';

    }else if(per >=40){
      return 'c';
    }
    else{
      return'Fails';
    }
  }
}
