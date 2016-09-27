class Document < ApplicationRecord
  before_create :analyze_tone
  has_attached_file :cover_letter
  validates_attachment :cover_letter, :content_type => { :content_type => %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document) }

private
  def analyze_tone
    begin
      binding.pry
      reader = PDF::Reader.new(self.cover_letter_file_name)
      puts reader.pdf_version
      puts reader.info
      puts reader.metadata
      puts reader.page_count
      response = JSON.parse(RestClient::Request.new(
      method: :get,
      url: "https://gateway.watsonplatform.net/tone-analyzer/api/v3/tone",
      user: 'f24a1b1b-8ad5-4d29-9544-ab4d1fd44f47',
      password: "j3TBPZgUAN6T",
      headers: {params: { text: "Hi Team, I know the times are difficult! Our sales have been disappointing for the past three quarters for our data analytics product suite. We have a competitive data analytics product suite in the industry. But we need to do our job selling it!",
      version: "2016-05-19", tones: "emotion"}}
      ).execute)
    rescue RestClient::BadRequest => error
      message = JSON.parse(error.response)['message']
      errors.add(:base, message)
      throw(:abort)
    end
  end
end
