void main() {
    // Repaso de Clases en DART

    // Instanciamiento de Clase HEROE
    print("Heroe 1: -------------------------------");
    final wolverine = Hero("Logan","Regeneracion");

    print(wolverine);
    print(wolverine.name);
    print(wolverine.power);
    print("Heroe 2: -------------------------------");
    final gambito = Hero("carta pum","remy");
  

    print(gambito);
    print(gambito.name);
    print(gambito.power);

    final xmen = Team(type:"Heroes", name:"X-Men");
    print(xmen);
    print(xmen.name);
    print(xmen.type);
  
    print("-------------------------------");

    final justiceLeague = Team(name:"La liga de la Justicia");
    print(justiceLeague);
    print(justiceLeague.name);
    print(justiceLeague.type);
  
  print(justiceLeague.toString());

    // Intentamos instanciar la clase con solo el valor tipo, que no lo permite por que no lo permite por que la propiedad de nombre es requerido
    //final hydra = Team(type:"Villanos");
    
}

class Hero
{
    String name;
    String power;

    Hero(String pName, String pPower):
        name = pName,
        power = pPower;
    
}

class Team
{
    String name;
    String type;

    // El constructor de las clases siemore debe llevar el mismo nombre la misma
    Team({required this.name, this.type="No definido"});
  
  @override
String toString () {
  return 'Grupo: $name, Tipo: $type';
}
  
  
}