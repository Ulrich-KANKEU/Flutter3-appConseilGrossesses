import 'package:flutter/material.dart';
import 'calendar_page.dart';
import 'profile_page.dart';
import 'notif_page.dart';
import 'package:app_cc_flutter/utils/constants.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/img1.jpeg", width: 200),
            SizedBox(height: 20),
            Text(
              "Bump Buddy 2.0",
              style: kTitleTextStyle,
            ),
            SizedBox(height: 20),
            Text(
              "Bienvenue sur Bump Buddy, votre compagnon de confiance pour une grossesse sereine et épanouie!",
              style: TextStyle(
                fontSize: 25,
                fontFamily: "Montserrat",
                color: kSecondaryColor,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    color: kSecondaryColor,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: kDefaultPadding * 2,
                      vertical: kDefaultPadding,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CalendarPage()),
                    );
                  },
                  child: Text('Calendrier'),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    color: kSecondaryColor,
                    onColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: kDefaultPadding * 2,
                      vertical: kDefaultPadding,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProfilePage()),
                    );
                  },
                  child: Text('Profil'),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    color: kSecondaryColor,
                    onColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: kDefaultPadding * 2,
                      vertical: kDefaultPadding,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => NotifPage()),
                    );
                  },
                  child: Text('Notifications'),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              "Découvrez nos fonctionnalités pour une grossesse sereine et épanouie :",
              style: TextStyle(
                fontSize: 18,
                fontFamily: "Montserrat",
                color: kSecondaryColorDark,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "- Calendrier de grossesse : Suivez le développement de votre bébé semaine par semaine.",
                  style: kBodyTextStyle,
                ),
                SizedBox(height: 10),
                Text(
                  "- Profil utilisateur : Personnalisez votre expérience avec Bump Buddy.",
                  style: kBodyTextStyle,
                ),
                SizedBox(height: 10),
                Text(
                  "- Notifications : Recevez des rappels et des conseils pour votre grossesse.",
                  style: kBodyTextStyle,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}