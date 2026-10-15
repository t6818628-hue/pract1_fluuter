import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mockups',
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = const [
    ProfileScreen(),
    MeditateScreen(),
    CourseScreen(),
    SignInScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Профиль'),
          BottomNavigationBarItem(
              icon: Icon(Icons.self_improvement), label: 'Медитация'),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: 'Курс'),
          BottomNavigationBarItem(icon: Icon(Icons.login), label: 'Вход'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xFF5265FF),
        unselectedItemColor: const Color(0xFF9CA2A9),
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  static const Color indigo = Color(0xFF5265FF);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(Icons.arrow_back, color: Color(0xFF09101D)),
        centerTitle: true,
        title: const Text(
          'Organizer',
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(Icons.more_vert, color: Color(0xFF09101D), size: 22),
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
          child: Column(
            children: [
              Container(
                width: 130,
                height: 130,
                margin: const EdgeInsets.only(top: 8),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/avatar.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text(
                  'Albert Flores',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF09101D),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _StatBlock(number: '2,368', label: 'Followers'),
                    _StatBlock(number: '346', label: 'Following'),
                    _StatBlock(number: '13', label: 'Events'),
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    width: 110,
                    height: 44,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: indigo,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: const Text(
                      'Follow',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Container(
                    height: 44,
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: const Color(0xFFD1D2DF)),
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: const Row(
                      children: [
                        Icon(Icons.chat_bubble_outline,
                            size: 18, color: Color(0xFF525B68)),
                        SizedBox(width: 8),
                        Text(
                          'Messages',
                          style: TextStyle(
                              color: Color(0xFF525B68), fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('About',
                        style: TextStyle(color: indigo, fontSize: 15)),
                    Text('Events',
                        style: TextStyle(
                            color: Color(0xFF9CA2A9), fontSize: 15)),
                    Text('Reviews',
                        style: TextStyle(
                            color: Color(0xFF9CA2A9), fontSize: 15)),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(width: 60, height: 3, color: indigo),
                  Container(
                      width: 60, height: 3, color: Colors.transparent),
                  Container(
                      width: 60, height: 3, color: Colors.transparent),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 28),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'About',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF09101D),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 12),
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, '
                  'sed do eiusmod tempor incididunt ut labore et dolore '
                  'magna aliqua. Ut enim ad minim veniam, quis nostrud '
                  'exercitation ullamco laboris nisi ut aliquip ex ea '
                  'commodo consequat.\n\n'
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, '
                  'sed do eiusmod tempor incididunt ut labore et dolore '
                  'magna aliqua. Ut enim ad minim veniam, quis nostrud.',
                  style: TextStyle(
                    fontSize: 13,
                    height: 1.6,
                    color: Color(0xFF525B68),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 8),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Read more...',
                    style: TextStyle(color: indigo, fontSize: 13),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _StatBlock extends StatelessWidget {
  final String number;
  final String label;

  const _StatBlock({required this.number, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          number,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color(0xFF09101D),
          ),
        ),
        Text(
          label,
          style: const TextStyle(fontSize: 13, color: Color(0xFF9CA2A9)),
        ),
      ],
    );
  }
}

class MeditateScreen extends StatelessWidget {
  const MeditateScreen({super.key});

  static const Color teal = Color(0xFF039EA2);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(Icons.arrow_back, color: Color(0xFF09101D)),
        actions: const [
          Icon(Icons.more_vert, color: Color(0xFF09101D), size: 22),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 230,
                decoration: const BoxDecoration(
                  color: Color(0xFFF2C94C),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 260,
                    height: 220,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/meditate.png'),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Peter Mach',
                    style: TextStyle(
                        fontSize: 13, color: Color(0xFF9CA2A9)),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 4),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Mind Deep Relax',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF263238),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 12),
                child: Text(
                  'Join the Community as we prepare over 33 days to relax '
                  'and feel joy with the Mind and happy meditation session '
                  'across the World.',
                  style: TextStyle(
                    fontSize: 13,
                    height: 1.5,
                    color: Color(0xFF4F6163),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24, bottom: 24),
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    color: teal,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: const Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.play_arrow,
                            color: Colors.white, size: 26),
                        SizedBox(width: 8),
                        Text(
                          'Play Next Session',
                          style: TextStyle(
                              color: Colors.white, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const _SessionCard(
                title: 'Sweet Memories',
                date: 'December 29 Pre-Launch',
              ),
              const _SessionCard(
                title: 'A Day Dream',
                date: 'December 29 Pre-Launch',
              ),
              const _SessionCard(
                title: 'Mind Explore',
                date: 'December 29 Pre-Launch',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SessionCard extends StatelessWidget {
  final String title;
  final String date;

  const _SessionCard({required this.title, required this.date});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            color: Color(0x14000000),
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 46,
            height: 46,
            decoration: BoxDecoration(
              color: const Color(0xFF039EA2),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Icon(
                Icons.music_note, color: Colors.white, size: 24),
          ),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF263238),
                ),
              ),
              Text(
                date,
                style: const TextStyle(
                    fontSize: 12, color: Color(0xFF9CA2A9)),
              ),
            ],
          ),
          const SizedBox(width: 100),
          const Icon(Icons.more_vert,
              color: Color(0xFF9CA2A9), size: 20),
        ],
      ),
    );
  }
}

class CourseScreen extends StatelessWidget {
  const CourseScreen({super.key});

  static const Color indigo = Color(0xFF5558FC);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(Icons.arrow_back, color: Color(0xFF09101D)),
        actions: const [
          Icon(Icons.favorite_border, color: Color(0xFF09101D), size: 22),
          SizedBox(width: 16),
          Icon(Icons.more_vert, color: Color(0xFF09101D), size: 22),
          SizedBox(width: 8),
        ],
        title: const Text(
          '3D Design Basic',
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 240,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: const DecorationImage(
                    image: AssetImage('assets/render3d.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 16),
                child: Row(
                  children: [
                    Icon(Icons.star, color: Color(0xFFF2C94C), size: 20),
                    SizedBox(width: 4),
                    Text(
                      '4,5',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF09101D),
                      ),
                    ),
                    SizedBox(width: 6),
                    Text('4,9',
                        style: TextStyle(
                            color: Color(0xFF9CA2A9), fontSize: 13)),
                    SizedBox(width: 6),
                    Text('·',
                        style: TextStyle(
                            color: Color(0xFF9CA2A9), fontSize: 13)),
                    SizedBox(width: 6),
                    Text(
                      'Best Seller',
                      style: TextStyle(
                          color: Color(0xFF9CA2A9), fontSize: 13),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 12),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '3D Design Basic',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF09101D),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 12),
                child: Text(
                  'In this course you will learn how to build a space to a '
                  '3-dimensional product. There are 24 premium learning '
                  'videos for you.',
                  style: TextStyle(
                    fontSize: 13,
                    height: 1.5,
                    color: Color(0xFF4F6163),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    Icon(Icons.play_circle_outline,
                        color: Color(0xFF09101D), size: 20),
                    SizedBox(width: 8),
                    Text(
                      '24 Lessons (20 hours)',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF09101D),
                      ),
                    ),
                    SizedBox(width: 110),
                    Text(
                      'See all',
                      style: TextStyle(color: indigo, fontSize: 13),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x14000000),
                        blurRadius: 10,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 56,
                        height: 56,
                        decoration: BoxDecoration(
                          color: const Color(0xFF7834F9),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Icon(Icons.view_in_ar,
                            color: Colors.white, size: 30),
                      ),
                      const SizedBox(width: 12),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Introduction to 3D',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF09101D),
                            ),
                          ),
                          Text(
                            '20 mins',
                            style: TextStyle(
                                fontSize: 12,
                                color: Color(0xFF9CA2A9)),
                          ),
                        ],
                      ),
                      const SizedBox(width: 90),
                      const Icon(Icons.check_circle,
                          color: indigo, size: 22),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 28, bottom: 24),
                child: Container(
                  width: double.infinity,
                  height: 56,
                  decoration: BoxDecoration(
                    color: indigo,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: const Center(
                    child: Text(
                      'Enroll - \$24.99',
                      style: TextStyle(
                          color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  static const Color teal = Color(0xFF039EA2);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: teal,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 24),
                child: Text(
                  'medinow',
                  style: TextStyle(
                    fontSize: 44,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 8),
                child: Text(
                  'Meditate With Us!',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
              const SizedBox(height: 40),
              Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: const Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.apple,
                          size: 22, color: Color(0xFF263238)),
                      SizedBox(width: 8),
                      Text(
                        'Sign in with Apple',
                        style: TextStyle(
                            color: Color(0xFF263238),
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: const Color(0xFFCDFDFE),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: const Center(
                  child: Text(
                    'Continue with Email or Phone',
                    style: TextStyle(
                        color: Color(0xFF263238),
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: const Color(0x33FFFFFF),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: const Center(
                  child: Text(
                    'Continue With Google',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Container(
                height: 170,
                alignment: Alignment.bottomCenter,
                child: const Icon(
                  Icons.self_improvement,
                  size: 160,
                  color: Color(0xFFCDFDFE),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
