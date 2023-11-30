import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  "https://e1.pxfuel.com/desktop-wallpaper/74/343/desktop-wallpaper-samsung-galaxy-themes-list-galaxy-themes.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          width: double.infinity,
          height: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  children: [
                    Icon(
                      CupertinoIcons.ellipsis,
                      color: Color.fromARGB(255, 255, 255, 255),
                      size: 32,
                    ),
                    Spacer(),
                    CircleAvatar(radius: 40,

                      foregroundImage: NetworkImage('https://scontent.fdac135-1.fna.fbcdn.net/v/t39.30808-6/370483289_3797538253861997_7525507580788778420_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=efb6e6&_nc_eui2=AeHnUZFM-j-zmt-6BxGlCw_5_8FoPY6eDpX_wWg9jp4OlRFfY8tyAf15ck5IDkZ6TZ5BcAc0YyHN19L-5mKnAwL5&_nc_ohc=9_vEL1CgLqkAX9n3Z2h&_nc_ht=scontent.fdac135-1.fna&oh=00_AfDgBCMl0bDxgLBwdATI6RGK7SU3RJOrpfxhmPiV0HKPsg&oe=656D076A'),)
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                const SizedBox(
                  height: 25,
                ),
                const Text("Hi Gopal,",style: TextStyle(color: Color.fromARGB(255, 109, 44, 44)),),
                const SizedBox(
                  height: 10,
                ),
                const Text("Where do you want to go today?",style: TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
                const SizedBox(
                  height: 24,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(179, 155, 16, 16),
                    border: Border.all(
                      color: const Color.fromARGB(255, 143, 100, 100),
                    ),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('From'),
                          SizedBox(height: 10),
                          Text(
                            "Sylhet",
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text('To'),
                          SizedBox(height: 10),
                          Text(
                            "Chittagong",
                            style: TextStyle(
                              fontSize: 33,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 70, 73, 58),
                        child: IconButton(
                          icon:
                              const Icon(Icons.swap_horiz, color: Color.fromARGB(255, 184, 77, 77)),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(179, 100, 30, 30),
                    border: Border.all(
                      color: const Color.fromARGB(255, 90, 26, 26),
                    ),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  padding: const EdgeInsets.all(16),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Passengers'),
                          SizedBox(height: 9),
                          Text(
                            "1 Adult",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text('Departure Date'),
                          SizedBox(height: 8),
                          Text(
                            "29/11/2023",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Type'),
                          SizedBox(height: 8),
                          Text(
                            "First-Class",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Center(
                  child: SizedBox(
                    width: 400,
                    height: 70,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Search'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
