import 'package:flutter/material.dart';

class Regestration extends StatefulWidget {
  const Regestration({super.key});

  @override
  State<Regestration> createState() => _RegestrationState();
}

class _RegestrationState extends State<Regestration> {
  String? gender;
   String selectedGender = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Contacts"),
          backgroundColor: Color.fromARGB(255, 33, 11, 75),
          actions: [
            Icon(Icons.search),
            SizedBox(width: 20),
            Icon(Icons.more_vert)
          ],
        ),
        body: 
        SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  margin: EdgeInsets.all(20),
                  height: 50,
                  child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person_2),
                          label: Text(
                            'Name',
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          ),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))))),
              Row(
                children: [
                  Container(
                      margin: EdgeInsets.only(
                        top: 10,
                        left: 20,
                      ),
                      height: 50,
                      width: 250,
                      child: TextField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.phone),
                              label: Text(
                                'Phone',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 15),
                              ),
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)))))),
                  Container(
                      margin: EdgeInsets.only(top: 10, left: 20, right: 20),
                      height: 50,
                      width: 190,
                      child: TextField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.location_city),
                              label: Text(
                                'Area',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 15),
                              ),
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)))))),
                ],
              ),
              Container(
                  margin: EdgeInsets.all(20),
                  height: 50,
                  child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.location_on),
                          label: Text(
                            'Address',
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          ),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))))),
              Container(
                  margin: EdgeInsets.all(20),
                  height: 50,
                  child: TextField(
                      decoration: InputDecoration(
                          //  prefixIcon: Icon(Icons.person_2),
                          label: Text(
                            'City',
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          ),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))))),
              Row(
                children: [
                  Container(
                      margin: EdgeInsets.only(
                        top: 10,
                        left: 20,
                      ),
                      height: 50,
                      width: 250,
                      child: TextField(
                          decoration: InputDecoration(
                              // prefixIcon: Icon(Icons.phone),
                              label: Text(
                                'state',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 15),
                              ),
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)))))),
                  Container(
                      margin: EdgeInsets.only(top: 10, left: 20, right: 20),
                      height: 50,
                      width: 190,
                      child: TextField(
                          decoration: InputDecoration(
                              // prefixIcon: Icon(Icons.location_city),
                              label: Text(
                                'Zip',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 15),
                              ),
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)))))),
                ],
              ),
              Container(
                  margin: EdgeInsets.all(20),
                  height: 50,
                  child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email),
                          label: Text(
                            'Email',
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          ),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))))),
              Container(
                  margin: EdgeInsets.all(20),
                  height: 50,
                  child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.cake),
                          suffixIcon: Icon(Icons.date_range),
                          label: Text(
                            'Birthday',
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          ),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))))),
              Container(
                child: RadioListTile(
                  title: Text("male"),
                  onChanged: (value) {
                    setState(() {
                      selectedGender = value.toString();
                    });
                  },
                  groupValue: selectedGender,
                  value: "Male",
                ),
              ),
              Container(
                child: RadioListTile(
                  title: Text("female"),
                  onChanged: (value) {
                    setState(() {
                      selectedGender = value.toString();
                    });
                  },
                  groupValue: selectedGender,
                  value: "female",
                ),
              ),
              Container(
                child: RadioListTile(
                  title: Text("Other"),
                  onChanged: (value) {
                    setState(() {
                      selectedGender = value.toString();
                    });
                  },
                  groupValue: selectedGender,
                  value: "Other",
                ),
              )
            ],
          ),
        ));
  }
}
