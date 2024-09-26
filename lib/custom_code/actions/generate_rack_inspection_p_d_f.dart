// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import '/backend/schema/structs/business_module_card_struct.dart';

import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
// PDF
import 'package:pdf/widgets.dart' as pw;
import 'package:pdf/pdf.dart';
import 'package:http/http.dart' as http;

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!

Future<void> generateRackInspectionPDF(
    List<BusinessModuleCardStruct> contents) async {
  final pdf = await _generatePdf(contents);
  final output = await getTemporaryDirectory();
  final file = File("${output.path}/report.pdf");
  await file.writeAsBytes(await pdf.save());

  // You can now share or display the generated PDF file
  await OpenFile.open(file.path);
}

// Function to fetch a network image
Future<pw.MemoryImage> fetchImage(String url) async {
  final response = await http.get(Uri.parse(url));
  if (response.statusCode == 200) {
    return pw.MemoryImage(response.bodyBytes);
  } else {
    throw Exception('Failed to load image');
  }
}

Future<pw.Document> _generatePdf(
  List<BusinessModuleCardStruct> contents,
) async {
  final pdf = pw.Document();
  const backgroundUrl =
      "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/locators-7d1rtl/assets/w1hbbqpa8p1o/bg_login_splash.png";
  const logoUrl =
      "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/locators-7d1rtl/assets/nunlpdrgr9lo/bg_logo_splash.png";
  final backgroundImage = await fetchImage(backgroundUrl);
  final logoImage = await fetchImage(logoUrl);

  pdf.addPage(
    pw.Page(
      pageTheme: pw.PageTheme(
        margin: pw.EdgeInsets.only(
          top: 25,
          bottom: 100,
        ), // Define the margin in PageTheme
        pageFormat: PdfPageFormat.a4,
        buildBackground: (pw.Context context) {
          return pw.FullPage(
            ignoreMargins: true,
            child: pw.Container(
              color: PdfColor.fromHex(
                  "002395"), // Set background color for the entire page
            ),
          );
        },
      ),
      build: (pw.Context context) {
        return pw.Column(
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [
            pw.Container(
              padding: pw.EdgeInsets.all(30),
              color: PdfColors.white,
              width: context.page.pageFormat.width,
              child: pw.Container(
                height: 70,
                child: pw.Image(logoImage),
              ),
            ),
            pw.Container(
              width: context.page.pageFormat.width,
              child: pw.Stack(
                children: [
                  pw.Container(
                    width: double.infinity,
                    height: 400,
                    child: pw.Image(backgroundImage),
                  ),
                  pw.Container(
                    margin: pw.EdgeInsets.only(top: 40),
                    child: pw.Row(
                      children: [
                        pw.Container(
                          width: context.page.pageFormat.width * 0.5,
                          padding: pw.EdgeInsets.all(20),
                          color: PdfColors.white,
                          child: pw.Text(
                            'Inspection Report',
                            textAlign: pw.TextAlign.end,
                            style: pw.TextStyle(
                              fontSize: 30,
                              color: PdfColors.black,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            pw.Container(
              margin: pw.EdgeInsets.only(top: 40, left: 40),
              child: pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.Text(
                    "Our ref: 23149",
                    textAlign: pw.TextAlign.start,
                    style: pw.TextStyle(
                      fontSize: 26,
                      color: PdfColors.white,
                      fontWeight: pw.FontWeight.bold,
                    ),
                  ),
                  pw.Text(
                    "Date: 18th July 2024",
                    textAlign: pw.TextAlign.start,
                    style: pw.TextStyle(
                      fontSize: 20,
                      color: PdfColors.white,
                    ),
                  ),
                  pw.SizedBox(height: 40),
                  pw.Text(
                    "Inspection report for:",
                    textAlign: pw.TextAlign.start,
                    style: pw.TextStyle(
                      fontSize: 26,
                      color: PdfColors.white,
                      fontWeight: pw.FontWeight.bold,
                    ),
                  ),
                  pw.SizedBox(height: 40),
                  pw.Text(
                    "Gillette",
                    textAlign: pw.TextAlign.start,
                    style: pw.TextStyle(
                      fontSize: 20,
                      color: PdfColors.white,
                      fontWeight: pw.FontWeight.bold,
                    ),
                  ),
                  pw.Text(
                    "Reading",
                    textAlign: pw.TextAlign.start,
                    style: pw.TextStyle(
                      fontSize: 20,
                      color: PdfColors.white,
                    ),
                  ),
                  pw.SizedBox(height: 40),
                  pw.Text(
                    "Issued to: Josh Hills",
                    textAlign: pw.TextAlign.start,
                    style: pw.TextStyle(
                      fontSize: 20,
                      color: PdfColors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    ),
  );
  const int maxLinesPerPage = 30; // Maximum number of lines per page
  int currentLine = 0;
  List<pw.Widget> pageContent = []; // Content for the current page

  for (var line in contents) {
    // Add text to the current page content
    pageContent.add(
      pw.Padding(
        padding: pw.EdgeInsets.only(top: 30),
        child: pw.Column(
          mainAxisAlignment: pw.MainAxisAlignment.start,
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [
            pw.Text(
              line.cardTitle,
              textAlign: pw.TextAlign.start,
              style: pw.TextStyle(
                fontSize: 20,
                fontWeight: pw.FontWeight.bold,
              ),
            ),
            pw.SizedBox(height: 10),
            pw.Text(
              line.cardText,
              textAlign: pw.TextAlign.start,
              style: pw.TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
    currentLine++;

    if (currentLine >= maxLinesPerPage) {
      // Add the current page to the document
      pdf.addPage(
        pw.Page(
          build: (pw.Context context) {
            return pw.Column(
              children: pageContent,
            );
          },
        ),
      );
      // Reset for the next page
      currentLine = 0;
      pageContent = [];
    }
  }

  // Add any remaining lines in the last page if there are any
  if (pageContent.isNotEmpty) {
    pdf.addPage(
      pw.Page(
        build: (pw.Context context) {
          return pw.Column(
            children: pageContent,
          );
        },
      ),
    );
  }

  return pdf;
}
