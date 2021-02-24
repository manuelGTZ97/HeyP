import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../infrastructure/core/pref_manager.dart';
import '../../components/custom_circle_avatar.dart';
import '../../components/custom_navigation_bar.dart';
import '../../routes/routes.dart';
import '../../utils/app_utils.dart';
import '../../utils/constants.dart';
import '../explore/explore_page.dart';
import '../notifications/notifications_page.dart';
import '../settings/settings_page.dart';
import 'delegates/search_delegate.dart';
import 'home_page.dart';
import 'widgets/add_post_button_widget.dart';
import 'widgets/nav_bar_item_widget.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  PageController _controller;

  final _pages = [
    HomePage(),
    ExplorePage(),
    Container(),
    NotificationsPage(),
    SettingsPage(),
  ];

  final _titles = [
    '',
    'explore'.tr(),
    '',
    'notifications'.tr(),
    'settings'.tr(),
  ];

  @override
  void initState() {
    super.initState();
    _controller = PageController(
      initialPage: _selectedIndex,
    );
  }

  _selectPage(int index) {
    setState(() {
      if (_controller.hasClients) _controller.jumpToPage(index);
      _selectedIndex = index;
    });
  }

  Widget _logoWidget() {
    return Image.asset(
      'assets/images/logo.png',
      height: 30,
    );
  }

  Widget _messagesWidget() {
    return IconButton(
      icon: Icon(
        Icons.message,
        color:
            Prefs.isDark() ? Colors.white.withOpacity(0.87) : kColorPrimaryDark,
      ),
      onPressed: () => Navigator.pushNamed(context, Routes.messages),
    );
  }

  Widget _searchWidget() {
    return IconButton(
      icon: Icon(Icons.search),
      onPressed: () {
        showSearch(
          context: context,
          delegate: PostSearch(),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Prefs.isDark() ? Colors.black : Colors.grey[100],
      appBar: AppBar(
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(5),
          child: CustomCircleAvatar(
            radius: 18,
            url: AppUtils.getAvatar(),
            onTap: () => Navigator.pushNamed(
              context,
              Routes.profile,
            ),
          ),
        ),
        title:
            _selectedIndex == 0 ? _logoWidget() : Text(_titles[_selectedIndex]),
        centerTitle: true,
        actions: [
          _searchWidget(),
          if (_selectedIndex == 0) _messagesWidget(),
        ],
      ),
      body: PageView(
        controller: _controller,
        physics: NeverScrollableScrollPhysics(),
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        children: _pages,
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: AddPostButtonWidget(
          onPressed: () async {
            final result =
                await Navigator.of(context).pushNamed(Routes.addPost);
            if (result != null) {}
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomNavigationBar(
        backgroundColor: Prefs.isDark() ? Color(0xff121212) : Colors.white,
        strokeColor: kColorPink,
        items: [
          NavBarItemWidget(
            onTap: () {
              _selectPage(0);
            },
            image: 'icon_home',
            isSelected: _selectedIndex == 0,
          ),
          NavBarItemWidget(
            onTap: () {
              _selectPage(1);
            },
            image: 'icon_search',
            isSelected: _selectedIndex == 1,
          ),
          NavBarItemWidget(
            onTap: () {},
            image: '',
            isSelected: false,
          ),
          NavBarItemWidget(
            onTap: () {
              _selectPage(3);
            },
            image: 'icon_notifications',
            isSelected: _selectedIndex == 3,
          ),
          NavBarItemWidget(
            onTap: () {
              _selectPage(4);
            },
            image: 'icon_settings',
            isSelected: _selectedIndex == 4,
          ),
        ],
        currentIndex: _selectedIndex,
        elevation: 0,
        // borderRadius: BorderRadius.only(
        //   topLeft: Radius.circular(20),
        //   topRight: Radius.circular(20),
        // ),
      ),
    );
  }
}
