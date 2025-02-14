
import 'package:design1/pages/home.dart';
import 'package:design1/widgets/custom_selectable_text.dart';
import 'package:design1/widgets/search_widget.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.title});

  final String title;

  @override
  State<LoginPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const HomePage()));
          },
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'Switch to English',
              style: TextStyle(color: Colors.teal),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Logo and Company Section
            Center(
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey.shade200,
                    radius: 50,
                    child: const Icon(
                      Icons.business,
                      size: 50,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'أكثر من 100 شركة',
                    style: TextStyle(
                        color: Colors.teal,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            // Enter Phone Number Section
            Align(
              alignment: Alignment.topRight,
              child: Text(
                'أدخل رقم هاتفك',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                textAlign: TextAlign.right,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: Colors.green)),
                    ),
                    value: '+20',
                    onChanged: (newValue) {},
                    items: ['+20', '+30', '+990'].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: EdgeInsets.only(top: 24.0),
                    child: TextField(
                      maxLength: 10,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                          labelStyle: TextStyle(color: Colors.black),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(color: Colors.green)),
                          hintText: '0 ___ ___ ____',
                          hintStyle: TextStyle(color: Colors.black)),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            // Send Code Button
            SizedBox(
              width: double.infinity,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 16),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(64)),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const SearchWidget()));
                  },
                  child: Center(
                    child: Text(
                      'أرسل كود التفعيل',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            const Spacer(),
            // Terms and Privacy
           const Center(
                child: CustomSelectableText(first: 'أوافق على',second: 'سيايه الخصوصيه')),
          ],
        ),
      ),
    );
  }
}


