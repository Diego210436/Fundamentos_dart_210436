void main() async {
  // Mensaje de inicio del programa
  print('-----------------------------------------PRACTICA 16 ----------------------------');
  print('Inicio del programa');
  
  // try-catch se usa para manejar errores de forma segura
  try {
    // La palabra clave `await` indica que el programa esperará a que se complete
    // la operación asíncrona de `httpGet` antes de continuar.
    // Si la operación tiene éxito, el resultado se almacena en `value`.
    final value = await httpGet('https://fernando-herrera.com/cursos');
    print(value); // Imprime el resultado de la solicitud si es exitosa
    
  } catch (err) {
    // Si ocurre un error durante la ejecución de `httpGet`, se captura aquí
    // y se imprime el mensaje de error
    print('Tenemos un error: $err');
  }
  
  // Este mensaje se imprimirá después de que se complete la operación asíncrona,
  // ya sea con éxito o con error, gracias al uso de `await` que hace que el programa espere
  print('Fin del programa');
}

// Esta función simula una solicitud HTTP y es asíncrona gracias a `async`
// Devuelve un `Future` que se completará después de 1 segundo
Future<String> httpGet(String url) async {
  // Simula un retraso de 1 segundo para la operación
  await Future.delayed(const Duration(seconds: 1));
  
  // Se lanza una excepción para simular un error en la solicitud HTTP
  throw 'Error en la petición';
  
  // Si se descomenta la siguiente línea y se comenta la excepción, se simulará
  // una respuesta exitosa en lugar de un error
  // return 'Tenemos un valor de la petición';
}
