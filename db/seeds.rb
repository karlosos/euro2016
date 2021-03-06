# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
# #
# # Examples:
# #
# #   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
# #   Mayor.create(name: 'Emanuel', city: cities.first)
#
# # Teams
# Team.create(name: 'Francja', flag_url:  'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c3/Flag_of_France.svg/22px-Flag_of_France.svg.png')
# Team.create(name: 'Czechy', flag_url:  'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cb/Flag_of_the_Czech_Republic.svg/22px-Flag_of_the_Czech_Republic.svg.png')
# Team.create(name: 'Islandia', flag_url:  'https://upload.wikimedia.org/wikipedia/commons/thumb/c/ce/Flag_of_Iceland.svg/22px-Flag_of_Iceland.svg.png')
# Team.create(name: 'Belgia', flag_url:  'https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/Flag_of_Belgium_%28civil%29.svg/22px-Flag_of_Belgium_%28civil%29.svg.png')
# Team.create(name: 'Walia', flag_url:  'https://upload.wikimedia.org/wikipedia/commons/thumb/5/59/Flag_of_Wales_2.svg/22px-Flag_of_Wales_2.svg.png')
# Team.create(name: 'Hiszpania', flag_url:  'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9a/Flag_of_Spain.svg/22px-Flag_of_Spain.svg.png')
# Team.create(name: 'Słowacja', flag_url:  'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e6/Flag_of_Slovakia.svg/22px-Flag_of_Slovakia.svg.png')
# Team.create(name: 'Niemcy', flag_url:  'https://upload.wikimedia.org/wikipedia/commons/thumb/b/ba/Flag_of_Germany.svg/22px-Flag_of_Germany.svg.png')
# Team.create(name: 'Polska', flag_url:  'https://upload.wikimedia.org/wikipedia/commons/thumb/1/12/Flag_of_Poland.svg/22px-Flag_of_Poland.svg.png')
# Team.create(name: 'Anglia', flag_url:  'https://upload.wikimedia.org/wikipedia/commons/thumb/b/be/Flag_of_England.svg/22px-Flag_of_England.svg.png')
# Team.create(name: 'Szwajcaria', flag_url:  'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f3/Flag_of_Switzerland.svg/16px-Flag_of_Switzerland.svg.png')
# Team.create(name: 'Irlandia Północna', flag_url:  'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f6/Flag_of_Northern_Ireland.svg/22px-Flag_of_Northern_Ireland.svg.png')
# Team.create(name: 'Rumunia', flag_url:  'https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/Flag_of_Romania.svg/22px-Flag_of_Romania.svg.png')
# Team.create(name: 'Austria', flag_url:  'https://upload.wikimedia.org/wikipedia/commons/thumb/4/41/Flag_of_Austria.svg/22px-Flag_of_Austria.svg.png')
# Team.create(name: 'Rosja', flag_url:  'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f3/Flag_of_Russia.svg/22px-Flag_of_Russia.svg.png')
# Team.create(name: 'Włochy', flag_url:  'https://upload.wikimedia.org/wikipedia/commons/thumb/0/03/Flag_of_Italy.svg/22px-Flag_of_Italy.svg.png')
# Team.create(name: 'Chorwacja', flag_url:  'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/Flag_of_Croatia.svg/22px-Flag_of_Croatia.svg.png')
# Team.create(name: 'Portugalia', flag_url:  'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/Flag_of_Portugal.svg/22px-Flag_of_Portugal.svg.png')
# Team.create(name: 'Albania', flag_url:  'https://upload.wikimedia.org/wikipedia/commons/thumb/3/36/Flag_of_Albania.svg/22px-Flag_of_Albania.svg.png')
# Team.create(name: 'Turcja', flag_url:  'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b4/Flag_of_Turkey.svg/22px-Flag_of_Turkey.svg.png')
# Team.create(name: 'Węgry', flag_url:  'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Flag_of_Hungary.svg/22px-Flag_of_Hungary.svg.png')
# Team.create(name: 'Irlandia', flag_url:  'https://upload.wikimedia.org/wikipedia/commons/thumb/4/45/Flag_of_Ireland.svg/22px-Flag_of_Ireland.svg.png')
# Team.create(name: 'Szwecja', flag_url:  'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4c/Flag_of_Sweden.svg/22px-Flag_of_Sweden.svg.png')
# Team.create(name: 'Ukraina', flag_url:  'https://upload.wikimedia.org/wikipedia/commons/thumb/4/49/Flag_of_Ukraine.svg/22px-Flag_of_Ukraine.svg.png')
#
# # matches
# Match.create(date: DateTime.parse('10.06.2016 21:00:00+02:00'), team_a_id: Team.find_by(name:'Francja').id, team_b_id: Team.find_by(name:'Rumunia').id, stadium: 'Stade de France, Saint-Denis')
# Match.create(date: DateTime.parse('11.06.2016 15:00:00+02:00'), team_a_id: Team.find_by(name:'Albania').id, team_b_id: Team.find_by(name:'Szwajcaria').id, stadium: 'Stade Félix-Bollaert, Lens')
# Match.create(date: DateTime.parse('11.06.2016 18:00:00+02:00'), team_a_id: Team.find_by(name:'Walia').id, team_b_id: Team.find_by(name:'Słowacja').id, stadium: 'Stade Bordeaux-Atlantique, Bordeaux')
# Match.create(date: DateTime.parse('11.06.2016 21:00:00+02:00'), team_a_id: Team.find_by(name:'Anglia').id, team_b_id: Team.find_by(name:'Rosja').id, stadium: 'Stade Vélodrome, Marsylia')
# Match.create(date: DateTime.parse('12.06.2016 15:00:00+02:00'), team_a_id: Team.find_by(name:'Turcja').id, team_b_id: Team.find_by(name:'Chorwacja').id, stadium: 'Parc des Princes, Paryż')
# Match.create(date: DateTime.parse('12.06.2016 18:00:00+02:00'), team_a_id: Team.find_by(name:'Polska').id, team_b_id: Team.find_by(name:'Irlandia Północna').id, stadium: 'Allianz Riviera, Nicea')
# Match.create(date: DateTime.parse('12.06.2016 21:00:00+02:00'), team_a_id: Team.find_by(name:'Niemcy').id, team_b_id: Team.find_by(name:'Ukraina').id, stadium: 'Stade Pierre-Mauroy, Lille')
# Match.create(date: DateTime.parse('13.06.2016 15:00:00+02:00'), team_a_id: Team.find_by(name:'Hiszpania').id, team_b_id: Team.find_by(name:'Czechy').id, stadium: 'Stadium Municipal, Tuluza')
# Match.create(date: DateTime.parse('13.06.2016 18:00:00+02:00'), team_a_id: Team.find_by(name:'Irlandia').id, team_b_id: Team.find_by(name:'Szwecja').id, stadium: 'Stade de France, Saint-Denis')
# Match.create(date: DateTime.parse('13.06.2016 21:00:00+02:00'), team_a_id: Team.find_by(name:'Belgia').id, team_b_id: Team.find_by(name:'Włochy').id, stadium: 'Stade des Lumières, Lyon')
# Match.create(date: DateTime.parse('14.06.2016 18:00:00+02:00'), team_a_id: Team.find_by(name:'Austria').id, team_b_id: Team.find_by(name:'Węgry').id, stadium: 'Stade Bordeaux-Atlantique, Bordeaux')
# Match.create(date: DateTime.parse('14.06.2016 21:00:00+02:00'), team_a_id: Team.find_by(name:'Portugalia').id, team_b_id: Team.find_by(name:'Islandia').id, stadium: 'Stade Geoffroy-Guichard, Saint-Étienne')
# Match.create(date: DateTime.parse('15.06.2016 15:00:00+02:00'), team_a_id: Team.find_by(name:'Rosja').id, team_b_id: Team.find_by(name:'Słowacja').id, stadium: 'Stade Pierre-Mauroy, Lille')
# Match.create(date: DateTime.parse('15.06.2016 18:00:00+02:00'), team_a_id: Team.find_by(name:'Rumunia').id, team_b_id: Team.find_by(name:'Szwajcaria').id, stadium: 'Parc des Princes, Paryż')
# Match.create(date: DateTime.parse('15.06.2016 21:00:00+02:00'), team_a_id: Team.find_by(name:'Francja').id, team_b_id: Team.find_by(name:'Albania').id, stadium: 'Stade Vélodrome, Marsylia')
# Match.create(date: DateTime.parse('16.06.2016 15:00:00+02:00'), team_a_id: Team.find_by(name:'Anglia').id, team_b_id: Team.find_by(name:'Walia').id, stadium: 'Stade Félix-Bollaert, Lens')
# Match.create(date: DateTime.parse('16.06.2016 18:00:00+02:00'), team_a_id: Team.find_by(name:'Ukraina').id, team_b_id: Team.find_by(name:'Irlandia Północna').id, stadium: 'Stade des Lumières, Lyon')
# Match.create(date: DateTime.parse('16.06.2016 21:00:00+02:00'), team_a_id: Team.find_by(name:'Niemcy').id, team_b_id: Team.find_by(name:'Polska').id, stadium: 'Stade de France, Saint-Denis')
# Match.create(date: DateTime.parse('17.06.2016 15:00:00+02:00'), team_a_id: Team.find_by(name:'Włochy').id, team_b_id: Team.find_by(name:'Szwecja').id, stadium: 'Stadium Municipal, Tuluza')
# Match.create(date: DateTime.parse('17.06.2016 18:00:00+02:00'), team_a_id: Team.find_by(name:'Czechy').id, team_b_id: Team.find_by(name:'Chorwacja').id, stadium: 'Stade Geoffroy-Guichard, Saint-Étienne')
# Match.create(date: DateTime.parse('17.06.2016 21:00:00+02:00'), team_a_id: Team.find_by(name:'Hiszpania').id, team_b_id: Team.find_by(name:'Turcja').id, stadium: 'Allianz Riviera, Nicea')
# Match.create(date: DateTime.parse('18.06.2016 15:00:00+02:00'), team_a_id: Team.find_by(name:'Belgia').id, team_b_id: Team.find_by(name:'Irlandia').id, stadium: 'Stade Bordeaux-Atlantique, Bordeaux')
# Match.create(date: DateTime.parse('18.06.2016 18:00:00+02:00'), team_a_id: Team.find_by(name:'Islandia').id, team_b_id: Team.find_by(name:'Węgry').id, stadium: 'Stade Vélodrome, Marsylia')
# Match.create(date: DateTime.parse('18.06.2016 21:00:00+02:00'), team_a_id: Team.find_by(name:'Portugalia').id, team_b_id: Team.find_by(name:'Austria').id, stadium: 'Parc des Princes, Paryż')
# Match.create(date: DateTime.parse('19.06.2016 21:00:00+02:00'), team_a_id: Team.find_by(name:'Rumunia').id, team_b_id: Team.find_by(name:'Albania').id, stadium: 'Stade des Lumières, Lyon')
# Match.create(date: DateTime.parse('19.06.2016 21:00:00+02:00'), team_a_id: Team.find_by(name:'Szwajcaria').id, team_b_id: Team.find_by(name:'Francja').id, stadium: 'Stade Pierre-Mauroy, Lille')
# Match.create(date: DateTime.parse('20.06.2016 21:00:00+02:00'), team_a_id: Team.find_by(name:'Rosja').id, team_b_id: Team.find_by(name:'Walia').id, stadium: 'Stadium Municipal, Tuluza')
# Match.create(date: DateTime.parse('20.06.2016 21:00:00+02:00'), team_a_id: Team.find_by(name:'Słowacja').id, team_b_id: Team.find_by(name:'Anglia').id, stadium: 'Stade Geoffroy-Guichard, Saint-Étienne')
# Match.create(date: DateTime.parse('21.06.2016 18:00:00+02:00'), team_a_id: Team.find_by(name:'Ukraina').id, team_b_id: Team.find_by(name:'Polska').id, stadium: 'Stade Vélodrome, Marsylia')
# Match.create(date: DateTime.parse('21.06.2016 18:00:00+02:00'), team_a_id: Team.find_by(name:'Irlandia Północna').id, team_b_id: Team.find_by(name:'Niemcy').id, stadium: 'Parc des Princes, Paryż')
# Match.create(date: DateTime.parse('21.06.2016 21:00:00+02:00'), team_a_id: Team.find_by(name:'Czechy').id, team_b_id: Team.find_by(name:'Turcja').id, stadium: 'Stade Félix-Bollaert, Lens')
# Match.create(date: DateTime.parse('21.06.2016 21:00:00+02:00'), team_a_id: Team.find_by(name:'Chorwacja').id, team_b_id: Team.find_by(name:'Hiszpania').id, stadium: 'Stade Bordeaux-Atlantique, Bordeaux')
# Match.create(date: DateTime.parse('22.06.2016 21:00:00+02:00'), team_a_id: Team.find_by(name:'Włochy').id, team_b_id: Team.find_by(name:'Irlandia').id, stadium: 'Stade Pierre-Mauroy, Lille')
# Match.create(date: DateTime.parse('22.06.2016 21:00:00+02:00'), team_a_id: Team.find_by(name:'Szwecja').id, team_b_id: Team.find_by(name:'Belgia').id, stadium: 'Allianz Riviera, Nicea')
# Match.create(date: DateTime.parse('22.06.2016 18:00:00+02:00'), team_a_id: Team.find_by(name:'Islandia').id, team_b_id: Team.find_by(name:'Austria').id, stadium: 'Stade de France, Saint-Denis')
#
# # Users
# User.create(email: "ciapek@example.com", username: "ciapek" , password: "password", password_confirmation: "password", admin: false)
#
# User.create(email: "julka@example.com", username: "julka" , password: "password", password_confirmation: "password", admin: false)
#
# User.create(email: "kacper@example.com", username: "kacper" , password: "password", password_confirmation: "password", admin: false)
#
# User.create(email: "karol@example.com", username: "karol" , password: "password", password_confirmation: "password", admin: true)
#
# User.create(email: "konrad@example.com", username: "konrad" , password: "password", password_confirmation: "password", admin: false)
#
# User.create(email: "skolwin@example.com", username: "skolwin" , password: "password", password_confirmation: "password", admin: false)
#
# User.create(email: "wojna@example.com", username: "wojna" , password: "password", password_confirmation: "password", admin: false)
#
#
# Channel.create(name: "Polsat", access: true,  image_url: "http://i.wp.pl/a/i/program_tv/logotypy/5.jpg")
# Channel.create(name: "Polsat Sport", access: false, image_url: "http://i.wp.pl/a/i/program_tv/logotypy/polsat-sport.jpg")
# Channel.create(name: "Polsat Sport 2 HD", access: false)
# Channel.create(name: "Polsat Sport 3 HD", access: false)
# Channel.create(name: "TVP1", access: true, image_url: "http://i.wp.pl/a/i/program_tv/logotypy/tvp1.jpg")
#
# Match.find(1).channels << Channel.find(1)
# Match.find(1).channels << Channel.find(2)
# Match.find(1).channels << Channel.find(3)
#
# Match.find(2).channels << Channel.find(1)
# Match.find(2).channels << Channel.find(2)
# Match.find(2).channels << Channel.find(3)
#
# Match.find(3).channels << Channel.find(3)
#
# Match.find(4).channels << Channel.find(3)
#
# Match.find(5).channels << Channel.find(3)
#
# Match.find(6).channels << Channel.find(1)
# Match.find(6).channels << Channel.find(2)
# Match.find(6).channels << Channel.find(3)
#
# Match.find(7).channels << Channel.find(3)
#
# Match.find(8).channels << Channel.find(1)
# Match.find(8).channels << Channel.find(2)
# Match.find(8).channels << Channel.find(3)
#
# Match.find(9).channels << Channel.find(3)
#
# Match.find(10).channels << Channel.find(3)
#
# Match.find(11).channels << Channel.find(1)
# Match.find(11).channels << Channel.find(2)
# Match.find(11).channels << Channel.find(3)
#
# Match.find(12).channels << Channel.find(3)
#
# Match.find(13).channels << Channel.find(1)
# Match.find(13).channels << Channel.find(2)
# Match.find(13).channels << Channel.find(3)
#
# Match.find(14).channels << Channel.find(3)
#
# Match.find(15).channels << Channel.find(3)
#
# Match.find(16).channels << Channel.find(3)
#
# Match.find(17).channels << Channel.find(3)
#
# Match.find(18).channels << Channel.find(1)
# Match.find(18).channels << Channel.find(2)
# Match.find(18).channels << Channel.find(3)
#
# Match.find(19).channels << Channel.find(1)
# Match.find(19).channels << Channel.find(2)
# Match.find(19).channels << Channel.find(3)
#
# Match.find(20).channels << Channel.find(3)
#
# Match.find(21).channels << Channel.find(3)
#
# Match.find(22).channels << Channel.find(1)
# Match.find(22).channels << Channel.find(2)
# Match.find(22).channels << Channel.find(3)
#
# Match.find(23).channels << Channel.find(3)
#
# Match.find(24).channels << Channel.find(3)
#
# Match.find(25).channels << Channel.find(1)
# Match.find(25).channels << Channel.find(2)
# Match.find(25).channels << Channel.find(3)
#
# Match.find(26).channels << Channel.find(3)
#
# Match.find(27).channels << Channel.find(1)
# Match.find(27).channels << Channel.find(2)
# Match.find(27).channels << Channel.find(3)
#
# Match.find(28).channels << Channel.find(3)
#
# Match.find(29).channels << Channel.find(1)
# Match.find(29).channels << Channel.find(2)
# Match.find(29).channels << Channel.find(3)
#
# Match.find(30).channels << Channel.find(3)
#
# Match.find(31).channels << Channel.find(3)
#
# Match.find(32).channels << Channel.find(1)
# Match.find(32).channels << Channel.find(2)
# Match.find(32).channels << Channel.find(3)
#
# Match.find(33).channels << Channel.find(3)
#
# Match.find(34).channels << Channel.find(3)
#
# Match.find(35).channels << Channel.find(3)
#
# Prediction.create(match: Match.find(1), score_a: 3, score_b: 1, user: User.find(1));
# Prediction.create(match: Match.find(2), score_a: 1, score_b: 1, user: User.find(1));
# Prediction.create(match: Match.find(3), score_a: 0, score_b: 0, user: User.find(1));
# Prediction.create(match: Match.find(4), score_a: 2, score_b: 2, user: User.find(1));
# Prediction.create(match: Match.find(5), score_a: 1, score_b: 2, user: User.find(1));
# Prediction.create(match: Match.find(6), score_a: 1, score_b: 1, user: User.find(1));
# Prediction.create(match: Match.find(7), score_a: 3, score_b: 0, user: User.find(1));
# Prediction.create(match: Match.find(8), score_a: 1, score_b: 1, user: User.find(1));
# Prediction.create(match: Match.find(9), score_a: 0, score_b: 3, user: User.find(1));
# Prediction.create(match: Match.find(10), score_a: 2, score_b: 3, user: User.find(1));
# Prediction.create(match: Match.find(11), score_a: 0, score_b: 0, user: User.find(1));
# Prediction.create(match: Match.find(12), score_a: 1, score_b: 0, user: User.find(1));
#
# Prediction.create(match: Match.find(1), score_a:    3, score_b: 0, user: User.find(2));
# Prediction.create(match: Match.find(2), score_a:    0, score_b: 1, user: User.find(2));
# Prediction.create(match: Match.find(3), score_a:    0, score_b: 1, user: User.find(2));
# Prediction.create(match: Match.find(4), score_a:    2, score_b: 0, user: User.find(2));
# Prediction.create(match: Match.find(5), score_a:    1, score_b: 2, user: User.find(2));
# Prediction.create(match: Match.find(6), score_a:    1, score_b: 0, user: User.find(2));
# Prediction.create(match: Match.find(7), score_a:    2, score_b: 1, user: User.find(2));
# Prediction.create(match: Match.find(8), score_a:    2, score_b: 0, user: User.find(2));
# Prediction.create(match: Match.find(9), score_a:    1, score_b: 1, user: User.find(2));
# Prediction.create(match: Match.find(10), score_a:   2, score_b: 2, user: User.find(2));
# Prediction.create(match: Match.find(11), score_a:   2, score_b: 0, user: User.find(2));
# Prediction.create(match: Match.find(12), score_a:   1, score_b: 0, user: User.find(2));
#
# Prediction.create(match: Match.find(1), score_a:    3, score_b: 1, user: User.find(3));
# Prediction.create(match: Match.find(2), score_a:    2, score_b: 3, user: User.find(3));
# Prediction.create(match: Match.find(3), score_a:    2, score_b: 2, user: User.find(3));
# Prediction.create(match: Match.find(4), score_a:    3, score_b: 1, user: User.find(3));
# Prediction.create(match: Match.find(5), score_a:    1, score_b: 2, user: User.find(3));
# Prediction.create(match: Match.find(6), score_a:    2, score_b: 1, user: User.find(3));
# Prediction.create(match: Match.find(7), score_a:    3, score_b: 1, user: User.find(3));
# Prediction.create(match: Match.find(8), score_a:    4, score_b: 1, user: User.find(3));
# Prediction.create(match: Match.find(9), score_a:    2, score_b: 1, user: User.find(3));
# Prediction.create(match: Match.find(10), score_a:   1, score_b: 2, user: User.find(3));
# Prediction.create(match: Match.find(11), score_a:   3, score_b: 1, user: User.find(3));
# Prediction.create(match: Match.find(12), score_a:   3, score_b: 1, user: User.find(3));
#
# Prediction.create(match: Match.find(1), score_a:    2, score_b: 0, user: User.find(4));
# Prediction.create(match: Match.find(2), score_a:    1, score_b: 2, user: User.find(4));
# Prediction.create(match: Match.find(3), score_a:    3, score_b: 1, user: User.find(4));
# Prediction.create(match: Match.find(4), score_a:    1, score_b: 1, user: User.find(4));
# Prediction.create(match: Match.find(5), score_a:    2, score_b: 0, user: User.find(4));
# Prediction.create(match: Match.find(6), score_a:    1, score_b: 0, user: User.find(4));
# Prediction.create(match: Match.find(7), score_a:    0, score_b: 0, user: User.find(4));
# Prediction.create(match: Match.find(8), score_a:    2, score_b: 0, user: User.find(4));
# Prediction.create(match: Match.find(9), score_a:    1, score_b: 4, user: User.find(4));
# Prediction.create(match: Match.find(10), score_a:   1, score_b: 1, user: User.find(4));
# Prediction.create(match: Match.find(11), score_a:   2, score_b: 1, user: User.find(4));
# Prediction.create(match: Match.find(12), score_a:   3, score_b: 0, user: User.find(4));
#
# Prediction.create(match: Match.find(1), score_a:    3, score_b: 0, user: User.find(5));
# Prediction.create(match: Match.find(2), score_a:    0, score_b: 2, user: User.find(5));
# Prediction.create(match: Match.find(3), score_a:    2, score_b: 1, user: User.find(5));
# Prediction.create(match: Match.find(4), score_a:    2, score_b: 1, user: User.find(5));
# Prediction.create(match: Match.find(5), score_a:    0, score_b: 0, user: User.find(5));
# Prediction.create(match: Match.find(6), score_a:    2, score_b: 1, user: User.find(5));
# Prediction.create(match: Match.find(7), score_a:    2, score_b: 0, user: User.find(5));
# Prediction.create(match: Match.find(8), score_a:    3, score_b: 1, user: User.find(5));
# Prediction.create(match: Match.find(9), score_a:    1, score_b: 2, user: User.find(5));
# Prediction.create(match: Match.find(10), score_a:   1, score_b: 0, user: User.find(5));
# Prediction.create(match: Match.find(11), score_a:   3, score_b: 0, user: User.find(5));
# Prediction.create(match: Match.find(12), score_a:   1, score_b: 1, user: User.find(5));
#
# Prediction.create(match: Match.find(1), score_a:    2, score_b: 0, user: User.find(6));
# Prediction.create(match: Match.find(2), score_a:    0, score_b: 1, user: User.find(6));
# Prediction.create(match: Match.find(3), score_a:    1, score_b: 1, user: User.find(6));
# Prediction.create(match: Match.find(4), score_a:    2, score_b: 1, user: User.find(6));
# Prediction.create(match: Match.find(5), score_a:    2, score_b: 2, user: User.find(6));
# Prediction.create(match: Match.find(6), score_a:    2, score_b: 1, user: User.find(6));
# Prediction.create(match: Match.find(7), score_a:    3, score_b: 0, user: User.find(6));
# Prediction.create(match: Match.find(8), score_a:    2, score_b: 1, user: User.find(6));
# Prediction.create(match: Match.find(9), score_a:    1, score_b: 1, user: User.find(6));
# Prediction.create(match: Match.find(10), score_a:   0, score_b: 1, user: User.find(6));
# Prediction.create(match: Match.find(11), score_a:   0, score_b: 0, user: User.find(6));
# Prediction.create(match: Match.find(12), score_a:   2, score_b: 1, user: User.find(6));
#
# Prediction.create(match: Match.find(1), score_a:    2, score_b: 1, user: User.find(7));
# Prediction.create(match: Match.find(2), score_a:    0, score_b: 1, user: User.find(7));
# Prediction.create(match: Match.find(3), score_a:    1, score_b: 0, user: User.find(7));
# Prediction.create(match: Match.find(4), score_a:    0, score_b: 0, user: User.find(7));
# Prediction.create(match: Match.find(5), score_a:    1, score_b: 3, user: User.find(7));
# Prediction.create(match: Match.find(6), score_a:    2, score_b: 1, user: User.find(7));
# Prediction.create(match: Match.find(7), score_a:    3, score_b: 0, user: User.find(7));
# Prediction.create(match: Match.find(8), score_a:    1, score_b: 0, user: User.find(7));
# Prediction.create(match: Match.find(9), score_a:    1, score_b: 1, user: User.find(7));
# Prediction.create(match: Match.find(10), score_a:   2, score_b: 3, user: User.find(7));
# Prediction.create(match: Match.find(11), score_a:   0, score_b: 0, user: User.find(7));
# Prediction.create(match: Match.find(12), score_a:   1, score_b: 0, user: User.find(7));
#
Prediction.all.each do |prediction|
  prediction.update_predicted_result(true)
  prediction.update_points
end
