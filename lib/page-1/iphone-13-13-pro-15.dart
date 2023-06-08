
import 'package:demo1/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';


import '../utils.dart';


class Scene4 extends StatelessWidget {
  bool _isPasswordHidden = true;

  //final TextEditingController _EmailPhoneNumberController = TextEditingController();
  //final TextEditingController _FullNameController = TextEditingController();
  //final TextEditingController _AddressController = TextEditingController();
  //final TextEditingController _PasswordController = TextEditingController();

   final _formKey = GlobalKey<FormState>();

  Scene4({super.key});

 /* void _signup() async { 
    if(_formKey.currentState!.validate())
    {
      String emailPhonenumber = _EmailPhoneNumberController.text;
      String fullName = _FullNameController.text;
      String address = _AddressController.text;
      String password = _PasswordController.text;
      http.Response response = await http.post(Uri.parse(endpoint + "signup.php"),
      body: json.encode({
        "emailPhonenumber":emailPhonenumber,
        "fullName":fullName,
        "address":address,
        "password":password
      },
    )
      );
    print(response.body);
    if(response.statusCode == 200){
      var body = json.decode(response.body);
      //if(!mounted) {return;}
      //ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(body['message'])));
    }
    }
  }*/

  @override
  Widget build(BuildContext context) {

  var _EmailPhoneNumberController = TextEditingController();
  var _PasswordController = TextEditingController();
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    var size = MediaQuery.of(context).size;
    
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        // iphone1313pro15aFX (165:2)
        width: size.width,
        decoration: BoxDecoration (
          color: Color(0xff02508e),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
           child: Container(
              // autogrouptypqgpM (DTHVSWToupKiULyFJyTypq)
              padding: EdgeInsets.fromLTRB(132*fem, 53*fem, 133*fem, 46*fem),
              width: size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // mechanic1Cnh (165:16)
                    margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 0*fem),
                    width: 40*fem,
                    height: 40*fem,
                    child: Image.asset(
                      'assets/page-1/images/mechanic-1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(
                    // signupj1w (165:4)
                    'Sign up',
                    style: SafeGoogleFont (
                      'Inter',
                      fontSize: 34*ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.2125*ffem/fem,
                      color: Color(0xffffffff),
                    ),
                  ),
                ],
              ),
            ),
        ),
            Container(
              // autogroupz1jbSS9 (DTHV4bveH8XBRmMwWsZ1jb)
              padding: EdgeInsets.fromLTRB(65*fem, 119*fem, 75*fem, 143*fem),
              width: size.width,
              decoration: BoxDecoration (
                color: Color(0xfffefefe),
                borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40*fem),
            topRight: Radius.circular(40*fem),
            bottomRight: Radius.zero,
            bottomLeft: Radius.zero,
          ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x3f000000),
                    offset: Offset(0*fem, 4*fem),
                    blurRadius: 2*fem,
                  ),
                ],
              ),
              child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // frame2JUM (165:6)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 33*fem),
                    padding: EdgeInsets.fromLTRB(17*fem, 14*fem, 17*fem, 10*fem),
                    width: size.width,
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(20*fem),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(0, 255, 255, 255),
                          offset: Offset(0*fem, 4*fem),
                          blurRadius: 2*fem,
                        ),
                      ],
                    ),
                    child: Container(
                    width: 400,
                    child: TextFormField(
                    controller:_EmailPhoneNumberController,
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                    hintText:'Email or Phone number',
                    hintStyle:SafeGoogleFont (
                        'Inter',
                        fontSize: 16*ffem,
                        fontWeight: FontWeight.w300,
                        height: 1.2125*ffem/fem,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                  ),
                  ),
                ),
                  Container(
                    // frame3Jsf (165:8)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 24*fem),
                    padding: EdgeInsets.fromLTRB(22*fem, 13*fem, 22*fem, 11*fem),
                    width: size.width,
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(50*fem),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(62, 255, 255, 255),
                          offset: Offset(0*fem, 4*fem),
                          blurRadius: 2*fem,
                        ),
                      ],
                    ),
                    child: TextFormField(
                      //controller:_FullNameController,
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                    hintText:'Full name',
                    hintStyle: SafeGoogleFont (
                        'Inter',
                        fontSize: 16*ffem,
                        fontWeight: FontWeight.w300,
                        height: 1.2125*ffem/fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  ),
                  SingleChildScrollView(
                  child :Container(
                    width: size.width - (43 * fem) - (31 * fem),
                    // autogroup683xFiM (DTHVDBWgWPtVYHj3bv683X)
                    margin: EdgeInsets.fromLTRB(43*fem, 0*fem, 31*fem, 0*fem),
                    //width: size.width,
                    height: 44*fem,
                    decoration: BoxDecoration (
                      border: Border.all(color: Color(0xff02508e)),
                      color: Color(0xff02508e),
                      borderRadius: BorderRadius.circular(20*fem),
                    ),
                    child:  ElevatedButton(
                    onPressed: () { 
                    AuthController.instance.register(_EmailPhoneNumberController.text, _PasswordController.text);
                    //Navigator.push(context,MaterialPageRoute(builder: (context) => Scene5()),);
                    },
                    style: TextButton.styleFrom (
                      padding: EdgeInsets.zero,
                    ),
                    child: Center(
                      child: Text(
                        'Submit',
                        style: SafeGoogleFont (
                          'Inter',
                          fontSize: 28*ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.2125*ffem/fem,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),

                  ),
                  ),
                  Container(
                    // frame5wfj (165:10)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 28*fem),
                    padding: EdgeInsets.fromLTRB(21*fem, 14*fem, 21*fem, 10*fem),
                    width: size.width,
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(50*fem),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(62, 255, 255, 255),
                          offset: Offset(0*fem, 4*fem),
                          blurRadius: 2*fem,
                        ),
                      ],
                    ),
                    child: TextFormField(
                      //controller:_AddressController ,
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                    hintText:'Address',
                    hintStyle: SafeGoogleFont (
                        'Inter',
                        fontSize: 16*ffem,
                        fontWeight: FontWeight.w200,
                        height: 1.2125*ffem/fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  ),
                  Container(
                    // frame6aih (165:12)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 96*fem),
                    padding: EdgeInsets.fromLTRB(25*fem, 5*fem, 17*fem, 7*fem),
                    width: size.width,
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(50*fem),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(62, 255, 255, 255),
                          offset: Offset(0*fem, 4*fem),
                          blurRadius: 2*fem,
                        ),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Flexible(
                          // password1JD (165:13)
                          //margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 103*fem, 0*fem),
                          child: Container(
                          width: 250,
                          child: TextFormField(
                          controller: _PasswordController,
                          obscureText: _isPasswordHidden,
                          textAlign: TextAlign.left,
                          decoration: InputDecoration(
                          hintText:'Password',
                          hintStyle: SafeGoogleFont (
                              'Inter',
                              fontSize: 16*ffem,
                              fontWeight: FontWeight.w300,
                              height: 1.2125*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                          
                        ),
                          ),
                        ),
                        Container(
                          // fermeracle1vRB (165:17)
                          width: 32*fem,
                          height: 32*fem,
                          child: Image.asset(
                            'assets/page-1/images/fermer-a-cle-1.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                  child :Container(
                    width: size.width - (43 * fem) - (31 * fem),
                    // autogroup683xFiM (DTHVDBWgWPtVYHj3bv683X)
                    margin: EdgeInsets.fromLTRB(43*fem, 0*fem, 31*fem, 0*fem),
                    //width: size.width,
                    height: 44*fem,
                    decoration: BoxDecoration (
                      border: Border.all(color: Color(0xff02508e)),
                      color: Color(0xff02508e),
                      borderRadius: BorderRadius.circular(20*fem),
                    ),
                    child:  ElevatedButton(
                    onPressed: () { 
                    AuthController.instance.register(_EmailPhoneNumberController.text, _PasswordController.text);
                    //Navigator.push(context,MaterialPageRoute(builder: (context) => Scene5()),);
                    },
                    style: TextButton.styleFrom (
                      padding: EdgeInsets.zero,
                    ),
                    child: Center(
                      child: Text(
                        'Submit',
                        style: SafeGoogleFont (
                          'Inter',
                          fontSize: 28*ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.2125*ffem/fem,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
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