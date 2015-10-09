# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

states = [
  ["AL","Alabama","Montgomery"],
  ["AK","Alaska","Juneau"],
  ["AZ","Arizona","Phoenix"],
  ["AR","Arkansas","Little Rock"],
  ["CA","California","Sacramento"],
  ["CO","Colorado","Denver"],
  ["CT","Connecticut","Hartford"],
  ["DE","Delaware","Dover"],
  ["FL","Florida","Tallahassee"],
  ["GA","Georgia","Atlanta"],
  ["HI","Hawaii","Honolulu"],
  ["ID","Idaho","Boise"],
  ["IL","Illinois","Springfield"],
  ["IN","Indiana","Indianapolis"],
  ["IA","Iowa","Des Moines"],
  ["KS","Kansas","Topeka"],
  ["KY","Kentucky","Frankfort"],
  ["LA","Louisiana","Baton Rouge"],
  ["ME","Maine","Augusta"],
  ["MD","Maryland","Annapolis"],
  ["MA","Massachusetts","Boston"],
  ["MI","Michigan","Lansing"],
  ["MN","Minnesota","Saint Paul"],
  ["MS","Mississippi","Jackson"],
  ["MO","Missouri","Jefferson City"],
  ["MT","Montana","Helena"],
  ["NE","Nebraska","Lincoln"],
  ["NV","Nevada","Carson City"],
  ["NH","New Hampshire","Concord"],
  ["NJ","New Jersey","Trenton"],
  ["NM","New Mexico","Santa Fe"],
  ["NY","New York","Albany"],
  ["NC","North Carolina","Raleigh"],
  ["ND","North Dakota","Bismarck"],
  ["OH","Ohio","Columbus"],
  ["OK","Oklahoma","Oklahoma City"],
  ["OR","Oregon","Salem"],
  ["PA","Pennsylvania","Harrisburg"],
  ["RI","Rhode Island","Providence"],
  ["SC","South Carolina","Columbia"],
  ["SD","South Dakota","Pierre"],
  ["TN","Tennessee","Nashville"],
  ["TX","Texas","Austin"],
  ["UT","Utah","Salt Lake City"],
  ["VT","Vermont","Montpelier"],
  ["VA","Virginia","Richmond"],
  ["WA","Washington","Olympia"],
  ["WV","West Virginia","Charleston"],
  ["WI","Wisconsin","Madison"],
  ["WY","Wyoming","Cheyenne"]
]

states.each do |state|
  State.find_or_create_by(abbreviation: state[0], name: state[1], capital: state[2])
end
