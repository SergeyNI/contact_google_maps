ActiveAdmin.register Marker do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name, :description, :image, :lng, :lat
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :description, :image, :longitude, :latitude]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  form partial: 'marker'
  # form do |f|
  #   f.inputs do
  #     f.input :name
  #     f.input :description
  #     f.input :image, as: :file
  #     f.input :longitude
  #     f.input :latitude
  #   end
  #   f.actions
  # end

  filter :name
    # filter :author, as: :select, collection: ->{ Product.authors }
    filter :lng
    filter :lat
    filter :created_at
  
    index do
      column :name
      column :lng
      column :lat
      column :created_at
      # column "Price", sortable: :price do |product|
      #   number_to_currency product.price
      # end
      actions
    end

  
  
end
