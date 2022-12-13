json.extract! patient, :id, :name, :image, :national_id, :gender, :created_at, :updated_at
json.url patient_url(patient, format: :json)
