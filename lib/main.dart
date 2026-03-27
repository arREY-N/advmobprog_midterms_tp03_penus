import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        backgroundColor: const Color(0xFFEAEAEA),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.90,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 40,
                  ),
                  constraints: const BoxConstraints(maxWidth: 700),
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    color: const Color.fromARGB(255, 255, 255, 255),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 198, 197, 197),
                        spreadRadius: 1,
                        blurRadius: 10,
                        offset: const Offset(5, 5),
                      ),
                    ],
                  ),
                  child: Center(
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Text(
                            'Welcome to CakeYum!',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Sure kang cake ay yummy!',
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 50),

                          BuyerInfo(),
                          SizedBox(height: 50),
                          CakeFlavor(),
                          SizedBox(height: 50),
                          CakeSize(),
                          SizedBox(height: 50),
                          AddOns(),
                          SizedBox(height: 50),
                          PaymentMode(),
                          SizedBox(height: 50),
                          DeliveryDay(),
                          SizedBox(height: 50),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: OutlinedButton(
                                    onPressed: () {},
                                    style: OutlinedButton.styleFrom(
                                      foregroundColor: Colors.redAccent,
                                      side: const BorderSide(
                                        color: Colors.redAccent,
                                      ),
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 15,
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    child: const Text(
                                      'Reset',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color.fromARGB(
                                        255,
                                        92,
                                        91,
                                        47,
                                      ),
                                      foregroundColor: Colors.white,
                                      elevation: 4,
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 15,
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    child: const Text(
                                      'Save Order',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Title extends StatelessWidget {
  final String section;

  const Title({super.key, this.section = 'Cake Flavor'});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          section,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 69, 68, 18),
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}

class CakeFlavor extends StatefulWidget {
  const CakeFlavor({super.key});

  @override
  State<CakeFlavor> createState() => _CakeFlavor();
}

class _CakeFlavor extends State<CakeFlavor> {
  String? flavorNgCake;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Title(section: 'Pili ka flavor, ya'),
        RadioGroup(
          groupValue: flavorNgCake,
          onChanged: (String? value) {
            setState(() {
              flavorNgCake = value;
            });
          },
          child: Column(
            children: [
              Card(
                margin: const EdgeInsets.symmetric(vertical: 5),
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: RadioListTile<String>(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  activeColor: Color.fromARGB(255, 92, 91, 47),
                  value: 'Cheesecake',
                  title: Padding(
                    padding: const EdgeInsets.only(bottom: 4),
                    child: const Text(
                      'Cheesecake',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: const Text(
                      'Cheese ata na may cake or cake na may cheese',
                    ),
                  ),
                  secondary: SizedBox(
                    width: 60,
                    height: 100,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image(
                        image: AssetImage('assets/CheeseCake.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Card(
                margin: const EdgeInsets.symmetric(vertical: 5),
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: RadioListTile<String>(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  activeColor: Color.fromARGB(255, 92, 91, 47),
                  value: 'Mocha',
                  title: Padding(
                    padding: const EdgeInsets.only(bottom: 4),
                    child: const Text(
                      'Mocha',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: const Text('The only mocha we approve'),
                  ),
                  secondary: SizedBox(
                    width: 60,
                    height: 100,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image(
                        image: AssetImage('assets/MochaCake.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Card(
                margin: const EdgeInsets.symmetric(vertical: 5),
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: RadioListTile<String>(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  activeColor: Color.fromARGB(255, 92, 91, 47),
                  value: 'Chocolate',
                  title: Padding(
                    padding: const EdgeInsets.only(bottom: 4),
                    child: const Text(
                      'Chocolate',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: const Text('Dyabetis check'),
                  ),
                  secondary: SizedBox(
                    width: 60,
                    height: 100,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image(
                        image: AssetImage('assets/ChocolateCake.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Card(
                margin: const EdgeInsets.symmetric(vertical: 5),
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: RadioListTile<String>(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  activeColor: Color.fromARGB(255, 92, 91, 47),
                  value: 'Mango Graham',
                  title: Padding(
                    padding: const EdgeInsets.only(bottom: 4),
                    child: const Text(
                      'Mango Graham',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: const Text('Mangga namin fresh from Guimaras'),
                  ),
                  secondary: SizedBox(
                    width: 60,
                    height: 100,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image(
                        image: AssetImage('assets/MangoGrahamCake.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Card(
                margin: const EdgeInsets.symmetric(vertical: 5),
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: RadioListTile<String>(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  activeColor: Color.fromARGB(255, 92, 91, 47),
                  value: 'Coffee Cake',
                  title: Padding(
                    padding: const EdgeInsets.only(bottom: 4),
                    child: const Text(
                      'Coffee Cake',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: const Text('Either sugar rush or caffeine buzz'),
                  ),
                  secondary: SizedBox(
                    width: 60,
                    height: 100,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image(
                        image: AssetImage('assets/CoffeeCake.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class BuyerInfo extends StatelessWidget {
  const BuyerInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Title(section: 'Info mo muna'),
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            label: Text(
              'Enter your name on the receipt',
              style: TextStyle(fontSize: 14),
            ),
          ),
        ),
        SizedBox(height: 20),

        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            label: Text('Enter your address', style: TextStyle(fontSize: 14)),
          ),
        ),
      ],
    );
  }
}

class CakeSize extends StatefulWidget {
  const CakeSize({super.key});

  @override
  State<CakeSize> createState() => _CakeSize();
}

class _CakeSize extends State<CakeSize> {
  int? sizeNgCake;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Title(section: 'Ano po size?'),
        RadioGroup(
          groupValue: sizeNgCake,
          onChanged: (int? value) {
            setState(() {
              sizeNgCake = value;
            });
          },
          child: Column(
            children: [
              Card(
                margin: const EdgeInsets.symmetric(vertical: 5),
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: RadioListTile<int>(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  activeColor: Color.fromARGB(255, 92, 91, 47),
                  value: 1,
                  title: Padding(
                    padding: const EdgeInsets.only(bottom: 4),
                    child: const Text(
                      'Slice',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: const Text('P 180.00'),
                  ),
                ),
              ),
              Card(
                margin: const EdgeInsets.symmetric(vertical: 5),
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: RadioListTile<int>(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  activeColor: Color.fromARGB(255, 92, 91, 47),
                  value: 2,
                  title: Padding(
                    padding: const EdgeInsets.only(bottom: 4),
                    child: const Text(
                      'Small',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: const Text('P 360.00'),
                  ),
                ),
              ),
              Card(
                margin: const EdgeInsets.symmetric(vertical: 5),
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: RadioListTile<int>(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  activeColor: Color.fromARGB(255, 92, 91, 47),
                  value: 3,
                  title: Padding(
                    padding: const EdgeInsets.only(bottom: 4),
                    child: const Text(
                      'Large',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: const Text('P 540.00'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class PaymentMode extends StatefulWidget {
  const PaymentMode({super.key});

  @override
  State<PaymentMode> createState() => _PaymentMode();
}

class _PaymentMode extends State<PaymentMode> {
  String? paymentMode;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Title(section: 'Bawal libre, mahal gas'),
        RadioGroup(
          groupValue: paymentMode,
          onChanged: (String? value) {
            setState(() {
              paymentMode = value;
            });
          },
          child: Column(
            children: [
              Card(
                margin: const EdgeInsets.symmetric(vertical: 5),
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: RadioListTile<String>(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  activeColor: Color.fromARGB(255, 92, 91, 47),
                  value: 'Maya',
                  title: Padding(
                    padding: const EdgeInsets.only(bottom: 4),
                    child: const Text(
                      'Maya',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: const Text('Ngayon na dapat'),
                  ),
                ),
              ),
              Card(
                margin: const EdgeInsets.symmetric(vertical: 5),
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: RadioListTile<String>(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  activeColor: Color.fromARGB(255, 92, 91, 47),
                  value: 'GCash',
                  title: Padding(
                    padding: const EdgeInsets.only(bottom: 4),
                    child: const Text(
                      'GCash',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: const Text('Sana hindi down'),
                  ),
                ),
              ),
              Card(
                margin: const EdgeInsets.symmetric(vertical: 5),
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: RadioListTile<String>(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  activeColor: Color.fromARGB(255, 92, 91, 47),
                  value: 'Cash on Delivery',
                  title: Padding(
                    padding: const EdgeInsets.only(bottom: 4),
                    child: const Text(
                      'Cash on Delivery',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: const Text('Barya lang po sa umaga'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class AddOns extends StatefulWidget {
  const AddOns({super.key});

  @override
  State<AddOns> createState() => _AddOnsState();
}

class _AddOnsState extends State<AddOns> {
  bool? maySprinkles = false;
  bool? mayHotChoco = false;
  bool? mayMatcha = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Title(section: 'I-dagdag mo (dag), i-dagdag mo (dag)'),
        CheckboxListTile(
          value: maySprinkles ?? false,
          onChanged: (bool? value) {
            setState(() {
              maySprinkles = value;
            });
          },
          title: Text('Sprinkles'),
          subtitle: Text('P 30.00'),
        ),
        CheckboxListTile(
          value: mayHotChoco ?? false,
          onChanged: (bool? value) {
            setState(() {
              mayHotChoco = value;
            });
          },
          title: Text('Hot chocolate'),
          subtitle: Text('P 50.00'),
        ),
        CheckboxListTile(
          value: mayMatcha ?? false,
          onChanged: (bool? value) {
            setState(() {
              mayMatcha = value;
            });
          },
          title: Text('Matcha Powder'),
          subtitle: Text('P 50.00'),
        ),
      ],
    );
  }
}

class DeliveryDay extends StatefulWidget {
  const DeliveryDay({super.key});

  @override
  State<DeliveryDay> createState() => _DeliveryDayState();
}

class _DeliveryDayState extends State<DeliveryDay> {
  List<String> arawNgDelivery = [
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday',
  ];
  String? chosenAraw;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Title(section: 'When de-deliver?'),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(50, 0, 0, 0),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              hint: const Text('when?'),
              isExpanded: true,
              value: chosenAraw,
              icon: const Icon(
                Icons.keyboard_arrow_down,
                color: Color.fromARGB(255, 92, 91, 47),
              ),
              style: const TextStyle(
                color: Colors.black87,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
              items: arawNgDelivery
                  .map(
                    (String day) =>
                        DropdownMenuItem<String>(value: day, child: Text(day)),
                  )
                  .toList(),
              onChanged: (String? value) {
                setState(() {
                  chosenAraw = value;
                });
              },
            ),
          ),
        ),
      ],
    );
  }
}
