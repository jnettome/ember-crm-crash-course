# app/serializers/lead_serializer.rb
class LeadSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :phone, :status, :notes
end