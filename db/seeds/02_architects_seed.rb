puts 'deleting appointments & then architects'

Appointment.destroy_all
Architect.destroy_all

date_AM_1 = DateTime.parse ('2019-06-26T11: 00: 00')
date_AM_2 = DateTime.parse ('2019-06-22T09: 00: 00')
date_PM_1 = DateTime.parse ('2019-06-24T13: 00: 00')
date_PM_2 = DateTime.parse ('2019-06-28T17: 00: 00')

puts 'creating Architect 1...'
appts = []
8.times do
  appts << [date_AM_1, date_AM_2, date_PM_1, date_PM_2].sample + rand(0..7)
end

Architect.create!(
  name: "De Rosee Sa",
  website_url: "https://deroseesa.com",
  location: "London - West",
  bio: "De Rosee Sa are an award-winning, architectural and interior design company based\
   in West London. Established in 2007 by directors Max de Rosee and Claire Sa, the practice\
    has built a reputation for designing imaginative and well-considered schemes spanning \
    the residential, educational, retail and community sectors. De Rosee Sa’s unique and \
    collaborative design approach allows them to develop each project on an individual basis \
    rather than having a set style. Their buildings provide elegant and creative solutions \
    to meet the practical and budgetary needs of a project whilst also maximising value for \
    their clients.",
  portfolio_url: [
    "https://deroseesa.com/wp-content/uploads/deroseesa-project-the-courtyard-house-003.jpg",
    "https://deroseesa.com/wp-content/uploads/deroseesa-project-the-courtyard-house-006.jpg",
    "https://deroseesa.com/wp-content/uploads/deroseesa-project-blue-house-002.jpg",
    "https://deroseesa.com/wp-content/uploads/deroseesa-project-stradella-road-005.jpg"
  ],
  available: true,
  speciality: "Extension",
  min_project_budget: 200000,
  appt_times: appts,
  appt_rate: 250
  )


puts 'creating Architect 2...'
appts = []
10.times do
  appts << [date_AM_1, date_AM_2, date_PM_1, date_PM_2].sample + rand(0..7)
end

Architect.create!(
  name: "Emil Eve Architects",
  website_url: "https://www.emileve.co.uk/",
  location: "London - North",
  bio: "Emil Eve Architects was founded by Emma and Ross Perkin in 2010 and is based in Hackney.\
   Past projects include housing, retail spaces, galleries and work studios where \
   they provide architectural and interior design services. Emil Eve Architects specialise in \
   working with historic and listed buildings and enjoy the challenge of introducing contemporary \
   interventions into complex contexts.",
  portfolio_url: [
    "https://www.emileve.co.uk/assets/Uploads/_resampled/ScaleWidthWyIxNTg0Il0/1a.jpg",
    "https://www.emileve.co.uk/assets/Uploads/_resampled/ScaleWidthWyIxNTg0Il0/Ext-small2.jpg",
    "https://www.emileve.co.uk/assets/Uploads/_resampled/ScaleWidthWyIxNTg0Il0/186.jpg"
  ],
  available: true,
  speciality: "Extension",
  min_project_budget: 100000,
  appt_times: appts,
  appt_rate: 175
  )

puts 'creating Architect 3...'
appts = []
12.times do
  appts << [date_AM_1, date_AM_2, date_PM_1, date_PM_2].sample + rand(0..7)
end

Architect.create!(
  name: "Henning Stummel Architects",
  website_url: "http://henningstummelarchitects.com/",
  location: "London - West",
  bio: "Henning Stummel Architects are a small, award-winning architectural practice, founded in 2000.\
   Being passionate about architecture, design and place-making, they work closely with clients to \
   develop the brief and deliver projects which engage and delight. Their process is developed through\
    listening and clear communication, both visually and verbally, which in turn empowers clients and \
    convinces planners.",
  portfolio_url: [
    "https://www.themodernhouse.com/wp-content/uploads/2014/05/The-Workshop-Henning-Stummel-1-1600x1067.jpg",
    "https://www.themodernhouse.com/wp-content/uploads/2014/05/The-Workshop-Henning-Stummel-2-1600x1067.jpg",
    "http://henningstummelarchitects.com/wp-content/uploads/2016/12/4_Interior-TOP-Dining-Table-LC.jpg"
        ],
  available: true,
  speciality: "Conversion",
  min_project_budget: 150000,
  appt_times: appts,
  appt_rate: 200
  )

puts 'creating Architect 4...'
appts = []
12.times do
  appts << [date_AM_1, date_AM_2, date_PM_1, date_PM_2].sample + rand(0..7)
end

Architect.create!(
  name: "Studio McLeod",
  website_url: "http://studiomcleod.com/",
  location: "London - North",
  bio: "Studio McLeod are recognised as one of the UK’s leading architects for innovative \
  residential architecture. We are a dedicated and close knit team with shared values and \
  a drive to produce exceptional work. Our approach of really listening to our clients and \
  working out what would make the biggest difference to their lives has been referred to \
  as ‘Architectural Therapy’. Our clients have described the process as efficient and \
  inspiring and the end results as calming, captivating and fulfilling.",
  portfolio_url: [
    "https://static1.squarespace.com/static/58a2e8de5016e1926ab6d7f4/58c02d48e58c62f7844c7172/59ad9a5da803bb10befac733/1504549479199/Studio-McLeod-Gondar-Gardens-4-RT.jpg?format=2500w",
    "https://static1.squarespace.com/static/58a2e8de5016e1926ab6d7f4/t/59addd9b2994ca092caa91b4/1504626525669/Studio-McLeod-Hammersmith-Grove-9.jpg?format=2500w",
    "https://static1.squarespace.com/static/58a2e8de5016e1926ab6d7f4/58a30b0ee3df28d39e2fc9a7/58fe10f217bffcd18b275006/1504631112927/Studio-McLeod-Coquet-Moor-House-5.jpg?format=2500w"
  ],
  available: true,
  speciality: "New Build: Eco-Home",
  min_project_budget: 200000,
  appt_times: appts,
  appt_rate: 175
  )

