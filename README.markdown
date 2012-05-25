# FINE's PDF Generator Prototype

Welcome to the world famous PDF Generator Prototype. Here we're testing different Ruby gems functionality and features.

## Gems Tested

### [wicked_pdf](https://github.com/mileszs/wicked_pdf)

Wicked PDF uses the shell utility wkhtmltopdf to serve a PDF file to a user from HTML. In other words, rather than dealing with a PDF generation DSL of some sort, you simply write an HTML view as you would normally, then let Wicked take care of the hard stuff.

#### Notes

Any machine producing PDFs with wicked_pdf (or PDFkit) will need the [wkhtmltopdf](http://code.google.com/p/wkhtmltopdf/) shell utility. Installing it locally is fairly straight forward. I downloaded the 0.9.9 OS X binary moved and renamed it to `/usr/local/bin/wkhtmltopdf`, then updated permissions to execute it.

~~~
cd /usr/local/bin
sudo chown root wkhtmltopdf
sudo chmod 755 wkhtmltopdf
~~~
  
For wicked_pdf to read assets from the asset pipeline I had to add an initializer that modified wicked\_pdfs helper methods. Find it at `initializers/wicked_pdf.rb`.


### [PDFkit](https://github.com/pdfkit/PDFKit)

Similar to wicked_pdf, only it uses a middleware to render any page with "PDF" format as a PDF.

### [Prawn](http://prawn.majesticseacreature.com/)

Generates PDFs with Ruby objects. Styles defined with Prawn classes.
