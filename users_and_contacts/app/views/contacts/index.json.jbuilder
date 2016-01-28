json.array!(@contacts) do |contact|
  json.extract! contact, :id, :user_id, :name, :phone_number, :notes
  json.url contact_url(contact, format: :json)
end
