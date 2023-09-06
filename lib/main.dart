import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StolenFinder',
      theme: ThemeData(
        primaryColor: Colors.blue[700],
        visualDensity: VisualDensity.adaptivePlatformDensity,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 1,
          iconTheme: IconThemeData(color: Colors.black87),
        ),
        iconTheme: IconThemeData(color: Colors.blue[700]),
      ),
      home: IPhonePrototype(),
    );
  }
}

class IPhonePrototype extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: SafeArea(
        child: Center(
          child: Container(
            width: 375,
            height: 812,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
              boxShadow: [
                BoxShadow(
                    blurRadius: 10, color: Colors.black12, spreadRadius: 5)
              ],
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    "StolenFinder",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue[700]),
                  ),
                ),
                Expanded(child: SettingsPage()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(15.0),
      children: [
        SettingTile(
            icon: Icons.account_circle,
            title: 'Account Management',
            page: AccountManagementPage()),
        SettingTile(
            icon: Icons.notifications,
            title: 'Notifications',
            page: NotificationSettingsPage()),
        SettingTile(
            icon: Icons.lock,
            title: 'Privacy Settings',
            page: PrivacySettingsPage()),
        SettingTile(
            icon: Icons.badge,
            title: 'Collaboration with Officials',
            page: CollaborationPage()),
        SettingTile(
            icon: Icons.report_problem,
            title: 'Issue Reporting',
            page: IssueReportingPage()),
        SettingTile(
            icon: Icons.contact_mail, title: 'Contact Us', page: ContactPage()),
        SettingTile(
            icon: Icons.local_hospital,
            title: 'Emergency Services',
            page: EmergencyServicesPage()),
        SettingTile(
            icon: Icons.help, title: 'Help & Support', page: HelpSupportPage()),
      ],
    );
  }
}

class SettingTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final Widget page;

  SettingTile({required this.icon, required this.title, required this.page});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(vertical: 8.0),
      leading: Icon(icon, size: 28.0),
      title: Text(title,
          style: TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.bold,
              fontSize: 20)),
      trailing: Icon(Icons.arrow_forward_ios),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
    );
  }
}

class AccountManagementPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Account Management")),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: [
            ListTile(
              title: Text("Name"),
              subtitle: Text("John Doe"),
              trailing: Icon(Icons.edit),
              onTap: () {},
            ),
            ListTile(
              title: Text("Email"),
              subtitle: Text("johndoe@example.com"),
              trailing: Icon(Icons.edit),
              onTap: () {},
            ),
            // ... other account details ...
          ],
        ),
      ),
    );
  }
}

class NotificationSettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Notification Settings")),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: [
            SwitchListTile(
              title: Text("Toggle Notifications"),
              value: true,
              onChanged: (bool value) {},
            ),
            ListTile(
              title: Text("Notification Radius"),
              subtitle: Slider(
                value: 50,
                onChanged: (double value) {},
                min: 0,
                max: 100,
                divisions: 5,
                label: "50 miles",
              ),
            ),
            // ... other notification settings ...
          ],
        ),
      ),
    );
  }
}

class PrivacySettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Privacy Settings")),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: [
            SwitchListTile(
              title: Text("Visibility on Map"),
              value: true,
              onChanged: (bool value) {},
            ),
            SwitchListTile(
              title: Text("Report Visibility"),
              value: true,
              onChanged: (bool value) {},
            ),
            // ... other privacy settings ...
          ],
        ),
      ),
    );
  }
}

class CollaborationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Collaboration with Officials")),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: [
            ListTile(
              title: Text("Register as an Official"),
              onTap: () {},
            ),
            ListTile(
              title: Text("Contact Local Law Enforcement"),
              onTap: () {},
            ),
            // ... other collaboration details ...
          ],
        ),
      ),
    );
  }
}

class HelpSupportPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Help & Support")),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: [
            ListTile(
              title: Text("FAQs"),
              onTap: () {},
            ),
            ListTile(
              title: Text("Customer Support Contact"),
              subtitle: Text("support@stolenfinder.com"),
              onTap: () {},
            ),
            // ... other help & support details ...
          ],
        ),
      ),
    );
  }
}

class IssueReportingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Issue Reporting")),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: [
            ListTile(
              title: Text("Report Item Issue"),
              onTap: () {},
            ),
            ListTile(
              title: Text("Report Owner Issue"),
              onTap: () {},
            ),
            ListTile(
              title: Text("Report Locator Issue"),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Contact Us")),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: [
            ListTile(
              title: Text("Contact App Company"),
              subtitle: Text("info@stolenfinder.com"),
              onTap: () {},
            ),
            ListTile(
              title: Text("Contact Local Services"),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class EmergencyServicesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Emergency Services")),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: [
            ListTile(
              title: Text("Call 000"),
              onTap: () {},
            ),
            ListTile(
              title: Text("Call Fire Department"),
              onTap: () {},
            ),
            ListTile(
              title: Text("Call Ambulance"),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
