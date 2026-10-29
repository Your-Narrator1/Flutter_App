import 'package:flutter/material.dart';

void main() {
  runApp(const FacebookLoginApp());
}

class FacebookLoginApp extends StatelessWidget {
  const FacebookLoginApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const FacebookLoginPage(),
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
    );
  }
}

class FacebookLoginPage extends StatefulWidget {
  const FacebookLoginPage({super.key});

  @override
  State<FacebookLoginPage> createState() => _FacebookLoginPageState();
}

class _FacebookLoginPageState extends State<FacebookLoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override

  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column (
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 60
              ),

              Text (
                "English • Español • Français (France) • 中文(简体) • العربية • Português (Brasil) • Italiano • 한국어 • Deutsch • 日本語",
                style: TextStyle(color: Colors.grey[600], fontSize: 12),
              ),

              const SizedBox(height: 50),

              const Icon(
                Icons.facebook,
                size: 70,
                color: Color(0xFF1877F2),
              ),

              const SizedBox(height: 50),

              TextField (
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration (
                  hintText: 'Mobile number or email',
                  filled: true,
                  fillColor: const Color(0xFFF5F6F8),
                  contentPadding: const EdgeInsets.all(16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.grey.shade300),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.grey.shade300),
                  ),
                ),
              ),
              

              const SizedBox(height: 12),

              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  filled: true,
                  fillColor: const Color(0xFFF5F6F8),
                  contentPadding: const EdgeInsets.all(16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.grey.shade300),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.grey.shade300),
                  ),
                ),
              ),

              const SizedBox(height: 16),

              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {

                  },

                  style:ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF1877F2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    elevation: 0,
                  ),

                  child: const Text(
                    'Log In',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  
                ),
              ),

              const SizedBox(height: 16),

              TextButton(
                onPressed:() {},
                child: const Text(
                  'Forgot password?',
                  style: TextStyle(
                    color: Color(0xFF1877F2),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),

              const SizedBox(height: 80),

              SizedBox(
                width: double.infinity,
                height: 50,
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Color(0xFF1877F2)),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                  child: const Text(
                    'Create New Account',
                    style: TextStyle(
                      color: Color(0xFF1877F2),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),  
              ),

              const SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.all_inclusive, color: Colors.grey[600], size: 18),
                  const SizedBox(width: 4),
                  Text(
                    'Meta',
                    style: TextStyle(color: Colors.grey[600],
                    fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

            ],
          ),
        ),
      ),
    );
  }
}
