import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),

  ));
  
}
  bool isLargeScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 800;
  }
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
         
          Padding(
            padding: const EdgeInsets.only(top:100.0),
            child: Text('Abhijeet C',
            style: TextStyle(fontSize:33),),
          ),
          Padding(
            padding: const EdgeInsets.only(top:30),
            child: CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('images/my.png',)
              // NetworkImage('https://raw.githubusercontent.com/abhijeet1999/abhijeet_resume/master/my.jpg',),
            ),
          ),
          SizedBox(height:30),
          Text('The Growing Developer',
          style: TextStyle(fontSize:28),
          ),
          SizedBox(height:30),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Row (
                  children: <Widget>[
                    Icon(Icons.mail_outline,size:18 ,),
                    SizedBox(width:10),
                    Text('abhijeetcherungottil@gmail.com',
                    style: TextStyle(fontSize:18),)


                ],
                ),
                SizedBox(height:10),
                Row (
                  children: <Widget>[
                    Icon(Icons.location_on,size:18 ),
                    SizedBox(width:10),
                    Text('Thrivandrum,Kerala',
                    style: TextStyle(fontSize:18),)


                ],
                ),
                SizedBox(height:10),
                Row (
                  children: <Widget>[
                    Icon(Icons.home,size:18 ),
                    SizedBox(width:10),
                    Text('Full-Time',
                    style: TextStyle(fontSize:18),)


                ],
                ),
                SizedBox(height:10),
                Row (
                  children: <Widget>[
                    Icon(Icons.account_circle,size:18 ),
                    SizedBox(width:10),
                    Text('Software Developer',
                    style: TextStyle(fontSize:18),)


                ],
                ),
                SizedBox(height:10),
                   Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                onPressed: () {},
                color: Colors.blue,
                child: Text(
                  'RESUME',
                  style: TextStyle(
                      fontFamily: ('Lato'),
                      color: Colors.white,
                      fontSize:
                      
                      isLargeScreen(context) ? 12.0 : 10.0,
                      fontWeight: FontWeight.bold),
                  softWrap: true,
                  textAlign: TextAlign.start,
                ),
              ),
            )
              ],
            ),
          ),
       

        ],
        
      ),
      
    );
  }
}