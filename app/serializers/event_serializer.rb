class EventSerializer < ActiveModel::Serializer
  
  attributes :id, :name, :image_url, :description, :location, :start_date, :end_date, :start_time, :end_time, :total_tickets, :remaining_tickets, :amount, :category_id
  belongs_to :category
end
