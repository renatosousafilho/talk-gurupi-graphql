d1 = Director.create(name: "Martin Scorcese")
d1.movies.create(name: "Taxi Driver", year: "1976")
d1.movies.create(name: "The Goodfeelas", year: "1990")
d1.movies.create(name: "The Irishman", year: "2019")
d2 = Director.create(name: "Quentin Tarantino")
d2.movies.create(name: "Pulp Fiction", year: "1994")
d2.movies.create(name: "Kill Bill - Vol 1", year: "2003")
d2.movies.create(name: "Once Upon a Time in Hollywood", year: "2019")
d3 = Director.create(name: "Christopher Nolan")
d3.movies.create(name: "The Dark Knight", year: "2007")
d3.movies.create(name: "Inception", year: "2010")
d3.movies.create(name: "Dunkirk", year: "2017")