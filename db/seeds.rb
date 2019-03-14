Comedian.destroy_all
Special.destroy_all

richard_prior = Comedian.create(name: "Richard Prior", age: 65, city: "Los Angeles, CA")
george_carlin = Comedian.create(name: "George Carlin", age: 71, city: "Santa Monica, CA")
joan_rivers = Comedian.create(name: "Joan Rivers", age: 81, city: "New York City, NY")
robin_williams = Comedian.create(name: "Robin Williams", age: 63, city: "Tiburon, CA")
bill_burr = Comedian.create(name: "Bill Burr", age: 50, city: "Canton, MA")
chris_rock = Comedian.create(name: "Chris Rock", age: 53, city: "Andrews, SC")
wanda_sykes = Comedian.create(name: "Wanda Sykes", age: 54, city: "Portsmouth, VA")
eddie_murphy = Comedian.create(name: "Eddie Murphy", age: 57, city: "New York City, NY")
jerry_seinfeld = Comedian.create(name: "Jerry Seinfeld", age: 64, city: "New York City, NY")
dave_chapelle = Comedian.create(name: "Dave Chapelle", age: 45, city: "Washington, DC")
sarah_silverman = Comedian.create(name: "Sarah Silverman", age: 48, city: "Bedford, NH")
michelle_wolf = Comedian.create(name: "Michelle Wolf", age: 33, city: "Hershey, PA")

richard_prior.specials.create(name: "Live and Smokin'", run_time: 48, thumbnail: "https://m.media-amazon.com/images/M/MV5BMTkyMDI1OTc2N15BMl5BanBnXkFtZTcwNzgzODEyMQ@@._V1_UY268_CR4,0,182,268_AL_.jpg")
richard_prior.specials.create(name: "Live in Concert", run_time: 78, thumbnail: "https://m.media-amazon.com/images/M/MV5BMTg4NDkwMzYwNF5BMl5BanBnXkFtZTYwNTMzMTQ5._V1_UY268_CR2,0,182,268_AL_.jpg")
richard_prior.specials.create(name: "Live on the Sunset Strip", run_time: 88, thumbnail: "https://m.media-amazon.com/images/M/MV5BNTI1MWQ1M2YtMTRjNS00NTlhLThkNzctODk2ZmQ2NmMzN2ViXkEyXkFqcGdeQXVyNzc5MjA3OA@@._V1_UX182_CR0,0,182,268_AL_.jpg")

george_carlin.specials.create(name: "Doin' It Again", run_time: 60, thumbnail: "https://m.media-amazon.com/images/M/MV5BMjg4MTYwNjY0NF5BMl5BanBnXkFtZTcwNzg1OTkyMQ@@._V1_UY268_CR5,0,182,268_AL_.jpg")
george_carlin.specials.create(name: "Jammin' in New York", run_time: 59, thumbnail: "https://m.media-amazon.com/images/M/MV5BMTI2MjA5NjEwOF5BMl5BanBnXkFtZTcwMDYzOTIzMQ@@._V1_UY268_CR3,0,182,268_AL_.jpg")
george_carlin.specials.create(name: "It's Bad for Ya!", run_time: 70, thumbnail: "https://m.media-amazon.com/images/M/MV5BMzI0Njk5ZWYtNGVhNy00MjVmLWFhMWItN2NhNGQ5NDQ3YmE3XkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_UX182_CR0,0,182,268_AL_.jpg")

joan_rivers.specials.create(name: "Don't Start with Me", run_time: 68, thumbnail: "https://m.media-amazon.com/images/M/MV5BMTU4Nzg3MTM5OF5BMl5BanBnXkFtZTcwODI3NjM4OA@@._V1_UY268_CR7,0,182,268_AL_.jpg")
joan_rivers.specials.create(name: "Abroad in London", run_time: 57, thumbnail: "https://m.media-amazon.com/images/M/MV5BNjQ0OTlmZWItOGQ2Yy00MzdkLWExMjUtNDJkNzgyZjk4ZTYwXkEyXkFqcGdeQXVyMjQ0NzE0MQ@@._V1_UX182_CR0,0,182,268_AL_.jpg")

robin_williams.specials.create(name: "Weapons of Self Destruction", run_time: 90, thumbnail: "https://m.media-amazon.com/images/M/MV5BMTc2NTg2OTQ0OV5BMl5BanBnXkFtZTcwNTcyNjgxMw@@._V1_UY268_CR4,0,182,268_AL_.jpg")
robin_williams.specials.create(name: "Live on Broadway", run_time: 99, thumbnail: "https://m.media-amazon.com/images/M/MV5BMTc1MTQ4NjcyOF5BMl5BanBnXkFtZTcwODIyNzIyMQ@@._V1_UY268_CR4,0,182,268_AL_.jpg")

bill_burr.specials.create(name: "You People Are All the Same.", run_time: 69, thumbnail: "https://m.media-amazon.com/images/M/MV5BMjAyZTI1NjMtNjQ3OC00MDhhLTkxMDgtMDVmMThhNjE5M2NkXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY268_CR4,0,182,268_AL_.jpg")
bill_burr.specials.create(name: "I'm Sorry You Feel That Way", run_time: 80, thumbnail: "https://m.media-amazon.com/images/M/MV5BMTk0MzI5MjAxNV5BMl5BanBnXkFtZTgwNDY1NzA0NDE@._V1_UX182_CR0,0,182,268_AL_.jpg")
bill_burr.specials.create(name: "Walk Your Way Out", run_time: 77, thumbnail: "https://m.media-amazon.com/images/M/MV5BMGYwNDE4MDItNjQwYi00NWIwLWJmYTYtY2I5NDEyMGUxNWMwL2ltYWdlXkEyXkFqcGdeQXVyMjUwMTM3MTU@._V1_UY268_CR10,0,182,268_AL_.jpg")

chris_rock.specials.create(name: "Never Scared", run_time: 80, thumbnail: "https://m.media-amazon.com/images/M/MV5BMTlhYzMzNzItNWMyYy00ZGRlLWI1N2UtOGI2YjIwOGEwYTViXkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_UX182_CR0,0,182,268_AL_.jpg")
chris_rock.specials.create(name: "Kill the Messenger", run_time: 79, thumbnail: "https://m.media-amazon.com/images/M/MV5BMjAwMjQxNDA5OF5BMl5BanBnXkFtZTcwNTE3MzM5MQ@@._V1_UY268_CR11,0,182,268_AL_.jpg")
chris_rock.specials.create(name: "Tamborine", run_time: 64, thumbnail: "https://m.media-amazon.com/images/M/MV5BMGQ5NWJmMDktMDMxNS00ZWQzLWEzNjgtZWU5NjE0ZmZjYjc0XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY268_CR4,0,182,268_AL_.jpg")

wanda_sykes.specials.create(name: "Tongue Untied", run_time: 42, thumbnail: "https://m.media-amazon.com/images/M/MV5BMTczMjU3MDA0OF5BMl5BanBnXkFtZTcwNTg4MjIyMQ@@._V1_UY268_CR4,0,182,268_AL_.jpg")
wanda_sykes.specials.create(name: "Sick and Tired", run_time: 70, thumbnail: "https://m.media-amazon.com/images/M/MV5BMTg4NjcxMDY1N15BMl5BanBnXkFtZTcwNDYxOTUzMQ@@._V1_UY268_CR4,0,182,268_AL_.jpg")
wanda_sykes.specials.create(name: "I'ma Be Me", run_time: 87, thumbnail: "https://m.media-amazon.com/images/M/MV5BOTAxODQ3NzQxOV5BMl5BanBnXkFtZTcwNDIwOTY4Mg@@._V1_UX182_CR0,0,182,268_AL_.jpg")

eddie_murphy.specials.create(name: "Delirious", run_time: 69, thumbnail: "https://m.media-amazon.com/images/M/MV5BMTQ5MDcyODU0Nl5BMl5BanBnXkFtZTcwMTgxNjA0MQ@@._V1_UY268_CR4,0,182,268_AL_.jpg")
eddie_murphy.specials.create(name: "Raw", run_time: 99, thumbnail: "https://m.media-amazon.com/images/M/MV5BOWEwYTk4YTgtZGVjNi00MmI0LTkwOTItOWUxYzBlN2YwZWFkXkEyXkFqcGdeQXVyNzc5MjA3OA@@._V1_UX182_CR0,0,182,268_AL_.jpg")

jerry_seinfeld.specials.create(name: "Stand-Up Confidential", run_time: 55, thumbnail: "https://m.media-amazon.com/images/M/MV5BYjZlNTgxMzYtZjc1ZS00OTQzLThiYWYtMTEzYjNmNDM1NmFkXkEyXkFqcGdeQXVyMzU0NzkwMDg@._V1_UX182_CR0,0,182,268_AL_.jpg")
jerry_seinfeld.specials.create(name: "I'm Telling You for the Last Time", run_time: 75, thumbnail: "https://m.media-amazon.com/images/M/MV5BNDM4OTY0NTAyMF5BMl5BanBnXkFtZTcwNTcxMDQyMQ@@._V1_UY268_CR0,0,182,268_AL_.jpg")
jerry_seinfeld.specials.create(name: "Jerry Before Seinfeld", run_time: 62, thumbnail: "https://m.media-amazon.com/images/M/MV5BOTc2N2I0Y2UtOTgyYy00MTU3LTk1YzItZGIwMDcxY2JkMGQzXkEyXkFqcGdeQXVyMjQzNzk2ODk@._V1_UY268_CR1,0,182,268_AL_.jpg")

dave_chapelle.specials.create(name: "Equanimity", run_time: 60, thumbnail: "https://m.media-amazon.com/images/M/MV5BODJkMTAxNmYtZDg4OS00NzA2LTlmZTUtMDc2MjIwMzE4ZDMxXkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_UY268_CR4,0,182,268_AL_.jpg")
dave_chapelle.specials.create(name: "For What It's Worth", run_time: 60, thumbnail: "https://m.media-amazon.com/images/M/MV5BZGQ2MjBjNDEtYWVlNi00Nzc3LTg2NjUtYWY3ZTkwNTAwNDQyXkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_UY268_CR4,0,182,268_AL_.jpg")
dave_chapelle.specials.create(name: "Killin' Them Softly", run_time: 57, thumbnail: "https://m.media-amazon.com/images/M/MV5BMTcyOGMxN2MtYzUwYy00YzQxLTgwZTItZjAxZTIzYWM1YzEyXkEyXkFqcGdeQXVyNjExODE1MDc@._V1_UX182_CR0,0,182,268_AL_.jpg")

sarah_silverman.specials.create(name: "A Speck of Dust", run_time: 71, thumbnail: "https://m.media-amazon.com/images/M/MV5BMjYwYjhjM2EtYjgwYS00YjkyLTllMjQtZGM1ZmFkMTQ1YmFmXkEyXkFqcGdeQXVyMzUwMjc0NTU@._V1_UY268_CR4,0,182,268_AL_.jpg")
sarah_silverman.specials.create(name: "We Are Miracles", run_time: 53, thumbnail: "https://m.media-amazon.com/images/M/MV5BODU5MWI2YWEtNTQ3Ny00OWQ3LThkNTUtYzdiNDVjNDczM2NiXkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_UX182_CR0,0,182,268_AL_.jpg")

michelle_wolf.specials.create(name: "Nice Lady", run_time: 58, thumbnail: "https://m.media-amazon.com/images/M/MV5BZjgxMDY5YzctODA2NC00MzY2LTgxYzAtMDc4NmY3YTA0M2QyXkEyXkFqcGdeQXVyNTM3MDMyMDQ@._V1_UY268_CR9,0,182,268_AL_.jpg")
