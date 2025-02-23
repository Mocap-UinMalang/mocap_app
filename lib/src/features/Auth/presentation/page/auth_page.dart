import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utils/constant/images.dart';
import '../widgets/buttom_widget.dart';
import '../widgets/text_field_widget.dart';

class AuthPage extends StatelessWidget {
  final bool isObscure = true;
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: SvgPicture.asset(
              vectorLogin1,
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height * 0.25,
            ),
          ),

          Positioned(
            bottom: 0,
            right: 0,
            child: SvgPicture.asset(
              vectorLogin2,
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height * 0.23,
            ),
          ),

          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 70),  
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.13,
                    width: MediaQuery.of(context).size.height * 0.13,
                    child: Image.asset(logoMocap, fit: BoxFit.contain,),
                  ),
                  Text(
                    "Mocap",
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colors.cyan[800],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "INFORMATICS ENGINEERING MOBILE APPLICATION COMMUNITY UIN MAULANA MALIK IBRAHIM MALANG",
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 50),

                  /// Bagian Form untuk textfield Di jadikan sebagai widget berbeda, berada di folder widgets
                  Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Username",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextFieldWidget(
                          inputType: TextInputType.emailAddress,
                          hint: "Masukkan Alamat Email",
                          obscureText: false,
                          controller: TextEditingController(),
                          errorMessage: "Email tidak boleh kosong",
                        ),
                        SizedBox(height: 50),
                        Text(
                          "Password",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextFieldWidget(
                          inputType: TextInputType.emailAddress,
                          hint: "Masukan Password",
                          obscureText: false,
                          controller: TextEditingController(),
                          errorMessage: "Email tidak boleh kosong",
                          suffixIcon: GestureDetector(
                            onTap: () {},
                            child: Align(
                              widthFactor: 1.0,
                              heightFactor: 1.0,
                              child: Icon(
                                isObscure
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 100),
                        Center(
                          child: ButtomWidget(
                            borderRadius: 20,
                            width: 250,
                            text: "LOGIN",
                            textSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
