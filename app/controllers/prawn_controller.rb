class PrawnController < ApplicationController
  
  def index
    # lets add some test data to show how data flows into our TestPdf class
    page_data = {
      'title' => 'This is the page title',
      'sub_title' => 'Test User | Email: test2@test.com',
      'logo_img' => 'fpo-logo.jpg'
    }
    respond_to do |format|
      format.html
      format.pdf do
        pdf = TestPdf.new(page_data)
        # pdf = Prawn::Document.new
        # pdf.text "Hello World"
        send_data pdf.render, filename: "example.pdf",
                              type: "application/pdf",
                              disposition: "inline"
      end
    end
  end
  
end
