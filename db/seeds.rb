
puts "Destroy"
Review.destroy_all
Booking.destroy_all
Massage.destroy_all
User.destroy_all

puts "create 2 users"

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

puts "create 11 masseurs"

marguerite  = User.create!(
  email: "marguerite@gmail.com",
  password: "nounours",
  first_name: "Marguerite",
  last_name: "Yourcenar",
  address: "3, avenue léopold 2",
  ZIP_code: "75001",
  city: "Paris",
  description:"Salut à tous et à toutes, c'est moi Marguerite. J'écris un peu pour arrondir les fins de mois et suis sinon masseuse depuis 10 ans. J'adore mon métier! Look forward to see you guys",
  gender: "femme",
  mass_or_not: true,
)

url2 = "https://res.cloudinary.com/dvmytrwrd/image/upload/v1566901490/Marguerite-Yourcenar_auvq5n.png"
marguerite.remote_avatar_url = url2
marguerite.save!

simone  = User.create!(
  email: "simone@gmail.com",
  password: "nounours",
  first_name: "Simone",
  last_name: "de Beauvoir",
  address: "Saint germain des prés",
  ZIP_code: "75006",
  city: "Paris",
  description:"Salut, c'est Simone. Moi, les machoman et compagnie, c'est non merci, ok? Je suis masseuse ok, mais le respect c'est de chaques côtés !",
  gender: "femme",
  mass_or_not: true,
)

url3 = "https://res.cloudinary.com/dvmytrwrd/image/upload/v1566909264/736535_jianlb.jpg"
simone.remote_avatar_url = url3
simone.save!

george  = User.create!(
  email: "george@gmail.com",
  password: "nounours",
  first_name: "George",
  last_name: "Sand",
  address: "Château de Nohant",
  ZIP_code: "36400",
  city: "Nohant-Vic ",
  description:"Salut les ptits clous. Je suis George Sand, mais rassurez vous je suis bien une femme, lol ! En fait, mon vrai nom est Amantine Dupin, baronne Dudevant (et de derrière ! ;) N'hésitez pas à réserver un massage avec moi, vous ne le regretterez pas !",
  gender: "femme",
  mass_or_not: true,
)

url4 = "https://img-4.linternaute.com/dST2et5eqVwPmhI0d0Dl8WRtozs=/1240x/smart/e7c81af39fae4c12a7be569523fbc1ce/ccmcms-linternaute/10983819.png"
george.remote_avatar_url = url4
george.save!

francoise  = User.create!(
  email: "francoise@gmail.com",
  password: "nounours",
  first_name: "Françoise",
  last_name: "Sagan",
  address: "5 avenuedu général de l'armée et de la guerre",
  ZIP_code: "14600",
  city: "Honfleur",
  description:"Salut mes ptites beautés, vous me reconnaissez, c'est moi Françoise Sagan. Vous avez sans doute entendu parler de moi car j'ai écrit 'bonjour tristesse' qui est au programme pour le BAC de Français. Bonjour la décoince mdr. Bref, choose me and you won't regret it ! ;) Bisous <3",
  gender: "femme",
  mass_or_not: true,
)

url5 = "https://static1.purepeople.com/articles/6/31/18/16/@/4414541-francoise-sagan-950x0-3.jpg"
francoise.remote_avatar_url = url5
francoise.save!

zelda  = User.create!(
  email: "zelda@gmail.com",
  password: "nounours",
  first_name: "Zelda",
  last_name: "Fitzgerald",
  address: "33, mai road",
  ZIP_code: "78350",
  city: "Montgomery",
  description:"Salut les aminches, c'est Zelda Fitzgerald. Je suis la femme ET muse de mon Francis Scott de mari. Trop bien ? Mais je suis aussi une grand écrivain, ne soyez pas réducteur ! Et le jeu vidéo, ça vient aussi de moi ;) Choisissez moi pour un massage. On ne s'ennuiera pas !",
  gender: "femme",
  mass_or_not: true,
)

url6 = "https://www.deslettres.fr/wp-content/uploads/2015/08/zelda.jpg"
zelda.remote_avatar_url = url6
zelda.save!

comtesse  = User.create!(
  email: "comtesse@gmail.com",
  password: "nounours",
  first_name: "Comtesse",
  last_name: "De Ségur",
  address: "543, rue Bolchaïa Morskaïa ",
  ZIP_code: "94410",
  city: "Saint Pétersbourg",
  description:"Bonjour à tous, c'est moi Sophie Rostopchine1, mais on me connait mieux sous le nom de la comtesse de Ségur ! J'ai écris plein de livres pour les petits enfants et ai découvert le massage il y a quelques années avec mon mari. Après une reconversion j'exerce  aujourd'hui ce métier passion et serait heureuse de vous rencontrer pour une séance.",
  gender: "femme",
  mass_or_not: true,
)

url7 = "http://www.mamanvogue.fr/wp-content/uploads/2016/02/segur-740x500.png"
comtesse.remote_avatar_url = url7
comtesse.save!

andre  = User.create!(
  email: "andre@gmail.com",
  password: "nounours",
  first_name: "Andre",
  last_name: "Gide",
  address: "1 bis rue Vaneau",
  ZIP_code: "75007",
  city: "Paris",
  description:"Salut les potaux, moi c'est André Gide ou dédé comme vous voulez ;). J'ai eu le prix nobel, cool non ? Bref maintenant pour moi c'est massage, massage, massage. Je vis massage, je bois massage, je mange massage et je dors massage (quand je dors). Au plaisir de vous rencontrer",
  gender: "homme",
  mass_or_not: true,
)

url8 = "http://i-exc.ccm2.net/iex/1280/2070937017/744032.jpg"
andre.remote_avatar_url = url8
andre.save!

charles  = User.create!(
  email: "charles@gmail.com",
  password: "nounours",
  first_name: "Charles",
  last_name: "Bukowski",
  address: "21, san pedro road",
  ZIP_code: "83500",
  city: "Los Angeles",
  description:"Salut les amis. Je suis Charles Bukowski, un sacré loustic. J'adore l'écriture, les massages relaxants et les alcools forts. Ma spécialité ? Les pierres chaudes.",
  gender: "homme",
  mass_or_not: true,
)

url9 = "http://lesmoutonsrebelles.com/wp-content/uploads/2016/08/charles-bukowski-hulton-getty.jpg"
charles.remote_avatar_url = url9
charles.save!

michel  = User.create!(
  email: "michel@gmail.com",
  password: "nounours",
  first_name: "Michel",
  last_name: "Houellebecq",
  address: "58 rue du général De Gaulles",
  ZIP_code: "92200",
  city: "Neuilly sur Seine",
  description:"Bonjours chers amis. C'est Michel Houellebecq. Je me suis mis récemment aux massages califoriens notamment et compte affiner ma technique grâce à RelaxMass'. Sinon j'aime bien boire du pinard et fumer des clopes. A très vite ! :)",
  gender: "homme",
  mass_or_not: true,
)

url10 = "https://www.revuedesdeuxmondes.fr/wp-content/uploads/2015/10/150126_r26055-1200-630-15112701-1024x538.jpg"
michel.remote_avatar_url = url10
michel.save!

albert  = User.create!(
  email: "albert@gmail.com",
  password: "nounours",
  first_name: "Albert",
  last_name: "Camus",
  address: "78 avenue Leclerc",
  ZIP_code: "Lourmarin",
  city: "Paris",
  description:"Hi everyone ! C'est Albert Camus :) Vous sous souvenez l'Etranger, La peste ? C'était moi ! :) Mais maintenant c'est du passé. Place au bien-être et à la détente ! Je compte sur vous !",
  gender: "homme",
  mass_or_not: true,
)

url11 = "http://i-exc.ccm2.net/iex/1280/2062425379/746509.jpg"
albert.remote_avatar_url = url11
albert.save!

bret  = User.create!(
  email: "bret@gmail.com",
  password: "nounours",
  first_name: "Bret Easton",
  last_name: "Ellis",
  address: "1024 Abbey Road",
  ZIP_code: "62170",
  city: "Los Angeles",
  description:"Ola Amigas. C'est Bret Easton! Tonnerre de Bret ! ;) lol Pour moi, le roman, c'est fini, je ne crois pas que j'y retournerais un jour ! Par contre, je masse super bien, alors laissé vous tenter !",
  gender: "homme",
  mass_or_not: true,
)

url12 = "https://i2.wp.com/diacritik.com/wp-content/uploads/2015/12/543fdee652147_-_tnc-bret-easton-ellis-lg.jpg?fit=1024%2C512&ssl=1"
bret.remote_avatar_url = url12
bret.save!

