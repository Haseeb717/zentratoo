ActiveAdmin.register Area do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  menu :label => "Areas", :parent => "Areas" 
 
  permit_params :name, :non_quantitative_area,categories_attributes: [:id, :title, :_destroy]
  

  form do |f|
    f.inputs "Area" do
      f.input :name
    end

    f.has_many :categories do |category|
      category.inputs "Categories" do
        category.input :title 
        #repeat as necessary for all fields
      end
    end
    f.actions
  end
  
end
