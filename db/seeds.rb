puts "Destroy"
Review.destroy_all
Booking.destroy_all
Massage.destroy_all
User.destroy_all

puts "create 2 users"

nicolas = User.create!(
  email: "nicolas@gmail.com",
  password: "nounours",
  first_name: "Nicolas",
  last_name: "Schmoutz",
  address: "2, avenue des saules",
  ZIP_code: "59160",
  city: "Lille",
  avatar:
  description:"",
  gender: "male",
  mass_or_not: false,
)

romane = User.create!(
  email: "faustine@gmail.com",
  password: "nounours",
  first_name: "Romane",
  last_name: "Boringer",
  address: "4, avenue des champs",
  ZIP_code: "59160",
  city: "Lille",
  avatar:
  description:"",
  gender: "femelle",
  mass_or_not: false,
)

puts "create 10 masseurs"

mass1 = User.create!(
  email: "leanonyme@gmail.com",
  password: "nounours",
  first_name: "Léa",
  last_name: "Nonyme",
  address: "4, avenue de bretagne",
  ZIP_code: "59160",
  city: "Lille",
  avatar:
  description:"Bonjour, je suis masseuse depuis 10 ans et j'adore mon métier!",
  gender: "femelle",
  mass_or_not: true,
)






