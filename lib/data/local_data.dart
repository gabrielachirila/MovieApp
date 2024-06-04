import '../models/movie.dart';
import '../models/actor.dart';
import '../models/producer.dart';

final List<Movie> localMovies = [
  Movie(
    id: 1,
    title: 'Inception',
    overview:
        'A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O., but his tragic past may doom the project and his team to disaster.',
    genres: ['Action', 'Sci-Fi'],
    imageUrl: 'assets/images/Inception.jpg',
    year: 2010,
    actorIds: [1, 2],
    producerIds: [1],
  ),
  Movie(
    id: 2,
    title: 'The Dark Knight',
    overview:
        'When the menace known as the Joker emerges from his mysterious past, he wreaks havoc and chaos on the people of Gotham. The Dark Knight must accept one of the greatest psychological and physical tests of his ability to fight injustice.',
    genres: ['Action', 'Crime'],
    imageUrl: 'assets/images/TheDarkKnight.jpg',
    year: 2008,
    actorIds: [3, 4],
    producerIds: [2],
  ),
  Movie(
    id: 3,
    title: 'Interstellar',
    overview:
        'A team of explorers travel through a wormhole in space in an attempt to ensure humanity\'s survival. As Earth faces its twilight, the astronauts must make decisions that will determine the fate of everyone on the planet.',
    genres: ['Adventure', 'Drama', 'Sci-Fi'],
    imageUrl: 'assets/images/Interstellar.jpg',
    year: 2014,
    actorIds: [5, 6],
    producerIds: [3],
  ),
  Movie(
    id: 4,
    title: 'The Matrix',
    overview:
        'A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers. The journey awakens his dormant capabilities and propels him into a battle to free mankind.',
    genres: ['Action', 'Sci-Fi'],
    imageUrl: 'assets/images/TheMatrix.jpg',
    year: 1999,
    actorIds: [7, 8],
    producerIds: [4],
  ),
  Movie(
    id: 5,
    title: 'The Shawshank Redemption',
    overview:
        'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency. The movie chronicles their struggle for hope and survival within the confines of a ruthless prison.',
    genres: ['Drama'],
    imageUrl: 'assets/images/TheShawshankRedemption.jpg',
    year: 1994,
    actorIds: [9, 10],
    producerIds: [5],
  ),
  Movie(
    id: 6,
    title: 'Fight Club',
    overview:
        'An insomniac office worker and a devil-may-care soap maker form an underground fight club that evolves into something much, much more. As their relationship grows, it leads to unexpected revelations and transformations.',
    genres: ['Drama'],
    imageUrl: 'assets/images/FightClub.jpg',
    year: 1999,
    actorIds: [11, 12],
    producerIds: [6],
  ),
];

final List<Actor> localActors = [
  Actor(
    id: 1,
    name: 'Leonardo DiCaprio',
    imageUrl: 'assets/images/LeonardoDiCaprio.jpeg',
    bio:
        'Leonardo Wilhelm DiCaprio is an American actor, producer, and environmentalist. Known for his intense performances and versatility, he has played diverse roles in films such as Titanic, The Revenant, and Once Upon a Time in Hollywood. DiCaprio has received numerous awards, including an Academy Award and a Golden Globe.',
    movieIds: [1],
  ),
  Actor(
    id: 2,
    name: 'Joseph Gordon-Levitt',
    imageUrl: 'assets/images/Joseph_Gordon-Levitt.jpeg',
    bio:
        'Joseph Leonard Gordon-Levitt is an American actor, filmmaker, singer, and entrepreneur. He began his acting career as a child and gained fame for his roles in 3rd Rock from the Sun, (500) Days of Summer, and Looper. He is also the founder of the online production company hitRECord.',
    movieIds: [1],
  ),
  Actor(
    id: 3,
    name: 'Christian Bale',
    imageUrl: 'assets/images/ChristianBale.jpg',
    bio:
        'Christian Charles Philip Bale is an English actor and producer. Known for his ability to transform his physical appearance, Bale has starred in films such as American Psycho, The Dark Knight Trilogy, and Vice. He has received several awards, including an Academy Award and two Golden Globes.',
    movieIds: [2],
  ),
  Actor(
    id: 4,
    name: 'Heath Ledger',
    imageUrl: 'assets/images/HeathLedger.jpg',
    bio:
        'Heath Andrew Ledger was an Australian actor and music video director. He achieved critical acclaim for his roles in Brokeback Mountain and The Dark Knight, for which he posthumously won an Academy Award for his portrayal of the Joker.',
    movieIds: [2],
  ),
  Actor(
    id: 5,
    name: 'Matthew McConaughey',
    imageUrl: 'assets/images/MatthewMcConaughey.jpg',
    bio:
        'Matthew David McConaughey is an American actor and producer. He gained fame for his roles in romantic comedies but later transitioned to dramatic roles in films such as Dallas Buyers Club, Interstellar, and True Detective. He won an Academy Award for his performance in Dallas Buyers Club.',
    movieIds: [3],
  ),
  Actor(
    id: 6,
    name: 'Anne Hathaway',
    imageUrl: 'assets/images/AnneHathaway.jpg',
    bio:
        'Anne Jacqueline Hathaway is an American actress and singer. Known for her versatility, she has appeared in films such as The Devil Wears Prada, Les Misérables, and Interstellar. Hathaway has received numerous accolades, including an Academy Award, a Golden Globe, and a Primetime Emmy.',
    movieIds: [3],
  ),
  Actor(
    id: 7,
    name: 'Keanu Reeves',
    imageUrl: 'assets/images/KeanuReeves.jpg',
    bio:
        'Keanu Charles Reeves is a Canadian actor, director, producer, and musician. He gained fame for his roles in The Matrix trilogy, John Wick series, and Speed. Reeves is known for his versatility and dedication to his craft.',
    movieIds: [4],
  ),
  Actor(
    id: 8,
    name: 'Laurence Fishburne',
    imageUrl: 'assets/images/LaurenceFishburne.webp',
    bio:
        'Laurence John Fishburne III is an American actor, playwright, producer, screenwriter, and film director. He is best known for his roles in The Matrix trilogy, Apocalypse Now, and Boyz n the Hood. Fishburne has received multiple awards, including a Tony Award and an Emmy Award.',
    movieIds: [4],
  ),
  Actor(
    id: 9,
    name: 'Tim Robbins',
    imageUrl: 'assets/images/TimRobbins.jpg',
    bio:
        'Timothy Francis Robbins is an American actor, screenwriter, director, producer, and musician. He is known for his roles in The Shawshank Redemption, Mystic River, and The Player. Robbins has won numerous awards, including an Academy Award and two Golden Globes.',
    movieIds: [5],
  ),
  Actor(
    id: 10,
    name: 'Morgan Freeman',
    imageUrl: 'assets/images/MorganFreeman.jpg',
    bio:
        'Morgan Freeman is an American actor, film director, and narrator. Renowned for his distinctive voice and versatile roles, Freeman has appeared in films such as The Shawshank Redemption, Million Dollar Baby, and Driving Miss Daisy. He has received an Academy Award, a Golden Globe, and a Screen Actors Guild Award.',
    movieIds: [5],
  ),
  Actor(
    id: 11,
    name: 'Brad Pitt',
    imageUrl: 'assets/images/BradPitt.jpg',
    bio:
        'William Bradley Pitt is an American actor and film producer. He has starred in numerous successful films, including Fight Club, Ocean\'s Eleven, and Once Upon a Time in Hollywood. Pitt has received multiple awards, including two Academy Awards and a Golden Globe.',
    movieIds: [6],
  ),
  Actor(
    id: 12,
    name: 'Edward Norton',
    imageUrl: 'assets/images/EdwardNorton.jpg',
    bio:
        'Edward Harrison Norton is an American actor and filmmaker. Known for his intense performances, Norton has starred in films such as Fight Club, American History X, and Birdman. He has received multiple awards, including a Golden Globe, and has been nominated for three Academy Awards.',
    movieIds: [6],
  ),
];

final List<Producer> localProducers = [
  Producer(
    id: 1,
    name: 'Emma Thomas',
    imageUrl: 'assets/images/EmmaThomas.jpg',
    bio:
        'Emma Thomas is a British film producer, known for co-producing films such as Inception, The Dark Knight trilogy, and Interstellar. She often collaborates with her husband, director Christopher Nolan, and has been instrumental in bringing many of his projects to life.',
    movieIds: [1],
  ),
  Producer(
    id: 2,
    name: 'Christopher Nolan',
    imageUrl: 'assets/images/ChristopherNolan.webp',
    bio:
        'Christopher Edward Nolan is a British-American film director, producer, and screenwriter. Renowned for his innovative storytelling and visual style, Nolan has directed and produced acclaimed films such as Inception, The Dark Knight trilogy, and Interstellar. He has received numerous awards and nominations throughout his career.',
    movieIds: [2, 3],
  ),
  Producer(
    id: 3,
    name: 'Lynda Obst',
    imageUrl: 'assets/images/LyndaObst.jpg',
    bio:
        'Lynda Rosen Obst is an American feature film producer and author. She is known for her work on films such as Interstellar, Sleepless in Seattle, and The Fisher King. Obst has been a prominent figure in Hollywood, known for her ability to bring compelling stories to the screen.',
    movieIds: [3],
  ),
  Producer(
    id: 4,
    name: 'Joel Silver',
    imageUrl: 'assets/images/JoelSilver.jpg',
    bio:
        'Joel Silver is an American film producer, known for producing the Lethal Weapon series, Die Hard, and The Matrix trilogy. Silver is a pioneer in the action film genre and has played a significant role in shaping modern Hollywood blockbusters.',
    movieIds: [4],
  ),
  Producer(
    id: 5,
    name: 'Niki Marvin',
    imageUrl: 'assets/images/NikiMarvin.jpg',
    bio:
        'Niki Marvin is a British film producer, best known for The Shawshank Redemption. Her work on the film has earned her critical acclaim and established her as a talented and influential producer in the industry.',
    movieIds: [5],
  ),
  Producer(
    id: 6,
    name: 'Art Linson',
    imageUrl: 'assets/images/ArtLinson.jpg',
    bio:
        'Art Linson is an American film producer, director, and screenwriter. He is known for producing films such as Fight Club, Heat, and Into the Wild. Linson\'s work has been recognized for its quality and impact on contemporary cinema.',
    movieIds: [6],
  ),
];

Actor getActorById(int id) {
  // Iterate through the list of local actors
  for (Actor actor in localActors) {
    // Check if the actor's ID matches the provided ID
    if (actor.id == id) {
      // Return the actor object if found
      return actor;
    }
  }
  // Return a default Actor object if no actor with the provided ID is found
  return Actor(
    id: -1, // Default ID
    name: 'Unknown Actor', // Default name
  );
}

Producer getProducerById(int id) {
  // Iterate through the list of local producers
  for (Producer producer in localProducers) {
    // Check if the producer's ID matches the provided ID
    if (producer.id == id) {
      // Return the producer object if found
      return producer;
    }
  }
  // Return a default Producer object if no producer with the provided ID is found
  return Producer(
    id: -1, // Default ID
    name: 'Unknown Producer', // Default name
  );
}

List<Movie> getMoviesByProducerId(int id) {
  List<Movie> movies = [];
  for (Movie movie in localMovies) {
    // Check if the movie's producer IDs list contains the provided ID
    if (movie.producerIds.contains(id)) {
      // Add the movie to the list if found
      movies.add(movie);
    }
  }
  // Return the list of movies produced by the producer
  return movies;
}

List<Movie> getMoviesByActorId(int id) {
  List<Movie> movies = [];
  for (Movie movie in localMovies) {
    // Check if the movie's actor IDs list contains the provided ID
    if (movie.actorIds.contains(id)) {
      // Add the movie to the list if found
      movies.add(movie);
    }
  }
  // Return the list of movies featuring the actor
  return movies;
}
