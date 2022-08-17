import 'package:flutter/material.dart';

class LivingRoom extends StatefulWidget {
  const LivingRoom({Key? key}) : super(key: key);

  @override
  State<LivingRoom> createState() => _LivingRoomState();
}

class _LivingRoomState extends State<LivingRoom> {
  bool _lights1 = false;
  bool _lights2 = false;
  bool _lights3 = false;
  bool _lights4 = false;
  bool _lights5 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        elevation: 0,
      ),
      extendBody: true,
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 4,
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40),
                      ),
                    ),
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const <Widget>[
                                  Text(
                                    'Living Room',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 28),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    '3 family members have access',
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.white),
                                  ),
                                ],
                              ),
                              Align(
                                  alignment: Alignment.topRight,
                                  child: Icon(Icons.settings_outlined,
                                      color: Colors.white)),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
                          child: Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Row(
                                children: [
                                  CircleAvatar(
                                      backgroundColor:
                                          Colors.white.withOpacity(0.3),
                                      radius: 25,
                                      child: Icon(
                                        Icons.thermostat,
                                        color: Colors.white,
                                        size: 30,
                                      )),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        '24\u00b0C',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                      Text(
                                        'TEMP',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 10),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 50,
                              ),
                              Row(
                                children: [
                                  CircleAvatar(
                                      backgroundColor:
                                          Colors.white.withOpacity(0.3),
                                      radius: 25,
                                      child: Icon(
                                        Icons.water_drop_outlined,
                                        color: Colors.white,
                                        size: 30,
                                      )),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        '50%',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                      Text(
                                        'HUMIDITY',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 10),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                  flex: 10,
                  child: SingleChildScrollView(
                    child: Container(
                      decoration: BoxDecoration(color: Colors.transparent),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 18, right: 18,),
                        child: Column(
                          children: [
                            Positioned(
                                top: MediaQuery.of(context).size.height * 0.25,
                                left: 20.0,
                                right: 20.0,
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  child: SwitchListTile(
                                    title: Text(
                                      'Lamp',
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                    subtitle: Text(
                                      '65% Brightness',
                                      style: TextStyle(fontSize: 10),
                                    ),
                                    secondary:
                                        Icon(Icons.light, color: Colors.orange),
                                    value: _lights1,
                                    onChanged: (newValue) =>
                                        setState(() => _lights1 = newValue),
                                    activeColor: Colors.orange,
                                  ),
                                )),
                            SizedBox(height: 8,),
                            Positioned(
                                top: MediaQuery.of(context).size.height * 0.37,
                                left: 20.0,
                                right: 20.0,
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  child: SwitchListTile(
                                    title: Text(
                                      'Television',
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                    subtitle: Text(
                                      '37% Volume',
                                      style: TextStyle(fontSize: 10),
                                    ),
                                    secondary:
                                        Icon(Icons.tv, color: Colors.orange),
                                    value: _lights2,
                                    onChanged: (newValue) =>
                                        setState(() => _lights2 = newValue),
                                    activeColor: Colors.orange,
                                  ),
                                )),
                            SizedBox(height: 8,),
                            Positioned(
                                top: MediaQuery.of(context).size.height * 0.49,
                                left: 20.0,
                                right: 20.0,
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  child: SwitchListTile(
                                    title: Text(
                                      'Air Conditioner',
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                    subtitle: Text(
                                      '24\u00b0C Temperature',
                                      style: TextStyle(fontSize: 10),
                                    ),
                                    secondary: Icon(Icons.air_outlined,
                                        color: Colors.orange),
                                    value: _lights3,
                                    onChanged: (newValue) =>
                                        setState(() => _lights3 = newValue),
                                    activeColor: Colors.orange,
                                  ),
                                )),
                            SizedBox(height: 8,),
                            Positioned(
                                top: MediaQuery.of(context).size.height * 0.61,
                                left: 20.0,
                                right: 20.0,
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  child: SwitchListTile(
                                    title: Text(
                                      'Fridge',
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                    subtitle: Text(
                                      '5\u00b0C Temperature',
                                      style: TextStyle(fontSize: 10),
                                    ),
                                    secondary: Icon(
                                      Icons.book,
                                      color: Colors.orange,
                                    ),
                                    value: _lights4,
                                    onChanged: (newValue) =>
                                        setState(() => _lights4 = newValue),
                                    activeColor: Colors.orange,
                                  ),
                                )),
                            SizedBox(height: 8,),
                            Positioned(
                                top: MediaQuery.of(context).size.height * 0.73,
                                left: 20.0,
                                right: 20.0,
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  child: SwitchListTile(
                                    title: Text(
                                      'CCTV Camera',
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                    subtitle: Text(
                                      'Left/Right:96.4 & Up/Down:84.2',
                                      style: TextStyle(fontSize: 10),
                                    ),
                                    secondary:
                                        Icon(Icons.camera, color: Colors.orange),
                                    value: _lights5,
                                    onChanged: (newValue) =>
                                        setState(() => _lights5 = newValue),
                                    activeColor: Colors.orange,
                                  ),
                                )),
                          ],
                        ),
                      ),
                    ),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
