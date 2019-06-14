# puts 'Updating the plot we are using on the pitch...'
# puts 'We will add images and add the plot size, please wait....'
pitch_plot = Plot.where(listing_id: '51002424')
# pitch_plot[0].image_urls << 'https://lc.zoocdn.com/3f8d8e7e4899156a2b7f67e880e67ec33b974b11.jpg'
# pitch_plot[0].description << ', and is around 0.5 acres in size'
# pitch_plot[0].plot_size = '0.5 acres'
# pitch_plot[0].save


pitch_plot[0].image_urls = [
  'https://lid.zoocdn.com/645/430/a73ffedba351d80692584eb5ec72a58b4b0ba4aa.jpg',
  'https://res.cloudinary.com/tinaluphia309/image/upload/v1560476213/somerset_road_2_final_uh1ny8.jpg'
]

pitch_plot[0].save
