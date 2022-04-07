import 'package:flutter/material.dart';
import 'tiles_tools_and_services.dart';

Future<dynamic> toolsAndServicesBottomSheet(BuildContext context) {
  return showModalBottomSheet(
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
    ),
    context: context,
    builder: (context) => Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Image(
              image: const AssetImage('asset/images/bottom_divider.png'),
              width: MediaQuery.of(context).size.width / 7,
            ),
          ),
          const SizedBox(height: 30),
          ListView(
            shrinkWrap: true,
            children: const [
              ToolsAndServicesListTiles(text: 'Covid-19 Self Test'),
              ToolsAndServicesListTiles(text: 'Covid-19 Vaccination'),
              ToolsAndServicesListTiles(text: 'Covid-19 Hotspots'),
              ToolsAndServicesListTiles(text: 'Health Facilities'),
              ToolsAndServicesListTiles(text: 'Healthcare Support'),
              ToolsAndServicesListTiles(text: 'Manage Dependents'),
              ToolsAndServicesListTiles(text: 'Covid-19 Risk Status'),
              ToolsAndServicesListTiles(text: 'Behavioural Risk'),
              ToolsAndServicesListTiles(text: 'Digital Healthcare'),
              ToolsAndServicesListTiles(text: 'From Travelling'),
              ToolsAndServicesListTiles(text: 'Additional Resources'),
              ToolsAndServicesListTiles(text: 'SOP Guideline'),
              ToolsAndServicesListTiles(text: 'Helpdesk Centre'),
              ToolsAndServicesListTiles(text: 'Frequently Ask Question'),
            ],
          ),
        ],
      ),
    ),
  );
}
