class WickedPdfController < ApplicationController
  def index
    respond_to do |format|
      format.html
      format.pdf do
        render :pdf => "wicked_pdf",
          :layout => 'pdf.html'
      end
    end
  end
end
