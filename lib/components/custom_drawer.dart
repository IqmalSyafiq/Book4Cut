import 'package:book4cut/pages/appointment.dart';
import 'package:flutter/material.dart';

import 'bottom_user_info.dart';
import 'custom_list_tile.dart';
import 'drawer/header.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  bool _isCollapsed = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AnimatedContainer(
        curve: Curves.easeInOutCubic,
        duration: const Duration(milliseconds: 500),
        width: _isCollapsed ? 300 : 70,
        margin: const EdgeInsets.only(bottom: 10, top: 10),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomListTile(
                isCollapsed: _isCollapsed,
                icon: Icons.home_outlined,
                title: 'Home',
                iconImage: 'lib/images/home.png',
                infoCount: 0,
              ),
              CustomListTile(
                isCollapsed: _isCollapsed,
                icon: Icons.calendar_today,
                title: 'Your Appointment',
                iconImage: 'lib/images/calendar-clock.png',
                infoCount: 0,
              ),
              CustomListTile(
                isCollapsed: _isCollapsed,
                icon: Icons.message_rounded,
                title: 'Messages',
                iconImage: 'lib/images/envelope.png',
                infoCount: 8,
              ),
              const Divider(color: Colors.grey),
              const Spacer(),
              CustomListTile(
                isCollapsed: _isCollapsed,
                icon: Icons.notifications,
                title: 'Notifications',
                iconImage: 'lib/images/bell.png',
                infoCount: 2,
              ),
              CustomListTile(
                isCollapsed: _isCollapsed,
                icon: Icons.settings,
                title: 'Settings',
                iconImage: 'lib/images/settings.png',
                infoCount: 0,
              ),
              const SizedBox(height: 10),
              BottomUserInfo(isCollapsed: _isCollapsed),
              Align(
                alignment: _isCollapsed
                    ? Alignment.bottomRight
                    : Alignment.bottomCenter,
                child: IconButton(
                  splashColor: Colors.transparent,
                  icon: Icon(
                    _isCollapsed
                        ? Icons.arrow_back_ios
                        : Icons.arrow_forward_ios,
                    color: Colors.black,
                    size: 16,
                  ),
                  onPressed: () {
                    setState(() {
                      _isCollapsed = !_isCollapsed;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
