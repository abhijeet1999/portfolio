import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
//import 'package:flutter/services.dart';
//import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),

  ));
  
}



  bool isLargeScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 800;
  }
  
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String assetPDFPath="";
  
  @override
  void initState(){

    super.initState();
    getFileFromAsset("assets/resume.pdf").then((f) {
      setState ( (){
        assetPDFPath = f.path;
        print('***************!!!!!!!!!!!!!!;');
        print(assetPDFPath);

      } );
    });
  }
  Future <File> getFileFromAsset(String asset) async{
    try {
      var data = await rootBundle.load(asset);
      var bytes = data.buffer.asUint8List();
      var dir =await getApplicationDocumentsDirectory();
      File file = File("${dir.path}/resume.pdf");
      print(file);
      File assetFile = await file.writeAsBytes(bytes);
      return assetFile;
      
    } catch (e) {
      throw Exception("error in opening url");
    }

  }

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
                onPressed: () {
                  if (assetPDFPath != null){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>PdfViewPage(path:assetPDFPath)) );
                  }
                },
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
            ),
            
            
            
              ],
            ),
          ),
       

        ],
        
      ),
     
      
      
    );
  }
}
class PdfViewPage extends StatefulWidget {
  final String path;

  const PdfViewPage({Key key, this.path}) : super(key: key);
  @override
  _State createState() => _State();
}

class _State extends State< PdfViewPage > {

  int _totalPages=0;
  int _currentPage=0;
  bool pdfReady = false;
  PDFViewController _pdfViewController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        PDFView(
          filePath: widget.path,
          autoSpacing: true,
          enableSwipe: true,
          pageSnap: true,
          swipeHorizontal: true,
          onError: (e){
            print(e);
          },
          onRender: (_pages){
           setState(() {
              _totalPages=_pages;
            pdfReady =true;
             
           });


          },
          onViewCreated: (PDFViewController vc){
            _pdfViewController = vc;
          },
          onPageChanged: (int page, int total){
            setState(() {
              
            });
          },
        ),
        !pdfReady?Center(child:CircularProgressIndicator(),):Offstage()



      ],

      ),
     floatingActionButton: Row(
       mainAxisAlignment: MainAxisAlignment.end,
       children: <Widget>[
         _currentPage>0?FloatingActionButton.extended(
           backgroundColor: Colors.red,
           label: Text("Go to ${_currentPage-1}"),
           onPressed: (){
             _currentPage -=1;
             _pdfViewController.setPage(_currentPage);
           }, 
           ):Offstage(),
           _currentPage<_totalPages?FloatingActionButton.extended(
           backgroundColor: Colors.green,
           label: Text("Go to ${_currentPage+1}"),
           onPressed: (){
             _currentPage +=1;
             _pdfViewController.setPage(_currentPage);
           }, 
           ):Offstage()

     ],), 
    );
  }
}