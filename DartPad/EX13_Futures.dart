void main() {
    print("-------------------------------------- Practica 15 ---------------------------------");
  // Mensaje de inicio del programa
  print('Inicio del programa');
  
  // Se realiza una solicitud HTTP simulada
  // La función `httpGet` devuelve un `Future`, que representa una operación asíncrona
  // El método `then` se utiliza para manejar la respuesta exitosa de la operación
  httpGet('https://fernando-herrera.com/cursos')
    .then((value) {
      // Esta función se ejecutará si la operación es exitosa
      // Se imprime el valor de la respuesta
      print(value);
    })
    .catchError((err) {
      // Esta función se ejecutará si ocurre un error en la operación
      // Se imprime el mensaje de error
      print('Error: $err');
    });
  
  // Mensaje que indica el fin del programa
  // Se imprime inmediatamente después de configurar el manejo del `Future`
  print('Fin del programa');
}

// Función que simula una solicitud HTTP
// Devuelve un `Future` que se completará después de 1 segundo
Future<String> httpGet(String url) {
  // `Future.delayed` crea un `Future` que se completará tras un retraso de 1 segundo
  return Future.delayed(const Duration(seconds: 1), () {
    // Se lanza una excepción para simular un error en la solicitud HTTP
    throw 'Error en la petición http';
    
    // Si se desea simular una respuesta exitosa en lugar del error,
    // se puede comentar la línea anterior y descomentar la siguiente
    // return 'Respuesta de la petición http';
  });
}
