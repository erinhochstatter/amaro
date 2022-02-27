class Types::PhotoType < Types::BaseObject
  field :url, String, null: false
  def url
    url_for(object)
  end

  private

  def url_for(photo)
    if Rails.env.production?
      raise NotImplementedError
    else
      Rails.application.routes.url_helpers.rails_blob_url(photo, host: "localhost:3001" )
    end
  end
end
