json.extract! submission, :id, :user_id, :custom_form_id, :responses, :created_at, :updated_at
json.url submission_url(submission, format: :json)
