class TestPdf < Prawn::Document
  
  def initialize(page_data)
    super
    @data = page_data
    header
  end
  
  def header
    image "#{Rails.root}/app/assets/images/#{@data['logo_img']}", :at => [0, 720]
    text_box @data['title'], 
      size: 18, 
      style: :bold,
      :at => [220, 680]
    text_box @data['sub_title'], 
      size: 14,
      :at => [220, 660]
  end

end