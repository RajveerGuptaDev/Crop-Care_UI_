import 'package:flutter/material.dart';


class ShopPage extends StatelessWidget {
  final List<Map<String, String>> fertilizers = [
    {
      'name': 'Expert Gardener',
      'price': 'Rs.299',
      'image': 'https://i5.walmartimages.com/asr/be16b1ff-d261-458b-b456-5fbed80fe3a7.8a2b9f518fa72a677715a815090388cb.jpeg',
    },
    {
      'name': 'Dr Earth',
      'price': 'Rs.149',
      'image': 'https://i5.walmartimages.com/asr/bf7e23e8-62b2-4672-91f9-610ba9c2d8ff_1.7a505b16dad3034231ff68a1a6571af8.jpeg?odnHeight=450&amp;odnWidth=450&amp;odnBg=FFFFFF',
    },
    {
      'name': 'Organic Plus',
      'price': 'RS.275',
      'image': 'https://www.bigbasket.com/media/uploads/p/l/40008672_3-natures-plus-organic-fertiliser.jpg',
    },
    {
      'name': 'EcoGreen Mix',
      'price': 'Rs.300',
      'image': 'https://cdn.muscleandstrength.com/store/media/catalog/product/cache/all/image/700x700/602f0fa2c1f0d1ba5e241f914e856ff9/e/c/ecogreen-multi-180-vcaps_1.jpg',
    },
    // Add more fertilizers as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fertilizer Shop'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(8.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        itemCount: fertilizers.length,
        itemBuilder: (context, index) {
          final fertilizer = fertilizers[index];
          return Card(
            elevation: 5,
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Image.network(
                    fertilizer['image']!,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    fertilizer['name']!,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Text(
                    fertilizer['price']!,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.green,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}