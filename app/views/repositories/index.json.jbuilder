# frozen_string_literal: true

json.array!(@respositories) do |respository|
  json.extract! respository, :id
  json.url respository_url(respository, format: :json)
end
