import '../../presentation/widget/space_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:aloudeh_company/core/constants/colors_constants.dart';


class EditSenderRecipientNotesInT_InvoiceScreen extends StatefulWidget{

  @override
  State<EditSenderRecipientNotesInT_InvoiceScreen> createState() => _EditSenderRecipientNotesInT_InvoiceScreenState();
}

class _EditSenderRecipientNotesInT_InvoiceScreenState extends State<EditSenderRecipientNotesInT_InvoiceScreen> {

  String sender = 'Seba Taleaa';
  String recipient = 'Lilian Kabool';
  String notes = 'Sanameen - 092345642';
  String editedSender = '';
  String editedRecipient = '';
  String editedNotes = '';

  void _editSender() {
    TextEditingController sender_controller = TextEditingController(text: sender);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Edit Sender',
            style: TextStyle(
              fontFamily: 'Bauhaus',
              color: AppColors.yellow,
            ),
          ),
          content: TextField(
            controller: sender_controller,
            onChanged: (value) {
              editedSender = value;
            },
          ),
          actions: [
            FloatingActionButton(
              backgroundColor: AppColors.darkBlue,
              child: Text(
                'Save',
                style: TextStyle(
                  color: AppColors.pureWhite,
                  fontFamily: 'bahnschrift',
                ),
              ),
              onPressed: () {
                setState(() {
                  sender = editedSender;
                });
                sender_controller.text = sender;
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _editRecipient() {
    TextEditingController recipient_controller = TextEditingController(text: recipient);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Edit Recipient',
            style: TextStyle(
              fontFamily: 'Bauhaus',
              color: AppColors.yellow,
            ),
          ),
          content: TextField(
            controller: recipient_controller,
            onChanged: (value) {
              editedRecipient = value;
            },
          ),
          actions: [
            FloatingActionButton(
              backgroundColor: AppColors.darkBlue,
              child: Text(
                'Save',
                style: TextStyle(
                  color: AppColors.pureWhite,
                  fontFamily: 'bahnschrift',
                ),
              ),
              onPressed: () {
                setState(() {
                  recipient = editedRecipient;
                });
                recipient_controller.text = recipient;
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _editNotes() {
    TextEditingController notes_controller = TextEditingController(text: notes);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Edit Notes',
            style: TextStyle(
              fontFamily: 'Bauhaus',
              color: AppColors.yellow,
            ),
          ),
          content: TextField(
            controller: notes_controller,
            onChanged: (value) {
              editedNotes = value;
            },
          ),
          actions: [
            FloatingActionButton(
              backgroundColor: AppColors.darkBlue,
              child: Text(
                'Save',
                style: TextStyle(
                  color: AppColors.pureWhite,
                  fontFamily: 'bahnschrift',
                ),
              ),
              onPressed: () {
                setState(() {
                  notes = editedNotes;
                });
                notes_controller.text = notes;
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Sender',
                style: TextStyle(
                  fontFamily: 'bahnschrift',
                  color: AppColors.darkBlue,
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(
                width: screenWidth / 11.3,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: (){
                    _editSender();
                  },
                  child: Container(
                    height: 40.h,
                    color: AppColors.mediumBlue,
                    child: Center(
                      child: Text(
                        '${sender}',
                        style: TextStyle(
                          fontFamily: 'bahnschrift',
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SpaceItem(),
          Row(
            children: [
              Text(
                'Recipient',
                style: TextStyle(
                  fontFamily: 'bahnschrift',
                  color: AppColors.darkBlue,
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(
                width: screenWidth / 22,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: (){
                    _editRecipient();
                  },
                  child: Container(
                    height: 40.h,
                    color: AppColors.mediumBlue,
                    child: Center(
                      child: Text(
                        '${recipient}',
                        style: TextStyle(
                          fontFamily: 'bahnschrift',
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SpaceItem(),
          Row(
            children: [
              Text(
                'Notes',
                style: TextStyle(
                  fontFamily: 'bahnschrift',
                  color: AppColors.darkBlue,
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(
                width: screenWidth / 8.9,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: (){
                    _editNotes();
                  },
                  child: Container(
                    height: 40.h,
                    color: AppColors.mediumBlue,
                    child: Center(
                      child: Text(
                        '${notes}',
                        style: TextStyle(
                          fontFamily: 'bahnschrift',
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}