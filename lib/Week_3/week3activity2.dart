import 'package:flutter/material.dart';

class Week3Activity2 extends StatelessWidget {
  const Week3Activity2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Week 3 - Activity 2'),
      ),

      body: Center(
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
              onPressed: (){},
              icon: const Icon(
                Icons.download,
                size: 24,
              ), 
              label: const Text(
                'Download',
              ),
            ),
              SizedBox(height: 20),

              TextButton.icon(
                onPressed: (){},
                icon: Icon(
                  Icons.download,
                  size: 24,
                ),
                label: const Text(
                  'Download'
                ),
              ),
              SizedBox(height: 20),

              OutlinedButton.icon(
                onPressed: (){},
                icon: Icon(
                  Icons.download,
                  size: 24,
                ),
                label: const Text(
                  'Download'
                ),
              ),
              SizedBox(height: 20),

              ElevatedButton(
                onPressed: (){},
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Download'
                    ),
                    SizedBox(width: 5),
                    Icon(Icons.download, size: 24),
                  ],
                ),
              ),
              SizedBox(height: 20),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: const StadiumBorder(),
                ),
                child: Text(
                  'Pill Button'
                ),
                onPressed: (){},
              ),
              SizedBox(height: 20),
              
              SizedBox.fromSize(
                size: const Size(54,54),
                child: ClipOval(
                  child: Material(
                    color: Colors.blue,
                    child: InkWell(
                      splashColor: Colors.green,
                      onTap: (){},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.shopping_cart, color: Colors.white,),
                          Text(
                            'Buy',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),

              GestureDetector(
                onTap: (){},
                child: Container(
                  width: 240,
                  height: 80,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.blue[200],
                  ),
                  child: const Text('Button'),
                ),
              ),
              SizedBox(height: 20),

              FloatingActionButton.extended(
                backgroundColor: Colors.black,
                icon: Icon(Icons.download, size: 24),
                label: Text('Download'),
                onPressed: (){},
              ),
              SizedBox(height: 20),

              SizedBox(
                height: 100,
                width: 300,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.redAccent,
                    side: const BorderSide(
                      width: 3, color: Color.fromARGB(255, 69, 55, 50)
                    ),
                    elevation: 3,
                    shape: RoundedRectangleBorder (
                      borderRadius: BorderRadius.circular(30)
                    ),
                    padding: const EdgeInsets.all(20)
                  ),
                  onPressed: () {},
                  child: const Text("Elevated Button"),
                ),
              ),
            ],
          )


          ],
        ),
      ),
    );
  }
}

