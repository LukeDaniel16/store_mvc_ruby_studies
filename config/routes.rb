Rails.application.routes.draw do  
  get "up" => "rails/health#show", as: :rails_health_check  

  get "/products", to: "products#index"

  get "/products/new", to: "products#new"
  post "/products", to: "products#create"

  get "/products/:id", to: "products#show"

  get "/products/:id/edit", to: "products#edit"
  patch "/products/:id", to: "products#update"
  put "/products/:id", to: "products#update"

  delete "/products/:id", to: "products#destroy"
end

#               CRUD Routers
# Index - Shows all the records
# New - Renders a form for creating a new record
# Create - Processes the new form submission, handling errors and creating the record
# Show - Renders a specific record for viewing
# Edit - Renders a form for updating a specific record
# Update (full) - Handles the edit form submission, handling errors and updating the entire record, and typically triggered by a PUT request.
# Update (partial) - Handles the edit form submission, handling errors and updating specific attributes of the record, and typically triggered by a PATCH request.
# Destroy - Handles deleting a specific record