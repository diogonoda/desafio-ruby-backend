# frozen_string_literal: true

Rails.application.routes.draw do
  root 'trades#index'
  post 'cnab_upload' => 'trades#cnab_upload'
  get 'trades_summary' => 'trades#summary'
end
