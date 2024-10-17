void main() {

  final pokemon = {
    'Name':'Geodude',
    'HP':100,
    'isAlive':true,
    'abilities':['Impact trueno','Cola de hierro','Rapido'],
    'sprites':
    {
      1:"pikachu/font.png",
      2:"pikachu/back.png"
    }
  };
  
  final Map <String, dynamic > trainer = {
    'Name':'Ash Ketchup',
    'Gender':'Male',
    'Age':12,
    'isGymnasiumLeader':false
  };

 final pokemons={
   1:"Pikachu",
   2:"Charmander",
   3:"Squirtle",
   4:"Piggeot"
 };
//Implementar los datos de un mapa
  print("""
  Los datos actuales del mapa son:
  Pokemon=$pokemon
  Trainer=$trainer
  Pokemons=$pokemons
  """);
  print("*********************************************");
  print ("""
  Accediendo a las propiedades del pokemon usando los braquets/corchetes []:
  -------------------------------------------------
  Nombre =${pokemon['Name']}
  HP = ${pokemon['HP']}
  Vivo = ${pokemon['isAlive']}
  Sprites = ${pokemon['sprites']}
  ------------------------------------------------
 """);
  
  //Reto 01: Obtener el valor independiente de las imagenes de font y back del Pokemon
  
  //Front : ${(pokemon['sprites'])[1]}
  //Back : ${pokemon['sprites'][2]}
  
  //dado que la solucion ya esta obsoleta lo que queda es crear una nueva variable con el sujeto y destructurar las imagenes para acceder a ellas
  
  final tmp_sprites =pokemon['sprites'] as Map<int,String>;
  
  print("""
  Accediendo a las propiedades del pokemon usando los brackets/corchetes []
  :
  -------------------------------------------------------------------------
  Nombre = ${pokemon['Name']}
  HP=${pokemon['HP']}
  Vivo=${pokemon['isAlive']}
  Sprites=${pokemon['sprites']}
  -------------------------------------------------------------------------
  Back:${tmp_sprites[2]}
  Front:${tmp_sprites[1]}
  """);
}