
import 'package:aloudeh_company/features/admin/presentation/widgets/space_item.dart';
import 'package:aloudeh_company/features/admin/presentation/widgets/trip_invoice_text.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/colors_constants.dart';
import 'add_costs_in_trip_invoice_employee.dart';
import 'add_invoice_button.dart';
import 'add_package_info_in_trip_invoice_employee.dart';
import 'add_sender_recipient_notes_in_trip_invoice_for_employee.dart';
import 'add_source_dest_in_trip_invoice_for_employee.dart';
import 'divider_between_list_elements.dart';
import 'divider_item.dart';
class AddTripInvoice extends StatelessWidget{
  var source= TextEditingController();
  var destination = TextEditingController();

  AddTripInvoice({super.key});
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SpaceItem(),
            AddSourceDestInTripInvoiceForEmployee(),
            const DividerBetweenListElements(),
            AddSenderRecipientNotesInTripInvoiceForEmployee(),
            const DividerBetweenListElements(),
            AddPackageInfoInTripInvoiceEmployee(),
            const DividerBetweenListElements(),
            AddCostsInTripInvoiceEmployee(),
            const SpaceItem(),
            const AddInvoiceButton(),
          ],
        ),
      ),
    );
  }

}