require 'json'

puts 'This file will add some seeds to your aplication.'

puts 'Adding new plots'

plot_attributes = [
  {
    title:          'Land for sale',
    description:    'A Freehold Cleared Site Measuring Approximately 2,411 sq m (0.5958 Acres) Offered with Planning Permission to Create a Four Bedroom Detached House (Works have Commenced and the Lodge has been Demolished).',
    address:        'Old Orchard Lodge, Park Lane, Harefield, Uxbridge, Middlesex UB9',
    price:          325000,
    property_type:  'Land',
    image_url:      'https://lc.zoocdn.com/ecca86633e46e92862ad20557a163b2ff623b4fc.jpg',
    agent_name:      'Auction House London',
    agent_phone:     '020-3641-1932',
    ownership_type:   'Freehold',
    location:         'Uxbridge',
    plan_granted:     true,
    plot_size:        2411,
    has_garden:       true
  },
  {
    title:          'Land for sale',
    description:    'A 3 bedroom end of terrace house with an adjacent plot of land fronting on to Lavender Hill where a former approved planning application for a 2/3 bedroom detached house with associated car parking has lapsed. The property and land are being sold together and contracts will be on a subject to planning arrangement. The property is located within close proximity of Lavender Hill Main Line railway station.',
    address:        'Hedge Hill, Enfield EN2',
    price:          825000,
    property_type:  'Land',
    image_url:      'https://lc.zoocdn.com/e0e65465ba71ffae54e2344caf8643ab0a54a9dd.jpg',
    agent_name:      'Xpert Agents',
    agent_phone:     '01843-306915',
    ownership_type:   'Freehold',
    location:         'Enfield',
    plan_granted:     true,
    num_bedrooms:     3,
    num_recepts:      1,
    has_garden:       true
  },
  {
    title:          'Land for sale',
    description:    'Guide Price: £600,000 - £650,000, of interest to developers or self builders. A building plot for sale with full planning permission for a four/five bedroom detached property in the highly sought after Stapleford Abbotts.

                    This 0.4 acre site (stmls) is currently occupied by a detached bungalow and has full planning permission for a replacement four/five bedroom detached chalet style property.

                    The site may suit a different scheme or development subject to planning permission.

                    Planning reference epf/3329/18 (Epping Forest District Council).

                    Further details and plans available on request.',
    address:        'Tysea Hill, Stapleford Abbotts, Romford RM4',
    price:          600000,
    property_type:  'Land',
    image_url:      'https://lc.zoocdn.com/21e88bd37010f5a62dee253c6e16a3f5df498706.jpg',
    agent_name:      'Accord Sales & Lettings',
    agent_phone:     '01708-629337',
    ownership_type:   'Vacant Possession',
    floor_plan_url:  'https://lc.zoocdn.com/71f06a934a4328ef162873fcb19c0eef6013492e.jpg',
    location:         'Romford',
    plan_granted:     true,
    has_garden:       true,
    plot_size:        17424
  },
  {
    title:          '2 bed end terrace house for sale',
    description:    'Occupying the corner plot is this striking End of Terrace two bedroom freehold cottage. Presented in excellent decorative order the property boasts plenty of natural light and enjoys a private east facing garden!

                    Accommodation comprises; reception room, fitted kitchen diner, two upstairs double bedrooms and upstairs bathroom.',
    address:        'Gospatrick Road, Tottenham, London N17',
    price:          459950,
    property_type:  'Terrace',
    image_url:      'https://lc.zoocdn.com/d07d90d672137c9fdacc4269657eccef8e95885a.jpg',
    agent_name:      'Paul Simon Residential Sales',
    agent_phone:     '020-8166-1812',
    ownership_type:   'Freehold',
    floor_plan_url:   'https://lc.zoocdn.com/7c337c02900912c0c2f9efdadbb847720f973a1d.jpg',
    location:         'London',
    plan_granted:     false,
    has_garden:       true,
    num_bedrooms:     2,
    num_bathrooms:    1,
    num_recepts:      1
  },
  {
    title:          '3 bed property for sale',
    description:    'A 3 bedroom end of terrace house with an adjacent plot of land fronting on to Lavender Hill where a former approved planning application for a 2/3 bedroom detached house with associated car parking has lapsed. The property and land are being sold together and contracts will be on a subject to planning arrangement. The property is located within close proximity of Lavender Hill Main Line railway station.',
    address:        '3 The Cottage, Lower Marsh Lane, Kingston Upon Thames KT1',
    price:          450000,
    property_type:  'Property',
    image_url:      'https://lc.zoocdn.com/016ad1ce0ea13d1ce8d159001cd9877a386c3002.jpg',
    agent_name:      'Allsop LLP',
    agent_phone:     '020-3641-1750',
    ownership_type:   'Freehold',
    location:         'Kingston upon Thames',
    plan_granted:     false,
    has_garden:       true,
    num_bedrooms:     3,
    num_bathrooms:    1,
    num_recepts:      2,
    plot_size:        8276.4
  }
]

  Plot.create!(plot_attributes)

  puts 'Done!'


# This is how to acces data for the API

# filepath = './app/assets/files/land_london_radius50_page1.json'

# serialized_plots = File.read(filepath)

# plots = JSON.parse(serialized_plots)

# p plots['listing'][0]['agent_name']
