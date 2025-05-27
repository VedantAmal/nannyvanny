import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  radius: 28,
                  backgroundImage: AssetImage('assets/images/profile.jpg'), // Add your image
                ),
                const SizedBox(width: 12),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Welcome', style: TextStyle(fontSize: 18, color: Colors.black54)),
                    Text('Emily Cyrus', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Color(0xFFD16BA5))),
                  ],
                ),
                const Spacer(),
                Builder(
                  builder: (context) => IconButton(
                    icon: const Icon(Icons.menu, color: Color(0xFFD16BA5), size: 32),
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFFF3C6E8),
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Nanny And\nBabysitting Services',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFF2D2A4A)),
                        ),
                        const SizedBox(height: 16),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF2D2A4A),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                          ),
                          child: const Text('Book Now', style: TextStyle(color: Colors.white)),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Flexible(
                    child: Image.asset(
                      'assets/images/mom_baby.jpg',
                      height: 100,
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 28),
            const Text('Your Current Booking', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Color(0xFF2D2A4A))),
            const SizedBox(height: 12),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 8)],
              ),
              padding: const EdgeInsets.all(18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Text('One Day Package', style: TextStyle(fontSize: 18, color: Color(0xFFD16BA5), fontWeight: FontWeight.bold)),
                      const Spacer(),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFD16BA5),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        ),
                        child: const Text('Start', style: TextStyle(color: Colors.white)),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  // Redesigned date/time layout
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // From date/time
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.calendar_today, size: 18, color: Color(0xFFD16BA5)),
                              SizedBox(width: 6),
                              Text('12.08.2020', style: TextStyle(fontSize: 16)),
                            ],
                          ),
                          SizedBox(height: 4),
                          Row(
                            children: [
                              Icon(Icons.access_time, size: 18, color: Color(0xFFD16BA5)),
                              SizedBox(width: 6),
                              Text('11 pm', style: TextStyle(fontSize: 16)),
                            ],
                          ),
                        ],
                      ),
                      // Arrow icon
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Icon(Icons.arrow_forward, size: 28, color: Color(0xFFD16BA5)),
                      ),
                      // To date/time
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.calendar_today, size: 18, color: Color(0xFFD16BA5)),
                              SizedBox(width: 6),
                              Text('13.08.2020', style: TextStyle(fontSize: 16)),
                            ],
                          ),
                          SizedBox(height: 4),
                          Row(
                            children: [
                              Icon(Icons.access_time, size: 18, color: Color(0xFFD16BA5)),
                              SizedBox(width: 6),
                              Text('07 am', style: TextStyle(fontSize: 16)),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 14),
                  Wrap(
                    alignment: WrapAlignment.center,
                    spacing: 12,
                    runSpacing: 8,
                    children: [
                      OutlinedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.star, color: Color(0xFF2D2A4A)),
                        label: const Text('Rate Us', style: TextStyle(color: Color(0xFF2D2A4A))),
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(color: Color(0xFF2D2A4A)),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                      OutlinedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.location_on, color: Color(0xFF2D2A4A)),
                        label: const Text('Geolocation', style: TextStyle(color: Color(0xFF2D2A4A))),
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(color: Color(0xFF2D2A4A)),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                      OutlinedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.videocam, color: Color(0xFF2D2A4A)),
                        label: const Text('Survillence', style: TextStyle(color: Color(0xFF2D2A4A))),
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(color: Color(0xFF2D2A4A)),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 28),
            const Text('Packages', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Color(0xFF2D2A4A))),
            const SizedBox(height: 12),
            Column(
              children: [
                _packageCard(
                  color: const Color(0xFFF3C6E8),
                  title: 'One Day Package',
                  price: '₹ 2799',
                  description: 'Lorem ipsum dolor sit amet, consectetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam',
                ),
                _packageCard(
                  color: const Color(0xFFB6C9F0),
                  title: 'Three Days Package',
                  price: '₹ 7497',
                  description: 'Lorem ipsum dolor sit amet, consectetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam',
                ),
                _packageCard(
                  color: const Color(0xFFF3C6E8),
                  title: 'Five Days Package',
                  price: '₹ 11495',
                  description: 'Lorem ipsum dolor sit amet, consectetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam',
                ),
                _packageCard(
                  color: const Color(0xFFB6C9F0),
                  title: 'Weekend Package',
                  price: '₹ 7497',
                  description: 'Lorem ipsum dolor sit amet, consectetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _packageCard({required Color color, required String title, required String price, required String description}) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.all(18),
      child: Row(
        children: [
          Icon(Icons.calendar_month, size: 40, color: Colors.white),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF2D2A4A))),
                const SizedBox(height: 6),
                Text(description, style: const TextStyle(fontSize: 13, color: Colors.black54)),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: color == const Color(0xFFF3C6E8) ? const Color(0xFFD16BA5) : const Color(0xFF2D2A4A),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                ),
                child: const Text('Book Now', style: TextStyle(color: Colors.white)),
              ),
              const SizedBox(height: 8),
              Text(price, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFF2D2A4A))),
            ],
          ),
        ],
      ),
    );
  }
} 