import 'package:dw_babershop/src/core/ui/constants.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {

  const LoginPage({ super.key });

   @override
   Widget build(BuildContext context) {
       return Scaffold(
        backgroundColor: Colors.black,
           body: DecoratedBox(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: 
                AssetImage('assets/images/background_image_chair.jpg'),
                opacity: 0.2,
                fit:  BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: CustomScrollView(
                slivers: [
                  SliverFillRemaining(
                    hasScrollBody: false,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/imgLogo.png'),
                            const SizedBox(
                              height: 24,
                            ),
                            TextFormField(
                              decoration: const InputDecoration(
                                label: Text('Email'),
                                hintText: 'E-mail',
                                hintStyle: TextStyle(color: Colors.black),
                                floatingLabelBehavior: FloatingLabelBehavior.never,
                                labelStyle: TextStyle(color: Colors.black)
                              ),
                            ),
                            const SizedBox(height: 24,),
                            TextFormField(
                              decoration: const InputDecoration(
                                label: Text('Senha'),
                                hintText: 'Senha',
                                hintStyle: TextStyle(color: Colors.black),
                                floatingLabelBehavior: FloatingLabelBehavior.never,
                                labelStyle: TextStyle(color: Colors.black)
                              ),
                            ),
                            const SizedBox(height: 16,),
                            const Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Esqueceu a senha',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: ColorsConstants.brow,
                                ),)
                            ),
                            const SizedBox(height: 24,),
                            ElevatedButton(
                              onPressed: (){},
                              style: ElevatedButton.styleFrom(
                                minimumSize:  const Size.fromHeight(56),
                              ), 
                              child: const Text('ACESSAR'),
                              )
                          ],
                        ),
                        const Align(
                          alignment: Alignment.bottomCenter,
                          child: Text('Criar Conta', style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          )),
                        ),
                        
                      ],
                    ),
                  )
                ],
              ),
            ),
           )
       );
  }
}