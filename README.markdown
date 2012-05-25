# FINE's PDF Generator Prototype

Welcome to the world famous PDF Generator Prototype. Here we're testing different Ruby gems functionality and features.

## Gems Tested

### [wicked_pdf](https://github.com/mileszs/wicked_pdf)

Wicked PDF uses the shell utility wkhtmltopdf to serve a PDF file to a user from HTML. In other words, rather than dealing with a PDF generation DSL of some sort, you simply write an HTML view as you would normally, then let Wicked take care of the hard stuff.

### [PDFkit](https://github.com/pdfkit/PDFKit)

Similar to wicked_pdf, only it uses a middleware to render any page with "PDF" format as a PDF.

### [Prawn](http://prawn.majesticseacreature.com/)

Generates PDFs with Ruby objects. Styles defined with Prawn classes.
