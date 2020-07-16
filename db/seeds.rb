# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Location.create(
#   slug: 'alb',
#   gps: "-73.778716,42.740913"
# )

# Location.create(
#   slug: 'bao',
#   gps: '-95.760074,36.062184'
# )

COORDS =
{
    alb: "-73.778716,42.740913",
    bao: '-95.760074,36.062184',
    bnb: '-97.514956,35.562138',
    cta: '-95.7582501,36.1611141',
    edm: '-97.421426,35.649751',
    fts: '-94.365646,35.398457',
    ftw: '-97.408147,32.616665',
    hnv: '-86.60572,36.31185',
    jnk: '-96.00193,36.04564',
    klr: '-97.2267,32.937096',
    mor: '-97.492793,35.310542',
    msf: '-97.152766,32.579119',
    mus: '-97.703255,35.388916',
    mwc: '-97.4111604,35.4653761',
    ncs: '-104.743,38.928',
    nkc: '-94.46297,39.224371',
    noc: '-97.610744,35.549299',
    nor: '-97.41831,35.188328',
    okc: '-97.548404,35.653959',
    omh: '-96.196788,41.2009873',
    opk: '-94.6984823,38.885327',
    ows: '-95.817571,36.291672',
    rga: '-94.208093,36.336613',
    rrn: '-106.647322,35.274818',
    sba: '-95.793878,35.993079',
    shw: '-96.90877,35.38786',
    soc: '-97.519777,35.389183',
    spf: '-93.3163081999999,37.1405012',
    sto: '-95.898449,35.989159',
    stw: '-97.121388,36.141453',
    tul: '-95.89846,36.104863',
    wch: '-97.189035,37.690974',
    wel: '-80.2077,26.63261',
    wwk: '-97.462684,37.742584',
    ykn: '-97.723829,35.509026'
}

COORDS.each do |slug, gps|
  Location.create(
    slug: slug.upcase,
    gps: gps
  )
end

OKC_run = Route.create(name: "OKC finance fun", description: "Round trip of all Oklahoma City metro Campuses from MWC with next to last stop always being EDM")
# map1 = MapAssignment.create(route_id: OKC_run.id, location_id: 1)

# RouteLocation.create! route: Route.first, location: Location.first