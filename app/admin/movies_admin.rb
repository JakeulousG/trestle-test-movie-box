Trestle.resource(:movies) do
  menu do
    item :movies, icon: "fa fa-film"
  end

  # Customize the table columns shown on the index view.
  #
  table do
    column :title
    column :description
    column :status
    column :premiere_date
    actions
  end

  # Customize the form fields shown on the new/edit views.
  #
  form do |movie|
    tab :movie do
      text_field :title
      text_field :description
    end
    tab :status do
      select :status, Movie::STATUSES
      date_field :premiere_date
    end
    sidebar do
      static_field :title
      static_field :description
      static_field :status
      static_field :premiere_date
    end
  end

  
  # By default, all parameters passed to the update and create actions will be
  # permitted. If you do not have full trust in your users, you should explicitly
  # define the list of permitted parameters.
  #
  # For further information, see the Rails documentation on Strong Parameters:
  #   http://guides.rubyonrails.org/action_controller_overview.html#strong-parameters
  #
  # params do |params|
  #   params.require(:movie).permit(:name, ...)
  # end
end
