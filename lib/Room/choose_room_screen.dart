import 'package:aug_ui/Room/living_room_screen.dart';
import 'package:flutter/material.dart';


// ignore: camel_case_types
class Choose_my_Room extends StatelessWidget {
  const Choose_my_Room({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: const Choose_Room(title: 'Flutter Demo Home Page'),
    );
  }
}

// ignore: camel_case_types
class Choose_Room extends StatefulWidget {
  const Choose_Room({Key? key, required this.title}) : super(key: key);
  final String title;


  @override
  State<Choose_Room> createState() => _Choose_RoomState();
}

// ignore: camel_case_types
class _Choose_RoomState extends State<Choose_Room> {

  bool _lights1 = false;
  bool _lights2 = false;
  bool _lights3 = false;
  bool _lights4 = false;
  bool _lights5 = false;
  bool _lights6 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.3, 1],
                  colors: [Colors.orange, Colors.yellow],
                  tileMode: TileMode.repeated,
                )),
            child: Padding(
              padding: const EdgeInsets.all(40),
              child: Align(
                alignment: Alignment.topLeft,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    CircleAvatar(
                      radius: 15,
                      backgroundImage: AssetImage('assets/google.jpg'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Hi Tanisha',
                      style: TextStyle(
                        fontFamily: 'Pacifico',
                        fontSize: 20.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Welcome to Home',
                      style: TextStyle(
                        fontFamily: 'BubblegumSans',
                        fontSize: 10.0,
                        color: Colors.white70,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.0),
                                  color: Colors.white,
                                ),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => LivingRoom(),
                                      ),
                                    );
                                  },
                                  child: SingleChildScrollView(
                                    child: Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          //SizedBox(height: 20,),
                                          Text(
                                            'Living Room',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            '3 family members have access',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 10),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Text('4 Devices',
                                              style: TextStyle(
                                                  color: Colors.orange,
                                                  fontSize: 10)),

                                          /*Container(
                                            padding: EdgeInsets.fromLTRB(0, 0, 70, 0),
                                            child:*/
                                          Switch(
                                            // dense: true,
                                            /*   controlAffinity:
                                              ListTileControlAffinity.leading,*/
                                            // title: const Text('4 devices', style: TextStyle(color: Colors.deepOrangeAccent, fontSize: 10),),
                                            value: _lights1,
                                            onChanged: (newValue) => setState(
                                                    () => _lights1 = newValue),
                                            activeColor: Colors.orange,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.0),
                                  color: Colors.white,
                                ),
                                child: SingleChildScrollView(
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        //SizedBox(height: 20,),
                                        Text(
                                          'Bed Room',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          '3 family members have access',
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 10),
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Text('5 Devices',
                                            style: TextStyle(
                                                color: Colors.orange,
                                                fontSize: 10)),
                                        Switch(
                                          // dense: true,
                                          /* controlAffinity:
                                              ListTileControlAffinity.leading,*/
                                          // title: const Text('4 devices', style: TextStyle(color: Colors.deepOrangeAccent, fontSize: 10),),
                                          value: _lights2,
                                          onChanged: (newValue) =>
                                              setState(() => _lights2 = newValue),
                                          activeColor: Colors.orange,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    //SizedBox(height: 10,),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.0),
                                  color: Colors.white,
                                ),
                                child: SingleChildScrollView(
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        //SizedBox(height: 20,),
                                        Text(
                                          'Guest Room',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          '2 family members have access',
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 10),
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Text('3 Devices',
                                            style: TextStyle(
                                                color: Colors.orange,
                                                fontSize: 10)),
                                        Switch(
                                          // dense: true,
                                          /*controlAffinity:
                                              ListTileControlAffinity.leading,*/
                                          // title: const Text('4 devices', style: TextStyle(color: Colors.deepOrangeAccent, fontSize: 10),),
                                          value: _lights3,
                                          onChanged: (newValue) =>
                                              setState(() => _lights3 = newValue),
                                          activeColor: Colors.orange,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.0),
                                  color: Colors.white,
                                ),
                                child: SingleChildScrollView(
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        //SizedBox(height: 20,),
                                        Text(
                                          'Kitchen',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          '2 family members have access',
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 10),
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Text('4 Devices',
                                            style: TextStyle(
                                                color: Colors.orange,
                                                fontSize: 10)),
                                        Switch(
                                          // dense: true,
                                          /*  controlAffinity:
                                              ListTileControlAffinity.leading,*/
                                          // title: const Text('4 devices', style: TextStyle(color: Colors.deepOrangeAccent, fontSize: 10),),
                                          value: _lights4,
                                          onChanged: (newValue) =>
                                              setState(() => _lights4 = newValue),
                                          activeColor: Colors.orange,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    //SizedBox(height: 10,),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 15, 0, 40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.0),
                                  color: Colors.white,
                                ),
                                child: SingleChildScrollView(
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        //SizedBox(height: 20,),
                                        Text(
                                          'Kids Room',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          '1 family members have access',
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 10),
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Text('4 Devices',
                                            style: TextStyle(
                                                color: Colors.orange,
                                                fontSize: 10)),
                                        Switch(
                                          // dense: true,
                                          /*controlAffinity:
                                              ListTileControlAffinity.leading,*/
                                          // title: const Text('4 devices', style: TextStyle(color: Colors.deepOrangeAccent, fontSize: 10),),
                                          value: _lights5,
                                          onChanged: (newValue) =>
                                              setState(() => _lights5 = newValue),
                                          activeColor: Colors.orange,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.0),
                                  color: Colors.white,
                                ),
                                child: SingleChildScrollView(
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        //SizedBox(height: 20,),
                                        Text(
                                          'Balcony',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          '4 family members have access',
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 10),
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Text('2 Devices',
                                            style: TextStyle(
                                                color: Colors.orange,
                                                fontSize: 10)),
                                        Switch(
                                          // dense: true,
                                          /* controlAffinity:
                                              ListTileControlAffinity.leading,*/
                                          // title: const Text('4 devices', style: TextStyle(color: Colors.deepOrangeAccent, fontSize: 10),),
                                          value: _lights6,
                                          onChanged: (newValue) =>
                                              setState(() => _lights6 = newValue),
                                          activeColor: Colors.orange,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          boxShadow: [
            BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10)
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: BottomAppBar(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: IconButton(
                      icon: const Icon(Icons.home_outlined, color: Colors.grey),
                      onPressed: () {},
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      icon: const Icon(Icons.access_time, color: Colors.grey),
                      onPressed: () {},
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      icon: Container(
                          width: 80,
                          height: 80,
                          decoration: const BoxDecoration(
                              color: Colors.deepOrangeAccent,
                              shape: BoxShape.circle),
                          child: const Icon(Icons.add, color: Colors.white)),
                      onPressed: () {},
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      icon: const Icon(Icons.insert_chart, color: Colors.grey),
                      onPressed: () {},
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      icon: const Icon(Icons.settings, color: Colors.grey),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}