
void main() {
  
    // dynamic == null
  dynamic errorMessage;
  
  print("""
  El valor inicial de errorMessage es $errorMessage
  Que por defecto permite establecer valores nulos
  """);
  
  errorMessage = "El usuario y la contra no coinciden" ;
  
  print("""
  El nuevo valor de errorMessage es $errorMessage
  En este caso le fue asignado un String
  """); 
  
  errorMessage= 404;
  
  print("""
  El nuevo valor de errorMessage es $errorMessage
  En algunos sistemas los errores son controlados por codigo numerico
  """); 
  
  errorMessage = false;
  
  print("""
  El nuevo valor de errorMessage es $errorMessage
  Cuando el sistema funciona correctamente el mensaje de error puede ser falso
  """); 
  
  errorMessage = [800,040,500,502,505];

  print("""
  El nuevo valor de errorMessage es $errorMessage
  En caso de que el sistema detecte varios errores podria agregarlos en una Lista
  """); 
  
  errorMessage = {125, 'Usuario no Encontrado', true,-1025.16,'A'};
  
  print("""
  El nuevo valor de errorMessage es $errorMessage
  o incluso como un conjunto (SET) de datos """);
  
  errorMessage = ()=>true;
  
  print("""
  El nuevo valor de errorMessage es $errorMessage
  Que en este caso el resultado es una funcion
  """); 

}
