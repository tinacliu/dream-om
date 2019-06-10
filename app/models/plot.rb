class Plot < ApplicationRecord
  TYPE = ["Bungalow", "Detached house", "End terrace house", "Farmhouse", "Land", "Semi-detached house", "Terraced house"]
  has_many :shortlists

  validates :price, numericality: { only_integer: true }
  validates :address, :agent_name, :agent_phone, :description, presence: true
  validates :description, length: { minimum: 20 }
  validates :listing_id, uniqueness: true
  # validates :location, :plot_size, presence: true
  default_scope { order('created_at DESC') }

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  API_KEY = ENV['GOOGLE_API_KEY']

  def travel_time(destination, mode)
    url = "https://maps.googleapis.com/maps/api/directions/json?origin=#{latitude},#{longitude}&destination=#{destination}&mode=#{mode}&key=#{API_KEY}"
    response = open(url)

    json = JSON.parse(response.read)
    journey_time = json["routes"][0]["legs"][0]["duration"]["text"]
    travel_dist_miles = (json["routes"][0]["legs"][0]["distance"]["text"].to_f * 0.621371).round(1)

    travel_hash = {
      dist: travel_dist_miles,
      time: journey_time
    }
    return travel_hash
  end
end
