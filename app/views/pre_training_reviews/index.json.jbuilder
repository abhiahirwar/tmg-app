json.array!(@pre_training_reviews) do |pre_training_review|
  json.extract! pre_training_review, :id, :rpl, :credit_transfer, :area_of_work, :employment, :pathway, :preferred_learning_style, :delivery_mode, :speical_condition, :toc, :user_id
  json.url pre_training_review_url(pre_training_review, format: :json)
end
