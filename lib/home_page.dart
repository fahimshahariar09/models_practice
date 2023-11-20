import 'package:flutter/material.dart';

import 'models/user_information_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  List <UserIformationModel> insList =[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Models"),
      ),
      body: Center(
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: ElevatedButton(
                  onPressed: (){
                    insList.add(UserIformationModel(name: "name", id: "id", roll: "roll", reg: "reg", sem: "sem", group: "group", dep: "dep"));
                    setState(() {
                    });
                  },
                  child: Text("add")),
            ),
            SizedBox(height: 10,),
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: insList.length,
                  itemBuilder: (_,index){
                    return Card(
                      color: Colors.green,
                      child: Column(
                        children: [
                          Text(insList[index].name),
                          Text(insList[index].reg),
                          Text(insList[index].group),
                          Text(insList[index].dep),
                          Text(insList[index].id),
                          Text(insList[index].roll),
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
