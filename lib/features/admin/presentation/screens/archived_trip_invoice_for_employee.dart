import 'package:flutter/material.dart';

import '../../../../core/constants/colors_constants.dart';
import '../widgets/archived_costs_in_t_invoice_for_employee.dart';
import '../widgets/archived_package_info_in_t_invoice_employee.dart';
import '../widgets/archived_sender_recipient_notes_in_t_invoice_for_employee.dart';
import '../widgets/archived_source_dest_in_t_invoice_for_employee.dart';
import '../widgets/divider_between_list_elements.dart';
import '../widgets/divider_item.dart';
import '../widgets/space_item.dart';
import '../widgets/trip_invoice_text.dart';


class ArchivedTripInvoiceForEmployee extends StatelessWidget{
  const ArchivedTripInvoiceForEmployee({super.key});

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
          ArchivedSourceDestInT_InvoiceForEmployee(),
          const DividerBetweenListElements(),
          ArchivedSenderRecipientNotesInT_InvoiceForEmployee(),
          const DividerBetweenListElements(),
          ArchivedPackageInfoInT_InvoiceForEmployee(),
          const DividerBetweenListElements(),
          ArchivedCostsInT_InvoiceForEmployee(),
        ],
      ),
    );
  }

}