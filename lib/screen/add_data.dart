import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider/home_provider.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../model/to_do_model.dart';
import '../theme/palette.dart';

class AddDataClass extends StatefulWidget {
  final ToDoModel? toDoModel;
  final bool isFromEdit;
  const AddDataClass({super.key, this.toDoModel, this.isFromEdit = false});

  @override
  State<AddDataClass> createState() => _AddDataClassState();
}

class _AddDataClassState extends State<AddDataClass> {
  TextEditingController titleController = TextEditingController();
  TextEditingController subTitleController = TextEditingController();
  TextEditingController placeController = TextEditingController();
  TextEditingController datePicker = TextEditingController();
  HomeProvider? _homeProvider;
  DateTime dateTime = DateTime.now();

  @override
  void initState() {
    super.initState();
    setState(() {
      if (widget.isFromEdit) {
        titleController.text = widget.toDoModel?.title ?? "";
        subTitleController.text = widget.toDoModel?.subTitle ?? "";
        placeController.text = widget.toDoModel?.place ?? "";
        datePicker.text = DateFormat('yyyy-MM-dd')
            .format(widget.toDoModel!.createdAt!.toDate());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    _homeProvider = Provider.of<HomeProvider>(context);
    return Scaffold(
      backgroundColor: Colors.blue[300],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue[300],
        title: const Text(
          "Add new things",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: 2.h),
              TextFormField(
                controller: titleController,
                style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
                decoration: InputDecoration(
                    hintText: "Enter To Do Title",
                    hintStyle: TextStyle(color: Colors.grey[200])),
              ),
              SizedBox(height: 4.h),
              TextFormField(
                controller: subTitleController,
                style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
                decoration: InputDecoration(
                    hintText: "Enter Description",
                    hintStyle: TextStyle(color: Colors.grey[200])),
              ),
              SizedBox(height: 4.h),
              TextFormField(
                controller: placeController,
                style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
                decoration: InputDecoration(
                    hintText: "Place",
                    hintStyle: TextStyle(color: Colors.grey[200])),
              ),
              SizedBox(height: 4.h),
              TextFormField(
                controller: datePicker,
                style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
                decoration: InputDecoration(
                    icon: const Icon(Icons.calendar_today,
                        color: Palette.white), //icon of text field
                    hintText: "Enter Date",
                    hintStyle: TextStyle(color: Colors.grey[200])),
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
              SizedBox(height: 10.h),
              Container(
                height: 50,
                width: 100.h,
                margin: const EdgeInsets.only(top: 20, bottom: 50),
                decoration: BoxDecoration(
                    color: Colors.blue, borderRadius: BorderRadius.circular(5)),
                child: Center(
                  child: TextButton(
                    onPressed: () async {
                      Navigator.pop(context);

                      Map<String, dynamic> map = {
                        "time": dateTime,
                        "title": titleController.text,
                        "subTitle": subTitleController.text,
                        "place": placeController.text,
                        "isEdited": widget.isFromEdit,
                        "collectionId": widget.isFromEdit
                            ? widget.toDoModel?.collectionId
                            : ""
                      };
                      await _homeProvider!.addOrEditData(map);
                    },
                    child: Text(
                      widget.isFromEdit ? "Edit" : 'Add Your Thing',
                      style: const TextStyle(color: Colors.white, fontSize: 16),
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
