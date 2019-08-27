User.destroy_all

nicolas = User.create!(
  email: "nicolas@gmail.com",
  password: "nounours",
  first_name: "Nikola",
  last_name: "Smith",
  address: "24 rue du Coteau",
  ZIP_code: "92370",
  city: "Chaville",
  gender: "homme",
  mass_or_not: false,
)
url0 = "https://res.cloudinary.com/dvmytrwrd/image/upload/v1566898699/maillot-homme-classique_gfdo28.jpg"
nicolas.remote_avatar_url = url0
nicolas.save!
marie = User.create!(
  email: "marie@gmail.com",
  password: "nounours",
  first_name: "Marie",
  last_name: "Smith",
  address: "4, avenue des champs",
  ZIP_code: "83000",
  city: "Toulon",
  gender: "femme",
  mass_or_not: false,
)
url1 = "https://res.cloudinary.com/dvmytrwrd/image/upload/v1566803501/wff126qjo2ubcrsortwx.jpg"
marie.remote_avatar_url = url1
marie.save!
