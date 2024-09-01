import 'package:flutter/material.dart';

import '../../../../core/constants/colors_constants.dart';
import '../widgets/costs_in_view_t_invoice_for_emp.dart';
import '../widgets/delete_print_edit_buttons_in_view_t_invoice.dart';
import '../widgets/divider_item.dart';
import '../widgets/divider_space_item.dart';
import '../widgets/package_info_in_view_t_invoice_for_emp.dart';
import '../widgets/sender_recipient_notes_in_view_t_invoice_for_emp.dart';
import '../widgets/source_dest_in_view_t_invoice_for_emp.dart';
import '../widgets/space_item.dart';
import '../widgets/trip_invoice_text.dart';


class ViewTripInvoiceForEmployee extends StatelessWidget{
  const ViewTripInvoiceForEmployee({super.key});

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
        children: [
          const SpaceItem(),
          const DeletePrintEditButtonsInViewTripInvoice(),
          const DividerSpaceItem(),
          SourceDestInViewT_InvoiceForEmp(),
          const DividerSpaceItem(),
          SenderRecipientNotesInViewT_InvoiceForEmp(),
          const DividerSpaceItem(),
          PackageInfoInViewT_InvoiceForEmp(),
          const DividerSpaceItem(),
          CostsInViewT_InvoiceForEmp(),
          const SpaceItem(),
        ],
      ),
    );
  }

}