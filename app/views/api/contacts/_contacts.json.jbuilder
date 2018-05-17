json.array! @contacts.each do |contact|
  json.id contact.id
  json.first_name contact.first_name
  json. middle_name contact.middle_name
  json.last_name contact.last_name

  json.full_name contact.full_name
  
  json.email contact.email
  json.phone_number contact.phone_number
  json.bio contact.bio
    json.formatted do
      json.updated_at contact.friendly_updated_at
    end
end