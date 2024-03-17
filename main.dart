import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Unnave AAkam',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Unnave AAkam'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Username',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10.0),
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10.0),
              ElevatedButton(
                onPressed: () {
                  // Navigate to main dashboard after successful login
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MainDashboard()),
                  );
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                ),
                child: const Text('Login', style: TextStyle(fontSize: 14, color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MainDashboard extends StatelessWidget {
  const MainDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Choose your Role'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 30.0),
            ElevatedButton(
              onPressed: () {
                // Navigate to food donation form
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FoodDonationForm()),
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
              ),
              child: const Text('Donor', style: TextStyle(fontSize: 14, color: Colors.white)),
            ),
            const SizedBox(height: 30.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ReceipentPanel()),
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
              ),
              child: const Text('Receipent', style: TextStyle(fontSize: 14, color: Colors.white)),
            ),
            const SizedBox(height: 30.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => VolunteerProfile()),
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 215, 101, 192)),
              ),
              child: const Text('Volunteer', style: TextStyle(fontSize: 14, color: Colors.white)),
            ),
            
          ],
        ),
      ),
    );
  }
}

class FoodDonationForm extends StatelessWidget {
  const FoodDonationForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Unnave aakam'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Username',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10.0),
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Location',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10.0),
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Contact Details',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10.0),
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Food Name',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10.0),
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Quantity',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10.0),
              ElevatedButton(
                onPressed: () {
                  // Implement submission process
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                ),
                child: const Text('Donate'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ReceipentPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Unnave AAkam"),
      ),
      body: SizedBox(
        height: double.infinity,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: List.generate(20, (index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {},
                child: Container(
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    color: Color.fromARGB(255, 164, 234, 249),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Name: Ram.S",
                        style: TextStyle(
                          fontSize: 14,
                          color:Color.fromARGB(255, 20, 100, 147),
                        ),
                      ),
                      Text(
                        "Phone: 1234567890",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 20, 100, 147),
                        ),
                      ),
                      Text(
                        "Address: Sample Address",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 20, 100, 147),
                        ),
                      ),
                      SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {
                          // Handle contact button press
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 4, 68, 120),
                        ),
                        child: Text("Contact", style: TextStyle(fontSize: 14, color: Colors.white)),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
class VolunteerProfile extends StatelessWidget {
  const VolunteerProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('YOUR PROFILE'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Prabhavardhini',
              style: TextStyle(fontSize: 18),
            ),const SizedBox(height: 20),
            Text(
              'Contact:9710171555',
              style: TextStyle(fontSize: 14),
            ),const SizedBox(height: 20),
            Text(
              'Address: 456 Park Ave, City',
              style: TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 20),
            Text('Over all Rating:5',style:TextStyle(fontSize:14),),
            const SizedBox(height: 20),
            Text("You Received a new delivery help!",style:TextStyle(fontSize:14),),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implement functionality to view available food locations
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 21, 105, 173), // Use theme color
              ),
              child: const Text('Contact Receipent',style: TextStyle(fontSize: 14, color: Colors.white)),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implement functionality to sign up for food delivery tasks
              },
              style: ElevatedButton.styleFrom(
                backgroundColor:Color.fromARGB(255, 4, 68, 120), // Use theme color
              ),
              child: const Text('Contact Donor',style: TextStyle(fontSize: 14, color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
