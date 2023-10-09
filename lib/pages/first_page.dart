import 'package:flutter/material.dart';
import 'package:food_app/pages/menu.dart';

class FirstPage extends StatefulWidget {
   static const String routeName ='firstpage';
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}
List<Menu> _menuItems = [
   Menu(title: "Biryani", image: "assets/images/biryani.png",description: "Delicious biryani with 2 pieces tikka.",price: "Rs 300/kg"),
   Menu(title: "Quorma", image: "assets/images/quorma.jpg",description: "Tasty freshly made Chicken Quorma",price: "Rs 300/kg"),
   Menu(title: "Ch.Karahi", image: "assets/images/karahi.jpg",description: "live Tasty Chicken koela karahi.",price: "Rs 300/kg"),
   Menu(title: "Mutton Karahi", image: "assets/images/karahi.jpg",description: "Tasty karahi Mutton.",price: "Rs 300/kg"),
   Menu(title: "hyerabadi koftay", image: "assets/images/koftay.jpg",description: "Tasty koftay.",price: "Rs 300/kg"),
   Menu(title: "Ch.Nihari", image: "assets/images/nihari.jpg",description: "Mouth watering Nehari.",price: "Rs 300/kg"),
   Menu(title: "sheer khurma", image: "assets/images/sheerkhurma.jpg",description: "a delicious sweet.",price: "Rs 300/kg")];
    
final List<Menu> _bbqItems =[
   Menu(title: "Ch.Tikka", image: "assets/images/tikka.jpg", description:"Chicken tikka with spice and sauces",price: "Rs 300/kg"),
   Menu(title: "Ch.Behari Boti", image: "assets/images/behariboti.jpg", description:"Behari boti with spice and sauces",price: "Rs 300/kg"),
   Menu(title: "Ch.Green Boti", image: "assets/images/greenboti.jpg", description:"Green boti with spice and sauces",price: "Rs 300/kg"),
   Menu(title: "Ch.Green Tikka", image: "assets/images/greentikka.jpg", description:"Green tikka with spice and sauces",price: "Rs 300/kg"),
   Menu(title: "Ch.Malai Tikka", image: "assets/images/malaitikka.jpg", description:"Malai tikka with spice and sauces",price: "Rs 300/kg"),
   Menu(title: "Ch.Reshmi kebab", image: "assets/images/reshmikebab.jpg", description:"Ch.Reshmi kebab with spice and sauces",price: "Rs 300/kg")];
                   

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: Drawer(
          child: ListView(
          padding: EdgeInsets.zero,
          children:const <Widget>[
            UserAccountsDrawerHeader(
            decoration: BoxDecoration(
    color: Color.fromARGB(255, 127, 0, 255), // Set your desired background color here
  ),
              accountName: Text("John Doe"), // Replace with the user's name
              accountEmail: Text("johndoe@example.com"), // Replace with the user's email
              currentAccountPicture:  CircleAvatar(
    // Display the first letter of the account holder's name as avatar text
    backgroundColor: Colors.white, // You can customize the background color
    child: Text(
      "J", // Replace with the first letter of the user's name
      style: TextStyle(fontSize: 24.0), // You can adjust the font size
    ),
  ),
              ),
              ListTile(
            leading: Icon(Icons.shopping_cart),
            title: Text("My Orders"),
           
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
            
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text("Logout"),
            
          ),
              ]  ),
        ),
          
        body:SafeArea(
          child: Column(
           // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Padding(
               padding: const EdgeInsets.all(8.0),
               child: ListTile(
                tileColor: Color.fromARGB(50, 127, 0, 255),
  
                title: const Text(
                  "Hello Zee",
                  style: TextStyle(
                    fontSize: 12
                  ),
                  textScaleFactor: 1.5,), 
                subtitle: Text("What are cravings today!"),
               trailing:ElevatedButton(
                onPressed: () {},
                style :ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
                  backgroundColor: Color.fromARGB(255, 127, 0, 255) ),
                 
                child: Icon(Icons.shopping_cart_checkout_rounded))
               ),
             ),
             Padding(
               padding: const EdgeInsets.only(
                left: 16.0,
                right: 16.0
              
               ),
               child: Row(
                 children: [
                   SearchAnchor(
                     builder: (BuildContext context,SearchController controller) {
                       return SearchBar(
                        constraints: BoxConstraints(
                          maxWidth: 260,
                          minHeight: 45),
                   controller: controller,
                   padding: const MaterialStatePropertyAll<EdgeInsets>(
                       EdgeInsets.symmetric(horizontal: 16.0)),
                   onTap: () {
                     controller.openView();
                   },
                   onChanged: (_) {
                     controller.openView();
                   },
                   leading: const Icon(Icons.search,color:Color.fromARGB(255, 127, 0, 255),),
                   
                    );
                     },suggestionsBuilder:
                       (BuildContext context, SearchController controller) {
                    return List<ListTile>.generate(5, (int index) {
                   final String item = 'item $index';
                   return ListTile(
                     title: Text(item),
                     onTap: () {
                       setState(() {
                         controller.closeView(item);
                       });
                     },
                   );
                    });
                           }),
                  SizedBox(width: 10,),
                  Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                    color:Color.fromARGB(255, 127, 0, 255),
                    borderRadius: BorderRadius.circular(16.0)
                    ),
                    child: IconButton(onPressed: () {},
                     icon:  const Icon(
                      Icons.tune_rounded,
                      color: Color.fromARGB(255, 249, 253, 195),
                       
                      size: 30,
                      
                      
                      )),
                  )
                 ],
               ),
             ),
             SizedBox(height: 10,),
              TabBar(
                
              unselectedLabelColor: Color.fromARGB(255, 127, 0, 255),
              indicatorSize: TabBarIndicatorSize.label,
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(60),
                  color: Color.fromARGB(255, 127, 0, 255),),
              tabs: [
                Tab(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Color.fromARGB(255, 127, 0, 255), width: 1)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("BBQ"),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Color.fromARGB(255, 127, 0, 255), width: 1)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("Meals"),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Color.fromARGB(255, 127, 0, 255), width: 1)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("FastFood"),
                    ),
                  ),
                ),
                
                 ] ),
              Expanded(
                child: TabBarView(
                  children: [
           Expanded(
  child: GridView.builder(
              shrinkWrap: true,
              padding: const EdgeInsets.all(8),
              itemCount: _menuItems.length,
              itemBuilder: (context, index) {
                return Card(
                  color: Color.fromARGB(255, 246, 234, 248),
                  child: Container(
                    height: 300,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 246, 234, 248),
                        borderRadius: BorderRadius.circular(20)),
                    margin: const EdgeInsets.all(5),
                    padding: const EdgeInsets.only(left:5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Image.asset(
                            _menuItems[index].image,
                            height: 100,
                          ),
                        ),
                        const SizedBox(height: 20,),

                        Text(
                          _menuItems[index].title,
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                       
                        Text(
                         _menuItems[index].description,
                          style: const TextStyle(
                            fontSize: 11,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 8,),
                    
                        Container(
                          height: 30,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                               _menuItems[index].price,
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              const SizedBox(width: 24,),

                              Container(
                                height: 30,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromARGB(255, 127, 0, 255),
                                ),
                                child: IconButton(
                                   icon: const Icon(
                                    Icons.add_shopping_cart_outlined),
                                    color: Colors.white,
                                    iconSize: 21,
                                    onPressed: (){}),
                              )
                          
                            ],  ),
                        )   ], ), ),
                );
              },
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.0,
                crossAxisSpacing: 0.0,
                mainAxisSpacing: 3,
                mainAxisExtent: 234, //264
              ),
              ) ),
              Expanded(
  child: GridView.builder(
              shrinkWrap: true,
              padding: const EdgeInsets.all(8),
              itemCount: _menuItems.length,
              itemBuilder: (context, index) {
                return Card(
                  color: Color.fromARGB(255, 246, 234, 248),
                  child: Container(
                    height: 300,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 246, 234, 248),
                        borderRadius: BorderRadius.circular(20)),
                    margin: const EdgeInsets.all(5),
                    padding: const EdgeInsets.only(left:5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Image.asset(
                            _menuItems[index].image,
                            height: 100,
                          ),
                        ),
                        const SizedBox(height: 20,),

                        Text(
                          _menuItems[index].title,
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                       
                        Text(
                         _menuItems[index].description,
                          style: const TextStyle(
                            fontSize: 11,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 8,),
                    
                        Container(
                          height: 30,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                               _menuItems[index].price,
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              const SizedBox(width: 24,),

                              Container(
                                height: 30,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromARGB(255, 127, 0, 255),
                                ),
                                child: IconButton(
                                   icon: const Icon(
                                    Icons.add_shopping_cart_outlined),
                                    iconSize: 21,
                                     color: Colors.white,
                                    onPressed: (){}),
                              )
                          
                            ],  ),
                        )   ], ), ),
                );
              },
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.0,
                crossAxisSpacing: 0.0,
                mainAxisSpacing: 3,
                mainAxisExtent: 234, //264
              ),
              ) ),
              
         Expanded(
  child: GridView.builder(
              shrinkWrap: true,
              padding: const EdgeInsets.all(8),
              itemCount: _menuItems.length,
              itemBuilder: (context, index) {
                return Card(
                  color: Color.fromARGB(255, 246, 234, 248),
                  child: Container(
                    height: 300,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 246, 234, 248),
                        borderRadius: BorderRadius.circular(20)),
                    margin: const EdgeInsets.all(5),
                    padding: const EdgeInsets.only(left:5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Image.asset(
                            _menuItems[index].image,
                            height: 100,
                          ),
                        ),
                        const SizedBox(height: 20,),

                        Text(
                          _menuItems[index].title,
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                       
                        Text(
                         _menuItems[index].description,
                          style: const TextStyle(
                            fontSize: 11,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 8,),
                    
                        Container(
                          height: 30,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                               _menuItems[index].price,
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              const SizedBox(width: 24,),

                              Container(
                                height: 30,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromARGB(255, 127, 0, 255),
                                ),
                                child: IconButton(
                                   icon: Icon(
                                    Icons.add_shopping_cart_outlined,
                                     color: Colors.white,),
                                
                                    iconSize: 21,
                                    color: Colors.white,
                                    onPressed: (){}),
                              )
                          
                            ],  ),
                        )   ], ), ),
                );
              },
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.0,
                crossAxisSpacing: 0.0,
                mainAxisSpacing: 3,
                mainAxisExtent: 234, //264
              ),
              ) ),
         
   ]),
 ),

    
            ],
          ),
        )
        
      ),
    );
  }
}