require 'json'
start_time = Time.now

puts 'First we are going to add some land seeds...'

puts 'Adding new plots... please wait until the operation is completed'
puts 'This could take some time....'

puts 'Preparing files for the operation...'

filepaths = [
  './app/assets/files/land_london_radius50_page1.json',
  './app/assets/files/land_london_radius50_page2.json'
]

puts 'Initializing...'



def land_seeding(file_path)
  plot_counter = 0
  plot_index = 0

  plotsfile = File.read(file_path)

  plots = JSON.parse(plotsfile)

  puts 'Excluding plots without needed data...'

  filtered_plots = plots['listing'].reject do |plot|
    plot['description'] =~ /commercial/i ||
    plot['description'] =~ /subject to planning permission/i ||
    plot['description'] =~ /subject to planning/i ||
    plot['short_description'] =~ /commercial/i ||
    plot['short_description'] =~ /flat/i ||
    plot['short_description'] =~ /apartment/i ||
    plot['short_description'] =~ /subject to planning permission/i ||
    plot['short_description'] =~ /subject to planning/i ||
    plot['price'] == 0
  end

  puts 'Selecting other meta data'

  filtered_plots.select do |plot|
    p plot['description'].match?(/planning consent/i) || plot['description'].match?(/Planning Application Number/i)
  end

  puts 'Creating Plots and adding all data....'

  filtered_plots.each do |plot|
    # ownership_type = if plot['description'].match?(/share of freehold/i)
    #   'Share of Freehold'
    # elsif plot['description'].match?(/leasehold/i)
    #   'Leasehold'
    # elsif plot['description'].match?(/freehold/i)
    #   'Freehold'
    # else
    #   nil
    # end

    ownership_type = case plot['description']
    when /share of freehold/i
      'Share of Freehold'
    when /leasehold/i
      'Leasehold'
    when /freehold/i
      'Freehold'
    else
      nil
    end

    Plot.create!(
      num_floors:  plot['num_floors'],
      num_bedrooms:  plot['num_bedrooms'],
      property_type:  plot['property_type'],
      description:  plot['description'],
      post_town:  plot['post_town'],
      details_url:  plot['details_url'],
      outcode:  plot['outcode'],
      image_url:  plot['image_645_430_url'],
      price:  plot['price'],
      listing_id:  plot['listing_id'],
      agent_name:  plot['agent_name'],
      num_recepts:  plot['num_recepts'],
      first_published_date:  plot['first_published_date'],
      address:  plot['displayable_address'],
      floor_plan_url:  plot['floor_plan'],
      street_name:  plot['street_name'],
      num_bathrooms:  plot['num_bathrooms'],
      price_change:  plot['price_change'],
      agent_phone:  plot['agent_phone'],
      last_published_date:  plot['last_published_date'],
      location:  plot['county'],
      latitude: plot['latitude'],
      longitude: plot['longitude'],
      plan_granted: plot['description'].match?(/planning consent/i)  ||
      plot['description'].match?(/Planning Application Number/i),
      ownership_type: ownership_type
     )
    plot_counter += 1
    puts "Created #{plot_counter} plot/s "
  end
end

filepaths.each do |f|
  puts '=' * 30
  puts "=== working on file #{f}... ==="
  puts '=' * 30
  land_seeding(f)
end


ending = Time.now
elapsed = ending - start_time
puts "Elapsed time: #{elapsed}/Seconds"
