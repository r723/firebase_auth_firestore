import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider/home_provider.dart';
import 'package:flutter_application_1/service/utils.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../model/to_do_model.dart';
import '../theme/palette.dart';
import '../theme/routes.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("To-Do"),
        actions: [
          IconButton(
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
              await navigator.pushNamedAndRemoveUntil(Routes.LOGIN);
            },
            icon: const Icon(Icons.logout),
          )
        ],
      ),
      body: const HomeUi(),
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
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          _openBottomSheet();
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
              ? ListView.separated(
                  separatorBuilder: (c, i) {
                    return const Divider(
                      color: Palette.black,
                    );
                  },
                  itemCount: listOfTodos.length,
                  itemBuilder: (c, i) {
                    return Container(
                      padding: const EdgeInsets.only(left: 16, right: 16),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      listOfTodos[i].title ?? "",
                                      style: const TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600),
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
                                Text(
                                  DateFormat('yyyy-MM-dd – kk:mm').format(
                                      listOfTodos[i].createdAt!.toDate()),
                                  style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              IconButton(
                                  onPressed: () {
                                    _openBottomSheet(
                                        listOfTodo: listOfTodos[i],
                                        isFromEdit: true);
                                  },
                                  icon: const Icon(Icons.edit)),
                              IconButton(
                                  onPressed: () {
                                    Widget okButton = TextButton(
                                      child: const Text("OK"),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                        FirebaseFirestore.instance
                                            .collection("user")
                                            .doc(FirebaseAuth
                                                .instance.currentUser!.uid)
                                            .collection("todos")
                                            .doc(listOfTodos[i].collectionId)
                                            .delete()
                                            .then((value) {
                                          showToast("Deleted");
                                        });
                                      },
                                    );
                                    Widget cancleButton = TextButton(
                                      child: const Text("Cancel"),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                    );
                                    AlertDialog alert = AlertDialog(
                                      title: const Text("Alert!!"),
                                      content: const Text(
                                          "Are you sure you want to delete?"),
                                      actions: [okButton, cancleButton],
                                    );

                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return alert;
                                      },
                                    );
                                  },
                                  icon:
                                      const Icon(Icons.delete_forever_outlined))
                            ],
                          )
                        ],
                      ),
                    );
                  },
                )
              : const Center(child: Text("Click on fab to add data"));
        });
  }

  void _openBottomSheet(
      {ToDoModel? listOfTodo, bool isFromEdit = false}) async {
    showModalBottomSheet<void>(
      isScrollControlled: true,
      context: context,
      barrierColor: Palette.appTheme.primaryColor.withOpacity(0.9),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0)),
      ),
      builder: (BuildContext context) {
        return BottomSheetData(
          toDoModel: listOfTodo,
          isFromEdit: isFromEdit,
        );
      },
    );
  }
}

class BottomSheetData extends StatefulWidget {
  final ToDoModel? toDoModel;
  final bool? isFromEdit;
  const BottomSheetData({super.key, required this.toDoModel, this.isFromEdit});

  @override
  State<BottomSheetData> createState() => _BottomSheetDataState();
}

class _BottomSheetDataState extends State<BottomSheetData> {
  TextEditingController titleController = TextEditingController();
  TextEditingController subTitleController = TextEditingController();
  TextEditingController datePicker = TextEditingController();
  HomeProvider? _homeProvider;
  DateTime dateTime = DateTime.now();

  @override
  void initState() {
    super.initState();
    setState(() {
      if (widget.isFromEdit ?? false) {
        titleController.text = widget.toDoModel?.title ?? "";
        subTitleController.text = widget.toDoModel?.subTitle ?? "";
        datePicker.text = DateFormat('yyyy-MM-dd')
            .format(widget.toDoModel!.createdAt!.toDate());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    _homeProvider = Provider.of<HomeProvider>(context);
    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: Container(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
        child: Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          children: <Widget>[
            SizedBox(height: 5.h),
            TextFormField(
              controller: titleController,
              style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: Palette.black),
              decoration: const InputDecoration(hintText: "Enter To Do Title"),
            ),
            SizedBox(height: 2.h),
            TextFormField(
              controller: subTitleController,
              maxLines: 4,
              maxLength: 250,
              decoration: const InputDecoration(hintText: "Enter Description"),
            ),
            SizedBox(height: 4.h),
            TextFormField(
              controller: datePicker,
              style: const TextStyle(color: Palette.black),
              decoration: const InputDecoration(
                  icon: Icon(Icons.calendar_today), //icon of text field
                  labelText: "Enter Date"
                  //label text of field
                  ),
              readOnly: true,
              onTap: () async {
                DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime.now(),
                    lastDate: DateTime(2100));

                if (pickedDate != null) {
                  String formattedDate =
                      DateFormat('yyyy-MM-dd').format(pickedDate);
                  dateTime = pickedDate;
                  setState(() {
                    datePicker.text =
                        formattedDate; //set output date to TextField value.
                  });
                }
              },
            ),
            SizedBox(height: 4.h),
            Container(
              height: 50,
              width: 100.h,
              margin: const EdgeInsets.only(top: 20, bottom: 50),
              decoration: BoxDecoration(
                  color: Palette.appTheme.primaryColor,
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                child: TextButton(
                  onPressed: () async {
                    Map<String, dynamic> map = {
                      "time": dateTime,
                      "title": titleController.text,
                      "subTitle": subTitleController.text,
                      "isEdited": widget.isFromEdit,
                      "collectionId": widget.isFromEdit!
                          ? widget.toDoModel?.collectionId
                          : ""
                    };
                    var res = await _homeProvider!.addOrEditData(map);
                    if (res.isRight()) {
                      Navigator.pop(context);
                    }
                  },
                  child: Text(
                    widget.isFromEdit! ? "Edit" : 'Save',
                    style: const TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
