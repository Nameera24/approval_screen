import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Detail {
  final String role;
  final String documentNo;
  final String status;

  Detail({required this.role, required this.documentNo, required this.status});
}

class Approval extends StatefulWidget {
  const Approval({super.key});

  @override
  State<Approval> createState() => _ApprovalState();
}

class _ApprovalState extends State<Approval> {
  String dropdownValue = 'Yes';
  final List<Detail> details = [
    Detail(role: 'GM Approval', documentNo: 'Po1818-1', status: 'Status'),
    Detail(role: 'GM Approval', documentNo: 'Po1818-1', status: 'pending'),
    Detail(role: 'GM Approval', documentNo: 'Po1818-1', status: 'Status'),
    Detail(role: 'GM Approval', documentNo: 'Po1818-1', status: 'pending'),
  ];
  TextEditingController commentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.1,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 34, 179, 236),
                Color.fromARGB(255, 7, 102, 149),
              ],
            )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 20, left: 20),
                  child: Text(
                    "APPROVAL",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, right: 20),
                  child: SvgPicture.asset(
                    "assets/Icon feather-filter.svg",

                    // ignore: deprecated_member_use
                    color: Colors.white,
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
                padding: EdgeInsets.zero,
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: details.length,
                itemBuilder: (BuildContext context, int index) {
                  final detail = details[index];
                  return Card(
                    margin: const EdgeInsets.only(
                      bottom: 10,
                    ),
                    elevation: 6,
                    child: Container(
                      padding: const EdgeInsets.only(top: 15, bottom: 15),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(195, 236, 232, 232),
                      ),
                      child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Role",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    detail.role,
                                    style: const TextStyle(
                                        color:
                                            Color.fromARGB(255, 34, 179, 236),
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.015,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Document No",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    detail.documentNo,
                                    style: const TextStyle(
                                        color:
                                            Color.fromARGB(255, 34, 179, 236),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.015,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 15),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      "Approve",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      detail.status,
                                      style: const TextStyle(
                                          color:
                                              Color.fromARGB(255, 34, 179, 236),
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.015,
                              ),
                              Row(
                                children: const [
                                  Text(
                                    "Comment",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.02,
                              ),
                              TextField(
                                controller: commentController,
                                maxLines: 2,
                                decoration: InputDecoration(
                                  labelText: 'Enter your Comment',
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Color.fromARGB(255, 34, 179, 236),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Color.fromARGB(255, 34, 179, 236),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.03,
                              ),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.04,
                                      width: MediaQuery.of(context).size.width *
                                          0.2,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: const Color.fromARGB(
                                              255, 34, 179, 236),
                                        ),
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: DropdownButton<String>(
                                          value: dropdownValue,
                                          icon: const Padding(
                                            padding: EdgeInsets.only(left: 15),
                                            child: Icon(Icons.arrow_drop_down,
                                                color: Color.fromARGB(
                                                    255, 73, 162, 206)),
                                          ),
                                          iconSize: 22,
                                          style: const TextStyle(
                                              fontSize: 14,
                                              color: Color.fromARGB(
                                                  255, 34, 179, 236),
                                              fontWeight: FontWeight.w500),
                                          onChanged: (newvalue) {
                                            setState(() {
                                              dropdownValue = newvalue!;
                                            });
                                          },
                                          underline: Container(),
                                          items: <String>[
                                            'Yes',
                                            'No',
                                          ].map<DropdownMenuItem<String>>(
                                              (String value) {
                                            return DropdownMenuItem<String>(
                                              value: value,
                                              child: Text(
                                                value,
                                              ),
                                            );
                                          }).toList(),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.05,
                                      width: MediaQuery.of(context).size.width *
                                          0.22,
                                      decoration: BoxDecoration(
                                          gradient: const LinearGradient(
                                              end: AlignmentDirectional
                                                  .bottomStart,
                                              colors: [
                                                Color.fromARGB(
                                                    255, 34, 179, 236),
                                                Color.fromARGB(255, 7, 102, 149)
                                              ]),
                                          borderRadius:
                                              BorderRadius.circular(4)),
                                      child: TextButton(
                                          style: TextButton.styleFrom(
                                              // ignore: deprecated_member_use
                                              primary: Colors.white),
                                          onPressed: () {},
                                          child: const Text(
                                            "Done",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white),
                                          )),
                                    )
                                  ]),
                            ],
                          )),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
