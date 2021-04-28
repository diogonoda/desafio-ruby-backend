# frozen_string_literal: true

Rails.application.routes.draw do
  post 'cnab_upload' => 'trades#cnab_upload'
end
