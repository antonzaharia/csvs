class Csv < ApplicationRecord
  mount_uploader :file, CsvUploader

  belongs_to :user
  has_many :books

  def send_request
    uri = URI('https://eohs8u7hch4yian.m.pipedream.net')
    req = Net::HTTP::Post.new(uri, 'Content-Type' => 'application/json')

    req.body = {
      'send_from': Rails.env,
      's3_url': file.url
    }.to_json

    Net::HTTP.start(uri.hostname, uri.port, use_ssl: uri.scheme == 'https') do |http|
      http.request(req)
    end
  end
end
