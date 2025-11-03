import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';
import 'package:nextup/utils/tag_filt.dart';

class SearchResults extends StatefulWidget {
  const SearchResults({super.key});

  @override
  State<SearchResults> createState() => _SearchResultsState();
}

class _SearchResultsState extends State<SearchResults> {
  final List<String> serviceList = [
    'Beard',
    'Facial',
    'Hair Cut',
    'Hair Spa',
    'Make Up',
    'Massage',
  ];
  String? selectedService;

  void _serviceTypeSheet() {
    showModalBottomSheet(
      isScrollControlled: true,
      showDragHandle: true,
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (BuildContext context, setModalState) {
            return Container(
              height: MediaQuery.of(context).size.height * 0.6,
              width: MediaQuery.of(context).size.height * 0.55,
              decoration: BoxDecoration(),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 26.0,
                  right: 26.0,
                  bottom: 48.0,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Service Type',
                          style: GoogleFonts.merriweather(
                            fontSize: 26.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: Icon(Icons.close, size: 28.0),
                        ),
                      ],
                    ),

                    SizedBox(height: 16.0),
                    Expanded(
                      child: ListView.builder(
                        itemCount: serviceList.length,
                        itemBuilder: (BuildContext context, int index) {
                          bool isChecked =
                              serviceList[index] == selectedService;
                          return ListTile(
                            onTap: () {
                              setModalState(() {
                                if (selectedService == serviceList[index]) {
                                  selectedService = null;
                                } else {
                                  selectedService = serviceList[index];
                                }
                              });
                            },
                            title: Text(
                              serviceList[index],
                              style: GoogleFonts.poppins(),
                            ),
                            trailing: isChecked
                                ? Icon(Icons.check, color: Colors.green)
                                : null,
                          );
                        },
                      ),
                    ),

                    // ✅ Buttons
                    if (selectedService == null)
                      // Only Apply Button (when nothing selected)
                      SizedBox(
                        width: double.infinity,
                        height: 48,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text("Apply"),
                        ),
                      )
                    else
                      // Clear + Apply Buttons (when selected)
                      Row(
                        children: [
                          Expanded(
                            child: OutlinedButton(
                              onPressed: () {
                                setState(() {
                                  selectedService = null;
                                });
                              },
                              child: const Text("Clear"),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text("Apply"),
                            ),
                          ),
                        ],
                      ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,

      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 243, 112, 156),
        title: Text(
          'Search Results',
          style: GoogleFonts.merriweather(
            fontWeight: FontWeight.w400,
            fontSize: 18.0,
            color: Colors.white,
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.only(top: 28.0, left: 22.0, right: 22.0),
        child: Column(
          children: [
            // search bar
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Search Bar
                Container(
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: const Color.fromARGB(255, 252, 252, 252),
                    border: Border.all(
                      color: const Color.fromARGB(255, 209, 209, 209),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: TextField(
                      textCapitalization: TextCapitalization.words,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(Icons.search),
                        hint: Text(
                          'Search for shops...',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                //ex icon 1
                GestureDetector(
                  onTap: _serviceTypeSheet,
                  child: TagFilt(icon: Icons.sell),
                ),

                //ex icon 2
                TagFilt(icon: Icons.sort),
              ],
            ),

            SizedBox(height: 32.0),

            // Search botton
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color.fromARGB(255, 29, 92, 29),
                border: BoxBorder.all(
                  color: const Color.fromARGB(255, 51, 133, 51),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Search text
                    Text(
                      'Search',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 40.0),

            Icon(Icons.search, size: 60.0, color: Colors.grey.shade400),

            SizedBox(height: 40.0),

            Text(
              'Search Shops',
              style: GoogleFonts.merriweather(fontSize: 20.0),
            ),

            SizedBox(height: 12.0),

            Text(
              'Enter a search term or slect a filter to find shops',
              style: GoogleFonts.poppins(fontSize: 12.0),
            ),
          ],
        ),
      ),
    );
  }
}
