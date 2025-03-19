// ignore_for_file: implicit_call_tearoffs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

import '../../../../core/core.dart';
import '../../../maps/maps_page.dart';
import '../../../shared/shared.dart';

@RoutePage()
class ContactPage extends StatelessWidget {
  final GlobalKey<FormState> _messageKey = GlobalKey();
  final fullNameController = TextEditingController();
  final emailController = TextEditingController();
  final sujetController = TextEditingController();
  final messageController = TextEditingController();
  ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            backgroundColor: Colors.white,
            surfaceTintColor: Colors.white,
            shadowColor: Colors.black45,
            elevation: 2.0,
            forceElevated: true,
            expandedHeight: 150.0,
            flexibleSpace: AppBarContentWidget(),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: MediaQuery.sizeOf(context).height * .7,
              margin: EdgeInsets.only(
                bottom: 15.0,
              ),
              decoration: BoxDecoration(
                color: Colors.amber,
                image: DecorationImage(
                  image: AssetImage("assets/images/IMG-20241113-WA0005.jpg"),
                  alignment: Alignment.topCenter,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.sizeOf(context).width * .2,
              ).copyWith(top: 20.0, bottom: 50.0),
              child: Column(
                spacing: 8.0,
                children: [
                  Text(
                    "Nous Contacter",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: AppStyles.accentColor,
                        ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "Peaces Madagascar Tours",
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                          color: AppStyles.primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "Vous rêvez d’un voyage et avez besoin d’infos ? 🤩 N’hésitez pas à nous contacter ! Remplissez le formulaire ci-dessous, appelez-nous ou écrivez-nous sur les réseaux sociaux. On vous répond au plus vite ! 🚀✨",
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.sizeOf(context).width * .2,
              ),
              child: Column(
                spacing: 25.0,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 15.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 25.0,
                      children: [
                        Expanded(
                          child: Card(
                            color: Colors.white,
                            child: Form(
                              key: _messageKey,
                              child: Container(
                                padding: const EdgeInsets.all(24.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                  children: [
                                    TextFormField(
                                      controller: fullNameController,
                                      decoration: const InputDecoration(
                                        labelText: 'Nom Complet',
                                        border: OutlineInputBorder(),
                                      ),
                                      validator: RequiredValidator(errorText: 'Required'),
                                    ),
                                    const SizedBox(height: 16),
                                    TextFormField(
                                      controller: emailController,
                                      decoration: const InputDecoration(
                                        labelText: 'Email',
                                        border: OutlineInputBorder(),
                                      ),
                                      validator: MultiValidator(
                                        [
                                          RequiredValidator(errorText: 'Required'),
                                          EmailValidator(errorText: 'Email invalide'),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 16),
                                    TextFormField(
                                      controller: sujetController,
                                      decoration: const InputDecoration(
                                        labelText: 'Sujet',
                                        border: OutlineInputBorder(),
                                      ),
                                      validator: RequiredValidator(errorText: 'Required'),
                                    ),
                                    const SizedBox(height: 16),
                                    TextFormField(
                                      controller: messageController,
                                      maxLines: 4,
                                      decoration: const InputDecoration(
                                        labelText: 'Message',
                                        border: OutlineInputBorder(),
                                      ),
                                      validator: RequiredValidator(errorText: 'Required'),
                                    ),
                                    const SizedBox(height: 24),
                                    FilledButton(
                                      onPressed: () {
                                        if (_messageKey.currentState!.validate()) {
                                          ScaffoldMessenger.of(context).showSnackBar(
                                            const SnackBar(
                                              content: Text('Message sent successfully!'),
                                            ),
                                          );
                                        }
                                      },
                                      style: FilledButton.styleFrom(
                                        backgroundColor: AppStyles.accentColor,
                                        padding: const EdgeInsets.symmetric(vertical: 16),
                                      ),
                                      child: const Text('Envoyez'),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            spacing: 10.0,
                            children: [
                              Text(
                                "Tour Operateur",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24.0,
                                ),
                              ),
                              Text(
                                "Spécialisée dans les circuits sur mesure, notre agence met en valeur la côte Est de Madagascar avec des services de haute qualité pour une expérience authentique et inoubliable.",
                              ),
                              SizedBox(height: 10.0),
                              _ContactInfo(
                                icon: Icons.email,
                                title: 'Email',
                                detail: 'peacemadagascartours@gmail.com',
                              ),
                              _ContactInfo(
                                icon: Icons.phone,
                                title: 'Phone',
                                detail: '+261 20 12 345 67',
                              ),
                              _ContactInfo(
                                icon: Icons.location_on,
                                title: 'Address',
                                detail: 'Antananarivo, Madagascar',
                              ),
                              SizedBox(height: 10.0),
                              Row(
                                spacing: 15.0,
                                children: [
                                  SocialNetworkLink(
                                    asset: "assets/logos/icons8-facebook-30.png",
                                    url: "https://www.facebook.com/profile.php?id=61565745594280",
                                    socialNetwork: SocialNetwork.facebook,
                                  ),
                                  SocialNetworkLink(
                                    asset: "assets/logos/icons8-instagram-30.png",
                                    url: "https://www.facebook.com/profile.php?id=61565745594280",
                                    socialNetwork: SocialNetwork.instagram,
                                  ),
                                  SocialNetworkLink(
                                    asset: "assets/logos/icons8-x-50.png",
                                    url: "https://www.facebook.com/profile.php?id=61565745594280",
                                    socialNetwork: SocialNetwork.twitter,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * .5,
                    child: MapsPage(),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(child: Copyright()),
        ],
      ),
    );
  }
}

class _ContactInfo extends StatelessWidget {
  final IconData icon;
  final String title;
  final String detail;

  const _ContactInfo({
    required this.icon,
    required this.title,
    required this.detail,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black38),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        spacing: 15.0,
        children: [
          CircleAvatar(
            backgroundColor: AppStyles.accentColor,
            child: Icon(icon, size: 24, color: Colors.white),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 4.0,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(detail),
            ],
          ),
        ],
      ),
    );
  }
}

class SocialNetworkLink extends StatelessWidget {
  final String asset;
  final String? url;
  final SocialNetwork? socialNetwork;
  const SocialNetworkLink({
    super.key,
    required this.asset,
    this.url,
    this.socialNetwork,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => openSocialNetworkLink(url!, socialNetwork!),
      child: Tooltip(
        message: socialNetwork.toString().split('.')[1],
        child: CircleAvatar(
          backgroundColor: const Color(0xFFDADADA),
          child: Image.asset(
            asset,
            height: 24.0,
            width: 24.0,
            fit: BoxFit.contain,
            filterQuality: FilterQuality.high,
          ),
        ),
      ),
    );
  }
}
