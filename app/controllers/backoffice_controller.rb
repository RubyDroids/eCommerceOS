class BackofficeController < ApplicationController
  before_action :authenticate_admin!

  # layout "backoffice"
  prepend_view_path "app/views/backoffice"
 end