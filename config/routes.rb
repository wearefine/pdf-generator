Pdfgenerator::Application.routes.draw do
  
  root :to => "pages#home"
  
  get "wicked_pdf", :to => "wicked_pdf#index"

end
