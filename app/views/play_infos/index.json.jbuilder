json.array!(@play_infos) do |play_info|
  json.extract! play_info, :id
  json.url play_info_url(play_info, format: :json)
end
