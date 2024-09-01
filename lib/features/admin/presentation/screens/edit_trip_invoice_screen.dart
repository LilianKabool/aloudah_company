
import 'package:flutter/material.dart';

import '../../../../core/constants/colors_constants.dart';
import '../widgets/delete_print_save_buttons_in_edit_t_invoice.dart';
import '../widgets/divider_item.dart';
import '../widgets/divider_space_item.dart';
import '../widgets/edit_costs_in_t_invoice_screen.dart';
import '../widgets/edit_package_info_in_t_invoice_screen.dart';
import '../widgets/edit_sender_recipient_notes_in_t_invoice.dart';
import '../widgets/edit_source_dest_in_t_invoice_screen.dart';
import '../widgets/space_item.dart';
import '../widgets/trip_invoice_text.dart';

class EditTripInvoiceScreen extends StatelessWidget{
  const EditTripInvoiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Align(
          alignment: Alignment.centerRight,
          child: TripInvoiceText(),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.chevron_left,
            color: AppColors.darkBlue,
          ),
        ),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(1.0),
          child: DividerItem(),
        ),
      ),
      body: ListView(
        children: const [
          SpaceItem(),
          DeletePrintSaveButtonsInEditT_Invoice(),
          DividerSpaceItem(),
          EditSourceDestInT_InvoiceScreen(),
          DividerSpaceItem(),
          EditSenderRecipientNotesInT_InvoiceScreen(),
          DividerSpaceItem(),
          EditPackageInfoInT_InvoiceScreen(),
          DividerSpaceItem(),
          EditCostsInT_InvoiceScreen(),
          SpaceItem(),
        ],
      ),
    );
  }

}