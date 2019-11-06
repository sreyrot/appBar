import 'package:flutter/material.dart';

void main() => runApp(Learning());
class Learning extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
       debugShowCheckedModeBanner:false,
       home: DefaultTabController(
          length: 4,
          child: Scaffold(
         backgroundColor: Colors.pink,
         appBar: AppBar(
           title: Text("Learning Mobile"),
           centerTitle: true,
           backgroundColor: Colors.green[400],
           
           actions: <Widget>[
             Container(
               margin: EdgeInsets.only(right: 20.0, left: 20.0),
               child: Icon(Icons.group),
             ),
             Container(
               margin: EdgeInsets.only(right: 20.0),
               child: Icon(Icons.send),
             ),
             Container(
               margin: EdgeInsets.only(right: 20.0),
               child: Icon(Icons.search),
             )
           ],
           bottom: TabBar(
             tabs: <Widget>[
               Tab(
                 child: Icon(Icons.favorite),
               ),
               Tab(
                 child: Icon(Icons.share),
               ),
               Tab(
                 child: Icon(Icons.phone),
               ),
               Tab(
                 child: Icon(Icons.shopping_cart),
               )
             ],
           ),
         ),
         drawer: Drawer(
           child: ListView(
             children: <Widget>[
               DrawerHeader(
                 child: Center(
                   child: CircleAvatar(
                     radius: 60.0,
                     backgroundImage: NetworkImage("https://i.etsystatic.com/11605706/r/il/ada007/1200734318/il_794xN.1200734318_8oqo.jpg"),
                   ),
                 ),
                 decoration: BoxDecoration(
                   image: DecorationImage(
                     fit: BoxFit.cover,
                     image: NetworkImage("https://cdn-a.william-reed.com/var/wrbm_gb_food_pharma/storage/images/publications/cosmetics/cosmeticsdesign-asia.com/headlines/formulation-science/natural-and-organic-beauty-one-of-the-key-drivers-of-indonesia-s-personal-care-market/9440813-1-eng-GB/Natural-and-organic-beauty-one-of-the-key-drivers-of-Indonesia-s-personal-care-market_wrbm_large.jpg"),
                   ),
                 ),
               ),
               ListTile(
                 title: Text("086 30 87 661"),
                 subtitle: Text("Smart"),
                 leading: Icon(Icons.phone, color: Colors.blue,),
                 trailing: Icon(Icons.comment, color: Colors.orange,),
               ),
               ListTile(
                 title: Text("sousraiya@gmail.com"),
                 subtitle: Text("Google Mail"),
                 leading: Icon(Icons.email, color: Colors.red,),
                 trailing: Icon(Icons.comment, color: Colors.green,),
               )
             ],
           ),
         ),
         body: TabBarView(
           children: <Widget>[
               Stack(
                 children: <Widget>[
                   Image.network("https://images.pexels.com/photos/1308881/pexels-photo-1308881.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                    fit: BoxFit.cover,
                   ),
                   Center(
                     child: Text("Bopha Siem Reap", style: TextStyle(fontSize: 40.0, color: Colors.white),),
                   ),
                 ],
               ),
               Stack(
                 children: <Widget>[
                   Image.network("https://i.pinimg.com/236x/b5/e8/1a/b5e81ae0d1f7ffaf936c166cf5cbd8d5--asia-public.jpg",
                    fit: BoxFit.cover,
                   ),
                   Center(
                     child: Text("Romdul Siem Reap", style: TextStyle(fontSize: 40.0, color: Colors.white),),
                   ),
                 ],
               ),
               Stack(
                 children: <Widget>[
                   Image.network("https://html5box.com/html5lightbox/images/mountain.jpg",
                    fit: BoxFit.cover,
                   ),
                   Center(
                     child: Text("Bopha Siem Reap", style: TextStyle(fontSize: 40.0, color: Colors.white),),
                   ),
                 ],
               ),
               Stack(
                 children: <Widget>[
                   Image.network("https://html5box.com/html5lightbox/images/mountain.jpg",
                    fit: BoxFit.cover,
                   ),
                   Center(
                     child: Text("Bopha Siem Reap", style: TextStyle(fontSize: 40.0, color: Colors.white),),
                   ),
                 ],
               ),
           ],
         ),
         floatingActionButton: FloatingActionButton(
           onPressed: (){},
           child: Icon(Icons.favorite_border),
           backgroundColor: Colors.purple,
         ),
         floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
       ),
       ),
    );
  }
}