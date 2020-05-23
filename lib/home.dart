import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
//import 'package:hexcolor/hexcolor.dart';
import 'package:path_provider/path_provider.dart';
//import 'package:portfolio/yolo.dart';
//import 'package:hover_effect/hover_effect.dart';



bool isLargeScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 800;
  }
  
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String assetPDFPath="";
  
  int currentIndex=0;
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
    //const color = const Color(0x063640);
    return Scaffold(
      
     
      //backgroundColor:Hexcolor("#063640"),
      
         
      body:Container(
        

          decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/112.png"),
            colorFilter: new ColorFilter.mode(Colors.white.withOpacity(0.7), BlendMode.dstATop),
            
            fit: BoxFit.cover,
          ),
        ),
            
          
          
     
        child:Column(
        
         
        children: <Widget>[
       
        
          Padding(
            padding: const EdgeInsets.only(top:70.0),
            child: Text('ABHIJEET C',
            style: TextStyle(fontSize:50,color:Colors.white),),
          ),
          SizedBox(height:20),
           Expanded(
                        child: CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('images/my.png',)
                // NetworkImage('https://raw.githubusercontent.com/abhijeet1999/abhijeet_resume/master/my.jpg',),
              ),
           ),
         
          SizedBox(height:30),
        
          Text('The Growing Developer',
          style: TextStyle(fontSize:28,color:Colors.white),
          ),
            SizedBox(
              width: 150,
              height: 40,
                          child: Divider(
              color: Colors.teal.shade100,
          ),
            ),
          
          Expanded(
                      child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Row (
                    children: <Widget>[
                      SizedBox(width:10),
                      Icon(Icons.mail_outline,size:24 ,color:Colors.white,),
                      SizedBox(width:30),
                      Text('abhijeetcherungottil@gmail.com',
                      style: TextStyle(fontSize:20,color:Colors.white))


                  ],
                  ),
                  
                  SizedBox(height:10),
                  Row (
                    children: <Widget>[
                      SizedBox(width:10),
                      Icon(Icons.location_on,size:24,color:Colors.white ),
                      SizedBox(width:30),
                      Text('Thrivandrum,Kerala',
                      style: TextStyle(fontSize:20,color:Colors.white),)


                  ],
                  ),
                  SizedBox(height:10),
                
                  Row (
                    children: <Widget>[
                      SizedBox(width:10),
                      Icon(Icons.home,size:24 ,color:Colors.white),
                      SizedBox(width:30),
                      Text('Full-Time',
                      style: TextStyle(fontSize:20,color:Colors.white))


                  ],
                  ),
                  SizedBox(height:10),
                  Row (
                    children: <Widget>[
                      SizedBox(width:10),
                      Icon(Icons.account_circle,size:24 ,color:Colors.white),
                      SizedBox(width:30),
                      Text('Software Developer',
                      style: TextStyle(fontSize:20,color:Colors.white),)


                  ],
                  ),
                SizedBox(height:10),
                Expanded(
                                  child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: RaisedButton(
                    splashColor: Colors.grey,
                    
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
                ),
              //SizedBox(height:10),
                Expanded(
                                  child: Padding(
                  padding: const EdgeInsets.only(left:290.0),
                  child: FloatingActionButton(
                    splashColor: Colors.grey,
                    
                    backgroundColor: Colors.green,
                    child: Text("More"),
             onPressed: (){
              // Navigator.pop(context);
              Navigator.pushNamed(context, '/a');
             }, 
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
  //PDFViewController _pdfViewController;
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
            //_pdfViewController = vc;
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
       
           _currentPage<_totalPages?FloatingActionButton.extended(
           backgroundColor: Colors.green,
           label: Text("Go Back"),
           onPressed: (){
             Navigator.pop(context);
           }, 
           ):Offstage()

     ],), 
     
    );
  }
}


