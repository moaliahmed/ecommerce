import 'package:amazon/component/botton_component.dart';
import 'package:amazon/screens/login_screan.dart';
import 'package:amazon/src/navigation_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SignUpScrean extends StatelessWidget {
  const SignUpScrean({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Image.asset('assets/app_icon/logo.png'),
          Text(
            'Welcome to portatile',
            style: TextStyle(
                color: Color(0xff214eff),
                fontSize: 32,
                fontWeight: FontWeight.bold),
          ),SizedBox(height: 12,),
          Text(
            'Please sign up to join us',
            style: TextStyle(fontSize: 16),
          ),SizedBox(height: 12,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person),
                border: UnderlineInputBorder(),
                labelText: ' full name',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.mail_rounded),
                border: UnderlineInputBorder(),
                labelText: ' your email',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.lock),
                border: UnderlineInputBorder(),
                labelText: ' your password',
              ),
            ),
          ),SizedBox(height: 22,),
          Button(name: 'Continue', function: () {}),
          SizedBox(height: 22,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            CircleAvatar(radius: (16),
            backgroundColor: Colors.white,
            child: ClipRRect(
              borderRadius:BorderRadius.circular(90),
              child: Image.asset("assets/social_media_logo/facebook.png"),
            ),
        ),
        SizedBox(width: 30,),
            CircleAvatar(radius: (16),
            backgroundColor: Colors.white,
            child: ClipRRect(
              borderRadius:BorderRadius.circular(90),
              child: Image.asset("assets/social_media_logo/twitter.png"),
            ),
        ),SizedBox(width: 30,),
            CircleAvatar(radius: (12),
            backgroundColor: Colors.white,
            child: ClipRRect(
              borderRadius:BorderRadius.circular(90),
              child: Image.asset("assets/social_media_logo/google.png"),
            ),
        ),
            ],
            
          ),SizedBox(height: 22,),
          Text('Already have an account ?',style: TextStyle(fontSize: 16),),
          SizedBox(height: 12,),
          Button(name: 'Login', function: (){AppNavigator.appNavigator(context, true, LoginScrean());})
        ],
      ),
    );
  }
}
