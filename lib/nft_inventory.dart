import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:url_launcher/url_launcher.dart';

class MyNftInventory extends StatefulWidget {
  const MyNftInventory({super.key});

  @override
  State<MyNftInventory> createState() => _MyNftInventoryState();
}

class _MyNftInventoryState extends State<MyNftInventory> {
  // open external link
  final Uri _url = Uri.parse('https://motimoti.xyz/nft-minting');
  Future<void> _launchUrl() async {
    if (!await launchUrl(_url, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $_url';
    }
  }

  var nft_image = 'assets/A4.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            // const SizedBox(
            //   height: 30,
            // ),
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              TextButton(
                style: TextButton.styleFrom(
                  shape: const BeveledRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                  ),
                  foregroundColor: Colors.black,
                  backgroundColor: const Color(0xffE9E9FC),
                  textStyle: const TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/nft_attribute');
                },
                child: Column(
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "Mo",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 43, 43, 43),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 15,
                        ),
                        Image.asset(
                          'assets/level.png',
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          "Level 1",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 10, right: 20),
                          child: StepProgressIndicator(
                            totalSteps: 100,
                            currentStep: 32,
                            size: 20,
                            fallbackLength: 180,
                            padding: 0,
                            selectedColor: Color.fromARGB(255, 120, 120, 219),
                            unselectedColor: Color.fromARGB(255, 255, 255, 255),
                            roundedEdges: Radius.circular(5),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                  ],
                ),
              ),
              TextButton(
                  style: TextButton.styleFrom(
                    shape: const BeveledRectangleBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    foregroundColor: Colors.black,
                    backgroundColor: const Color.fromARGB(255, 247, 247, 255),
                    textStyle: const TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/nft_attribute');
                    Navigator.pushNamed(context, '/wallet');
                  },
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 40,
                          ),
                          Image.asset(
                            'assets/earningspeed.png',
                          ),
                          const Text(
                            "11",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(
                            width: 70,
                          ),
                          Image.asset(
                            'assets/luck.png',
                          ),
                          const Text(
                            "11",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(
                            width: 70,
                          ),
                          Image.asset(
                            'assets/lives.png',
                          ),
                          const Text(
                            "5",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                    ],
                  )),
            ]),

            const SizedBox(
              height: 20,
            ),
            InkWell(
              splashColor: Colors.black,
              onTap: () {
                // Navigator.pushNamed(context, '/lesson_stat');
                setState(() {
                  if (nft_image == 'assets/A4.png') {
                    nft_image = 'assets/mofren_goodnight.png';
                  } else {
                    nft_image = 'assets/A4.png';
                  }
                });
              },
              child: Image(
                image: AssetImage(nft_image),
                height: 325,
                width: 325,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  _launchUrl();
                  // Navigator.pushNamed(context, '/webview');
                },
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                child: const Text('Mint Your NFT!')),
            // Image.asset(
            //   'assets/mofren_goodnight.png',
            //   // height: MediaQuery.of(context).size.height,
            //   // width: MediaQuery.of(context).size.width,
            //   fit: BoxFit.cover,
            // ),
          ],
        ),
      ),
    );
  }
}
