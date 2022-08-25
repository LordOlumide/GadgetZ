
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:oga_bassey/components/custom_button.dart';
import 'package:oga_bassey/constants.dart';
import 'package:oga_bassey/components/custom_text_input_field.dart';
import 'package:oga_bassey/components/textfield_names.dart';
import 'package:oga_bassey/components/social_media_card.dart';
import 'package:oga_bassey/screens/forgot_password/forgot_password.dart';
import 'package:oga_bassey/screens/home/home_screen.dart';



class Body  extends StatelessWidget {
   const Body ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:SingleChildScrollView(
        child: Column(
          children: [
          kdivider,
            kbigSizedbox,
            // text that says create account
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100),
              child: Text('Create your account',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500
              )
              ),
            ),

            kbigSizedbox,
            TextfieldName(text: 'Full name',),
            
                 //textfield 
                 
                FullnameTextfield(),
      
                 SizedBox(height: 20,),
                 // that says email 
                 TextfieldName(text: 'Email address',),
                 SizedBox(height: 10,),
                 // textfield
                 EmailTextfield(),
                  kbigSizedbox,
                 // text that says passsword
                 TextfieldName(text: 'Password',),
                 ksmallSizedbox,
                 // textfield with icon
                 PasswordTextfield(),

                 kbigSizedbox,
                 
                // sign up buttun
                CustomButtom(
                 buttonName: 'Signup',
                 buttonColor: kdisabledButtonColor, 
                 textStyle: ksignupbuttonTextStyle(),
                 onPressed: (){
                  Navigator.pushNamed(context, HomeScreen.id);
                 }),
      
              kbigSizedbox,
      
              
              // row wit divder with a text 'row'
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                height: 7,
                width: 169,
                child: Divider(
                  thickness: 4,
                  color: Color(0xFFF5F5F5),
                  // indent: 1,
                  endIndent: 10,
                )
              ),
                  
                  // SizedBox(width: 45),
                  // text 'or'
                  Text('OR'),
      
                  SizedBox(
                height: 7,
                width: 175,
                child: Divider(
                  thickness: 5,
                  color: Color(0xFFF5F5F5),
                  indent: 10,
                )
              ),
                ],
              ),

              kbigSizedbox,
              //row with three svg buttons
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SocialMediaCard(socialImage: AssetImage('images/google.png'),),

                    SocialMediaCard(socialImage: AssetImage('images/apple.png'),),

                    SocialMediaCard(socialImage: AssetImage('images/facebook.png'),)
                  ],
                ),
              ),
                  ],
        ),
      )
    );
      


      
      

 
    
  }

}

