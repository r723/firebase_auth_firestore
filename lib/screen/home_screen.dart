import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider/home_provider.dart';
import 'package:flutter_application_1/service/utils.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../model/to_do_model.dart';
import '../theme/routes.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeUi(),
    );
  }
}

class HomeUi extends StatefulWidget {
  const HomeUi({super.key});

  @override
  State<HomeUi> createState() => _HomeUiState();
}

class _HomeUiState extends State<HomeUi> {
  HomeProvider? homeProvider;
  List<ToDoModel> listOfTodos = [];

  @override
  Widget build(BuildContext context) {
    homeProvider = Provider.of<HomeProvider>(context);
    return Scaffold(
      body: dataList(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: () {
          navigator.navigateTo(Routes.DETAIL,
              arguments: {Args.ISFROMEDIT: false})?.then((value) {
            setState(() {});
          });
        },
      ),
    );
  }

  Widget dataList() {
    return StreamBuilder(
        stream: FirebaseFirestore.instance
            .collection("user")
            .doc(FirebaseAuth.instance.currentUser!.uid)
            .collection("todos")
            .orderBy("createdAt", descending: false)
            .snapshots(),
        builder: (context, snapshot) {
          if (snapshot.data == null) {
            return const Center(child: CircularProgressIndicator());
          }
          listOfTodos.clear();
          for (var element in snapshot.data!.docs) {
            ToDoModel toDoModel = ToDoModel(
                collectionId: element.id,
                createdAt: element.data()["createdAt"],
                title: element.data()["title"],
                subTitle: element.data()["subTitle"],
                isEdited: element.data()["isEdited"]);
            listOfTodos.add(toDoModel);
          }

          return listOfTodos.isNotEmpty
              ? CustomScrollView(
                  slivers: [
                    SliverAppBar(
                      expandedHeight: 25.h,
                      flexibleSpace: FlexibleSpaceBar(
                        background: Stack(
                          children: [
                            Image.asset(
                              'assets/images.jpeg',
                              fit: BoxFit.fill,
                              width: 100.w,
                              height: 150.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 5.h),
                                    const Text(
                                      "Yours",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 26),
                                    ),
                                    const Text(
                                      "Things",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 26),
                                    ),
                                    SizedBox(height: 4.h),
                                    Text(
                                      DateFormat('EEE d MMM')
                                          .format(DateTime.now()),
                                      style:
                                          const TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Text(
                                          "24",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 21),
                                        ),
                                        Text(
                                          "Personal",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12),
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 5.w),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Text(
                                          "15",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 21),
                                        ),
                                        Text(
                                          "Bussiness",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12),
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      actions: [
                        IconButton(
                          onPressed: () async {
                            await FirebaseAuth.instance.signOut();
                            await navigator
                                .pushNamedAndRemoveUntil(Routes.LOGIN);
                          },
                          icon: const Icon(
                            Icons.logout_rounded,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (_, int i) {
                          return Container(
                            padding: const EdgeInsets.only(left: 16, right: 16),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                listOfTodos[i].title ?? "",
                                                style: const TextStyle(
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                              SizedBox(width: 2.w),
                                              Text(listOfTodos[i].isEdited!
                                                  ? "(Edited)"
                                                  : "(New)")
                                            ],
                                          ),
                                          Text(
                                            listOfTodos[i].subTitle ?? "",
                                            style: const TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w300),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          DateFormat('yyyy-MM-dd').format(
                                              listOfTodos[i]
                                                  .createdAt!
                                                  .toDate()),
                                          style: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w300),
                                        ),
                                        Row(
                                          children: [
                                            IconButton(
                                                onPressed: () {
                                                  navigator.navigateTo(
                                                      Routes.DETAIL,
                                                      arguments: {
                                                        Args.TODOITEM:
                                                            listOfTodos[i],
                                                        Args.ISFROMEDIT: true
                                                      })?.then((value) {
                                                    setState(() {});
                                                  });
                                                },
                                                icon: const Icon(Icons.edit)),
                                            IconButton(
                                                onPressed: () {
                                                  Widget okButton = TextButton(
                                                    child: const Text("OK"),
                                                    onPressed: () {
                                                      Navigator.of(context)
                                                          .pop();
                                                      FirebaseFirestore.instance
                                                          .collection("user")
                                                          .doc(FirebaseAuth
                                                              .instance
                                                              .currentUser!
                                                              .uid)
                                                          .collection("todos")
                                                          .doc(listOfTodos[i]
                                                              .collectionId)
                                                          .delete()
                                                          .then((value) {
                                                        showToast("Deleted");
                                                      });
                                                    },
                                                  );
                                                  Widget cancleButton =
                                                      TextButton(
                                                    child: const Text("Cancel"),
                                                    onPressed: () {
                                                      Navigator.of(context)
                                                          .pop();
                                                    },
                                                  );
                                                  AlertDialog alert =
                                                      AlertDialog(
                                                    title:
                                                        const Text("Alert!!"),
                                                    content: const Text(
                                                        "Are you sure you want to delete?"),
                                                    actions: [
                                                      okButton,
                                                      cancleButton
                                                    ],
                                                  );

                                                  showDialog(
                                                    context: context,
                                                    builder:
                                                        (BuildContext context) {
                                                      return alert;
                                                    },
                                                  );
                                                },
                                                icon: const Icon(Icons
                                                    .delete_forever_outlined))
                                          ],
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                const Divider(
                                  color: Colors.blue,
                                  thickness: 1,
                                ),
                              ],
                            ),
                          );
                        },
                        childCount: listOfTodos.length,
                      ),
                    ),
                  ],
                )
              : const Center(child: Text("Click on fab to add data"));
        });
  }
}
