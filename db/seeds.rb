
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
  last_name: "Smith",
  address: "24 rue du Coteau",
  ZIP_code: "92370",
  city: "Lille",
  gender: "Homme",
  mass_or_not: false,
)

url0 = "https://res.cloudinary.com/dvmytrwrd/image/upload/v1567174220/xihfkwydz7ucmmhewoub_mnltuc.jpg"
nicolas.remote_avatar_url = url0
nicolas.save!

marmouz = User.create!(
  email: "marmouz@gmail.com",
  password: "nounours",
  first_name: "Marmouz",
  last_name: "Lafaust",
  address: "4, avenue des champs",
  ZIP_code: "83000",
  city: "Toulon",
  gender: "Femme",
  mass_or_not: false,
)

url1 = "https://res.cloudinary.com/dvmytrwrd/image/upload/v1566803501/wff126qjo2ubcrsortwx.jpg"
marmouz.remote_avatar_url = url1
marmouz.save!

puts "create 11 masseurs"

marguerite  = User.create!(
  email: "marguerite@gmail.com",
  password: "nounours",
  first_name: "Marguerite",
  last_name: "Yourcenar",
  address: "3, avenue léopold 2",
  ZIP_code: "75001",
  city: "Paris",
  description:"Salut à tous et à toutes, c'est moi Marguerite. J'écris un peu pour arrondir les fins de mois et suis sinon masseuse depuis 10 ans. J'adore mon métier! Look forward to see you guys !",
  gender: "Femme",
  mass_or_not: true,
  siret: "37224779432228",
)

url2 = "https://res.cloudinary.com/dvmytrwrd/image/upload/v1567174087/lrvcqvxwqfyrbspbcdq2_rhr5mn.png"
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
  description:"Salut, c'est Simone. Moi, les machomen et compagnie, c'est non merci. Ok? Je suis masseuse, mais le respect c'est de chaque côté. Merci !",
  gender: "Femme",
  mass_or_not: true,
  siret: "96773557753170",
)

url3 = "https://res.cloudinary.com/dvmytrwrd/image/upload/v1567174087/dtplfasrvwbgqllrzroy_sabkas.jpg"
simone.remote_avatar_url = url3
simone.save!

george  = User.create!(
  email: "george@gmail.com",
  password: "nounours",
  first_name: "George",
  last_name: "Sand",
  address: "Château de Nohant",
  ZIP_code: "59000",
  city: "Lille",
  description:"Salut les ptits clous. Je suis George Sand, mais rassurez vous je suis bien une femme, lol ! En fait, mon vrai nom est Amantine Dupin, baronne Dudevant (et de derrière ! ;) N'hésitez pas à réserver un massage avec moi, vous ne le regretterez pas !",
  gender: "Femme",
  mass_or_not: true,
  siret: "10284012487632",
)

url4 = "https://res.cloudinary.com/dvmytrwrd/image/upload/v1567174087/exo3xaa9zv6ehwtq6ai0_hz5rvp.jpg"
george.remote_avatar_url = url4
george.save!

francoise  = User.create!(
  email: "francoise@gmail.com",
  password: "nounours",
  first_name: "Françoise",
  last_name: "Sagan",
  address: "5 avenue du général, de l'armée et de la guerre",
  ZIP_code: "59000",
  city: "Lille",
  description:"Salut mes ptites beautés, vous me reconnaissez? C'est moi Françoise Sagan. Vous avez sans doute entendu parler de moi car j'ai écrit 'bonjour tristesse' qui est au programme pour le BAC de Français. Bonjour la décoince mdr. Bref, choose me and you won't regret it ! ;) Bisous <3",
  gender: "Femme",
  mass_or_not: true,
  siret: "37568541322033",
)

url5 = "https://res.cloudinary.com/dvmytrwrd/image/upload/v1567174088/uryzuaaxcu2dpme6ijat_my3fxf.jpg"
francoise.remote_avatar_url = url5
francoise.save!

zelda  = User.create!(
  email: "zelda@gmail.com",
  password: "nounours",
  first_name: "Zelda",
  last_name: "Fitzgerald",
  address: "33, mai road",
  ZIP_code: "59000",
  city: "Lille",
  description:"Salut les aminches, c'est Zelda Fitzgerald. Je suis la femme ET la muse de mon Francis Scott de mari. Trop bien ? Mais je suis aussi une grande écrivaine, ne soyez pas réducteur ! Et le jeu vidéo, ça vient aussi de moi ;) Choisissez moi pour un massage. On ne s'ennuiera pas !",
  gender: "Femme",
  mass_or_not: true,
  siret: "93343440732574",
)

url6 = "https://res.cloudinary.com/dvmytrwrd/image/upload/v1567174087/shnjski1zfiuienbcnqg_xgme2r.jpg"
zelda.remote_avatar_url = url6
zelda.save!

comtesse  = User.create!(
  email: "comtesse@gmail.com",
  password: "nounours",
  first_name: "Comtesse",
  last_name: "De Ségur",
  address: "543, rue Bolchaïa Morskaïa ",
  ZIP_code: "59000",
  city: "Lille",
  description:"Bonjour à tous, c'est moi Sophie Rostopchine. Ceci dit, on me connait mieux comme la comtesse de Ségur ! J'ai écrit plein de livres pour les petits enfants et ai découvert le massage il y a quelques années avec mon mari. Après une reconversion, j'exerce aujourd'hui ce métier passion et serai heureuse de vous rencontrer pour une séance.",
  gender: "Femme",
  mass_or_not: true,
  siret: "38345378831218",
)

url7 = "https://res.cloudinary.com/dvmytrwrd/image/upload/v1567174087/onjtseh0lxdp7wa4pher_jdtwwe.png"
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
  description:"Salut les poteaux, moi c'est André Gide ou dédé comme vous voulez ;) J'ai eu le prix nobel, la classe, non ? Bref maintenant pour moi c'est massage, massage, massage. Je vis massage, je bois massage, je mange massage et je dors massage (quand je dors). Au plaisir de vous rencontrer",
  gender: "Homme",
  mass_or_not: true,
  siret: "86339747427062",
)

url8 = "https://res.cloudinary.com/dvmytrwrd/image/upload/v1567174087/p9flgyrdybihhua2clcp_fwibdi.jpg"
andre.remote_avatar_url = url8
andre.save!

charles  = User.create!(
  email: "charles@gmail.com",
  password: "nounours",
  first_name: "Charles",
  last_name: "Bukowski",
  address: "21, san pedro road",
  ZIP_code: "59000",
  city: "Lille",
  description:"Salut les amis. Je suis Charles Bukowski, un sacré loustic. J'adore l'écriture, les massages relaxants et les alcools forts. Ma spécialité ? Les pierres chaudes.",
  gender: "Homme",
  mass_or_not: true,
  siret: "86315678343057",
)

url9 = "https://res.cloudinary.com/dvmytrwrd/image/upload/v1567174087/ga08qqsoplplj7gyhzkt_sjuh3q.jpg"
charles.remote_avatar_url = url9
charles.save!

michel  = User.create!(
  email: "michel@gmail.com",
  password: "nounours",
  first_name: "Michel",
  last_name: "Houellebecq",
  address: "58 rue du général De Gaulles",
  ZIP_code: "59000",
  city: "Lille",
  description:"Bonjour chers amis. C'est Michel Houellebecq. Je me suis mis récemment aux massages califoriens notamment et compte affiner ma technique grâce à RelaxMass'. Sinon j'aime bien boire du pinard et fumer des clopes. A très vite ! :)",
  gender: "Homme",
  mass_or_not: true,
  siret: "52753641281624",
)

url10 = "https://res.cloudinary.com/dvmytrwrd/image/upload/v1567757626/lfolxwy6npruot1dim9l.jpg"
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
  gender: "Homme",
  mass_or_not: true,
  siret: "73045772176287",
)

url11 = "https://res.cloudinary.com/dvmytrwrd/image/upload/v1567174683/zoxttcoadqneelgqsbeh_oaeril.jpg"
albert.remote_avatar_url = url11
albert.save!

bret  = User.create!(
  email: "bret@gmail.com",
  password: "nounours",
  first_name: "Bret Easton",
  last_name: "Ellis",
  address: "1024 Abbey Road",
  ZIP_code: "59000",
  city: "Lille",
  description:"Ola Amigos. C'est Bret Easton! Tonnerre de Bret ! ;) lol Pour moi, le roman, c'est fini, je ne crois pas que j'y retournerai un jour ! Par contre, je masse super bien, alors laissez vous tenter !",
  gender: "Homme",
  mass_or_not: true,
  siret: "40919531230298",
)

url12 = "https://res.cloudinary.com/dvmytrwrd/image/upload/v1567174087/sby0mdpggcbvsldqfwbh_a33dfe.jpg"
bret.remote_avatar_url = url12
bret.save!

puts "create massages for masseurs"

massages1 = Massage.create!(
  massage_type: "Massage Suedois",
  user: marguerite
)

massages2 = Massage.create!(
  massage_type: "Massage Californien",
  user: marguerite
)

massages3 = Massage.create!(
  massage_type: "Pierres chaudes",
  user: marguerite
)

massages4 = Massage.create!(
  massage_type: "Shiatsu",
  user: marguerite
)

massages5 = Massage.create!(
  massage_type: "Réflexologie",
  user: marguerite
)

massages6 = Massage.create!(
  massage_type: "Massage Suedois",
  user: simone
)

massages7 = Massage.create!(
  massage_type: "Massage Californien",
  user: simone
)

massages8 = Massage.create!(
  massage_type: "Pierres chaudes",
  user: simone
)

massages9 = Massage.create!(
  massage_type: "Shiatsu",
  user: george
)

massages10 = Massage.create!(
  massage_type: "Réflexologie",
  user: george
)

massages11 = Massage.create!(
  massage_type: "Massage Suedois",
  user: francoise
)

massages12 = Massage.create!(
  massage_type: "Massage Californien",
  user: francoise
)

massages13 = Massage.create!(
  massage_type: "Pierres chaudes",
  user: zelda
)

massages14 = Massage.create!(
  massage_type: "Shiatsu",
  user: zelda
)

massages15 = Massage.create!(
  massage_type: "Réflexologie",
  user: zelda
)

massages16 = Massage.create!(
  massage_type: "Massage Suedois",
  user: comtesse
)

massages17 = Massage.create!(
  massage_type: "Massage Californien",
  user: zelda
)

massages18 = Massage.create!(
  massage_type: "Pierres chaudes",
  user: comtesse
)

massages19 = Massage.create!(
  massage_type: "Réflexologie",
  user: francoise
)

massages20 = Massage.create!(
  massage_type: "Shiatsu",
  user: comtesse
)

massages21 = Massage.create!(
  massage_type: "Réflexologie",
  user: andre
)

massages22 = Massage.create!(
  massage_type: "Massage Suedois",
  user: andre
)

massages23 = Massage.create!(
  massage_type: "Massage Californien",
  user: andre
)

massages24 = Massage.create!(
  massage_type: "Pierres chaudes",
  user: charles
)

massages25 = Massage.create!(
  massage_type: "Shiatsu",
  user: charles
)

massages26 = Massage.create!(
  massage_type: "Réflexologie",
  user: charles
)

massages27 = Massage.create!(
  massage_type: "Massage Suedois",
  user: michel
)

massages28 = Massage.create!(
  massage_type: "Massage Californien",
  user: michel
)

massages29 = Massage.create!(
  massage_type: "Pierres chaudes",
  user: albert
)

massages30 = Massage.create!(
  massage_type: "Shiatsu",
  user: albert
)

massages31 = Massage.create!(
  massage_type: "Réflexologie",
  user: bret
)

puts "create bookings"

booking1 = Booking.create!(
  user: nicolas,
  massage: massages1,
  start_date: "2019-06-10 16:00:00"
)

booking2 = Booking.create!(
  user: nicolas,
  massage: massages3,
  start_date: "2019-06-08 18:00:00"
)
booking3 = Booking.create!(
  user: marmouz,
  massage: massages4,
  start_date: "2019-06-08 16:00:00"
)

booking4 = Booking.create!(
  user: nicolas,
  massage: massages7,
  start_date: "2019-06-13 16:00:00"
)

booking5 = Booking.create!(
  user: marmouz,
  massage: massages7,
  start_date: "2019-06-11 09:00:00"
)

booking6 = Booking.create!(
  user: marmouz,
  massage: massages7,
  start_date: "2019-06-11 11:00:00"
)
booking7 = Booking.create!(
  user: marmouz,
  massage: massages9,
  start_date: "2019-06-14 16:00:00"
)

booking8 = Booking.create!(
  user: marmouz,
  massage: massages10,
  start_date: "2019-06-14 17:00:00"
)

booking9 = Booking.create!(
  user: nicolas,
  massage: massages11,
  start_date: "2019-06-10 16:00:00"
)

booking10 = Booking.create!(
  user: marmouz,
  massage: massages12,
  start_date: "2019-06-15 18:00:00"
)

booking11 = Booking.create!(
  user: nicolas,
  massage: massages13,
  start_date: "2019-06-15 15:00:00"
)

booking12 = Booking.create!(
  user: marmouz,
  massage: massages14,
  start_date: "2019-06-17 20:00:00"
)

booking13 = Booking.create!(
  user: nicolas,
  massage: massages15,
  start_date: "2019-06-18 11:00:00"
)

booking14 = Booking.create!(
  user: nicolas,
  massage: massages16,
  start_date: "2019-06-18 19:00:00"
)

booking15 = Booking.create!(
  user: marmouz,
  massage: massages18,
  start_date: "2019-06-20 09:00:00"
)

booking16 = Booking.create!(
  user: nicolas,
  massage: massages20,
  start_date: "2019-06-22 14:00:00"
)

booking17 = Booking.create!(
  user: marmouz,
  massage: massages21,
  start_date: "2019-06-25 16:00:00"
)

booking18 = Booking.create!(
  user: nicolas,
  massage: massages21,
  start_date: "2019-06-25 17:00:00"
)

booking19 = Booking.create!(
  user: nicolas,
  massage: massages25,
  start_date: "2019-07-01 18:00:00"
)

booking20 = Booking.create!(
  user: marmouz,
  massage: massages26,
  start_date: "2019-07-02 19:00:00"
)

booking21 = Booking.create!(
  user: marmouz,
  massage: massages26,
  start_date: "2019-07-10 20:00:00"
)

booking22 = Booking.create!(
  user: marmouz,
  massage: massages27,
  start_date: "2019-07-10 11:00:00"
)

booking23 = Booking.create!(
  user: nicolas,
  massage: massages27,
  start_date: "2019-07-16 12:00:00"
)

booking24 = Booking.create!(
  user: nicolas,
  massage: massages28,
  start_date: "2019-08-05 16:00:00"
)

booking25 = Booking.create!(
  user: nicolas,
  massage: massages28,
  start_date: "2019-08-13 14:00:00"
)

booking26 = Booking.create!(
  user: marmouz,
  massage: massages29,
  start_date: "2019-08-14 18:00:00"
)

booking27 = Booking.create!(
  user: nicolas,
  massage: massages29,
  start_date: "2019-08-15 17:00:00"
)

booking28 = Booking.create!(
  user: marmouz,
  massage: massages30,
  start_date: "2019-08-16 16:00:00"
)

booking29 = Booking.create!(
  user: marmouz,
  massage: massages30,
  start_date: "2019-08-17 10:00:00"
)

booking30 = Booking.create!(
  user: nicolas,
  massage: massages30,
  start_date: "2019-08-27 09:00:00"
)

booking31 = Booking.create!(
  user: marmouz,
  massage: massages31,
  start_date: "2019-08-28 14:00:00"
)

booking32 = Booking.create!(
  user: nicolas,
  massage: massages31,
  start_date: "2019-08-26 15:00:00"
)

booking33 = Booking.create!(
  user: nicolas,
  massage: massages1,
  start_date: "2019-09-10 16:00:00"
)

booking34 = Booking.create!(
  user: marmouz,
  massage: massages7,
  start_date: "2019-09-11 11:00:00"
)

booking35 = Booking.create!(
  user: nicolas,
  massage: massages11,
  start_date: "2019-09-10 16:00:00"
)

booking36 = Booking.create!(
  user: marmouz,
  massage: massages12,
  start_date: "2019-09-16 18:00:00"
)

booking37 = Booking.create!(
  user: marmouz,
  massage: massages14,
  start_date: "2019-09-17 20:00:00"
)

booking38 = Booking.create!(
  user: marmouz,
  massage: massages18,
  start_date: "2019-09-20 09:00:00"
)

booking39 = Booking.create!(
  user: marmouz,
  massage: massages21,
  start_date: "2019-09-25 16:00:00"
)

booking40 = Booking.create!(
  user: nicolas,
  massage: massages25,
  start_date: "2019-12-24 18:00:00"
)

booking41 = Booking.create!(
  user: marmouz,
  massage: massages27,
  start_date: "2019-09-10 11:00:00"
)

booking42 = Booking.create!(
  user: nicolas,
  massage: massages29,
  start_date: "2019-10-15 17:00:00"
)

booking43 = Booking.create!(
  user: marmouz,
  massage: massages31,
  start_date: "2019-10-19 14:00:00"
)

puts "create reviews"

review1 = Review.create!(
  user: booking1.user,
  booking: booking1,
  rating: 3,
  content: "Le massage a bien été effectué, cependant Marguerite semblait un peu ailleurs..."
)

review2 = Review.create!(
  user: booking2.user,
  booking: booking2,
  rating: 4,
  content: "Le massage était super, mais les pierres étaient un peu trop chaudes"
)
review3 = Review.create!(
  user: booking3.user,
  booking: booking3,
  rating: 5,
  content: "Massage extra, rien à dire. Vous pouvez y aller les yeux fermés !"
)

review4 = Review.create!(
  user: booking4.user,
  booking: booking4,
  rating: 1,
  content: "Simone a dit que j'étais un phallocrate et elle m'a pincé pendant le massage ;("
)

review5 = Review.create!(
  user: booking5.user,
  booking: booking5,
  rating: 3,
  content: "Le massage était super, mais Simone est arrivée en retard..."
)

review6 = Review.create!(
  user: booking6.user,
  booking: booking6,
  rating: 2,
  content: "Simone est arrivée en retard et a essayé de me mordre :("
)
review7 = Review.create!(
  user: booking7.user,
  booking: booking7,
  rating: 4,
  content: "Massage super. Georges, qui est une femme, a été très douce."
)

review8 = Review.create!(
  user: booking8.user,
  booking: booking8,
  rating: 3,
  content: "Georges est très douce comme à son habitude, mais elle avait oublié son matériel. J'ai du me mettre sur la table de la cuisine pour le massage."
)

review9 = Review.create!(
  user: booking9.user,
  booking: booking9,
  rating: 5,
  content: "C'était vraiment super... J'en suis encore tout remué"
)

review10 = Review.create!(
  user: booking10.user,
  booking: booking10,
  rating: 3,
  content: "C'était cool, mais Francoise masse vraiment très fort. Enfin je recommande quand même, ça fait du bien (surtout quand ça s'arrete lol)"
)
review11 = Review.create!(
  user: booking11.user,
  booking: booking11,
  rating: 4,
  content: "Trop bien, les pierres étaient pile à la bonne température. Simplement Zelda ne parle pas français. C'était dur de communiquer"
)

review12 = Review.create!(
  user: booking12.user,
  booking: booking12,
  rating: 5,
  content: "Incroyable, Zelda est une vraie magicienne ! J'en suis toute revigorée"
)

review13 = Review.create!(
  user: booking13.user,
  booking: booking13,
  rating: 2,
  content: "Zelda m'a dit que je sentais mauvais des pieds et m'a obligé à aller les laver :("
)

review14 = Review.create!(
  user: booking14.user,
  booking: booking14,
  rating: 5,
  content: "C'était extraordinaire. Cette comtesse est divine !"
)
review15 = Review.create!(
  user: booking15.user,
  booking: booking15,
  rating: 4,
  content: "Les pierres de la comtesse étaient bien chaudes. J'étais ravie !"
)

review16 = Review.create!(
  user: booking16.user,
  booking: booking16,
  rating: 3,
  content: "La comtesse m'a bien massé, mais elle m'a rouspété dessus car mes chaussettes étaient dépareillées"
)

review17 = Review.create!(
  user: booking17.user,
  booking: booking17,
  rating: 5,
  content: "André est divin. Ses massages sont des oeuvres d'art"
)

review18 = Review.create!(
  user: booking18.user,
  booking: booking18,
  rating: 5,
  content: "Dédé m'a massé bien fort et c'était bon"
)

review19 = Review.create!(
  user: booking19.user,
  booking: booking19,
  rating: 3,
  content: "Charles est bien venu à l'heure convenue mais il sentait le bourbon... RAS quant au massage."
)

review20 = Review.create!(
  user: booking20.user,
  booking: booking20,
  rating: 4,
  content: "Charles m'a massé comme jamais ! Je recommande !"
)

review21 = Review.create!(
  user: booking21.user,
  booking: booking21,
  rating: 2,
  content: "Charles s'est endormi pendant le massage. Quelle déception..."
)

review22 = Review.create!(
  user: booking22.user,
  booking: booking22,
  rating: 5,
  content: "Extraordinaire ! Michel est un vrai expert !"
)
review23 = Review.create!(
  user: booking23.user,
  booking: booking23,
  rating: 4,
  content: "Très satisfait. Michel est un vrai professionnel ! Je recommande :)"
)

review24 = Review.create!(
  user: booking24.user,
  booking: booking24,
  rating: 5,
  content: "OMG !!! That was amazing !"
)

review25 = Review.create!(
  user: booking25.user,
  booking: booking25,
  rating: 3,
  content: "Un peu moins bien la dernière fois. Michel a allumé un clope pendant le massage. Sinon, que du bonheur..."
)

review26 = Review.create!(
  user: booking26.user,
  booking: booking26,
  rating: 5,
  content: "Super cool, je recommande. Rien à dire, juste extra !"
)
review27 = Review.create!(
  user: booking27.user,
  booking: booking27,
  rating: 5,
  content: "C'était juste 'WAOUH' !"
)

review28 = Review.create!(
  user: booking28.user,
  booking: booking28,
  rating: 3,
  content: "Massothérapeuthe très pro, mais massage trop court"
)

review29 = Review.create!(
  user: booking29.user,
  booking: booking29,
  rating: 4,
  content: "Super, malgré quelques petits problèmes de ponctualité"
)

review30 = Review.create!(
  user: booking30.user,
  booking: booking30,
  rating: 4,
  content: "Super massage. Vous pouvez y aller les yeux fermés !"
)
review31 = Review.create!(
  user: booking31.user,
  booking: booking31,
  rating: 5,
  content: "Incroyable, Bret a fait des miracles"
)

review32 = Review.create!(
  user: booking32.user,
  booking: booking32,
  rating: 1,
  content: "Je ne recommande pas du tout ce monsieur. Il a été très grossier et s'est comporté comme un vrai voyou."
)
