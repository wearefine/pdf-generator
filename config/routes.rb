Pdfgenerator::Application.routes.draw do
  
  root :to => "pages#home"
  
  get "wicked_pdf/example", :to => "wicked_pdf#index", :as => "wicked_pdf"
  get "prawn/example", :to => "prawn#index", :as => "prawn"

end
