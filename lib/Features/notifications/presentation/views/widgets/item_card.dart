import 'package:erp/utils/app_images.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Card(
            shape: ShapeBorder.lerp(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(28),
              ),
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(28),
              ),
              0.5,
            ),
            color: const Color(0xFFF9FBFB),
            child: ListTile(
              leading: Image.asset(
                Assets.imagesNotf,
                width: 40,
              ),
              title: const Text(
                'Kareem Mahmoud',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: const Text('Receipt Report (01)'),
              trailing: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFF5CDA67),
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: const Color(0xFF427469),
                    width: 1.5,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 3,
                      offset: const Offset(1, 2),
                    ),
                  ],
                ),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(20),
                    onTap: () {},
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                      child: Text(
                        'View',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
