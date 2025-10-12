/// Conceptos de Estructuras de Control en Dart

class ControlStructuresConcepts {
  // ========== MÉTODOS PARA OBTENER INFORMACIÓN DE LOS CONCEPTOS ==========

  /// Obtiene la lista de conceptos de estructuras de control disponibles
  static List<Map<String, dynamic>> obtenerConceptosEstructurasControl() {
    return [
      {
        'titulo': 'Condicionales If/Else',
        'descripcion':
            'Estructuras condicionales básicas y anidadas con if, else if y else',
        'icono': 'alt_route',
        'color': 0xFF4CAF50, // Verde
      },
      {
        'titulo': 'Switch y Pattern Matching',
        'descripcion':
            'Declaraciones switch tradicionales y modernas con pattern matching',
        'icono': 'switch_left',
        'color': 0xFF2196F3, // Azul
      },
      {
        'titulo': 'Bucles For y While',
        'descripcion': 'Bucles for, for-in, while y do-while para iteración',
        'icono': 'loop',
        'color': 0xFF9C27B0, // Púrpura
      },
      {
        'titulo': 'Control de Flujo Avanzado',
        'descripcion': 'Break, continue, return y labels para control de flujo',
        'icono': 'control_camera',
        'color': 0xFFFF9800, // Naranja
      },
      {
        'titulo': 'Manejo de Excepciones',
        'descripcion':
            'Try-catch, throw, finally y manejo personalizado de errores',
        'icono': 'error_outline',
        'color': 0xFFF44336, // Rojo
      },
    ];
  }

  // ========== 1. CONDICIONALES IF/ELSE ==========

  /// Estructura if básica
  static String demostrarIfBasico() {
    int edad = 18;
    String resultado = '';

    if (edad >= 18) {
      resultado = 'Es mayor de edad';
    }

    return '''If básico (edad = $edad):
if (edad >= 18) {
  resultado = 'Es mayor de edad';
}

Resultado: "$resultado"''';
  }

  /// Estructura if-else
  static String demostrarIfElse() {
    int temperatura = 25;
    String estado;

    if (temperatura > 30) {
      estado = 'Hace calor';
    } else {
      estado = 'Temperatura agradable';
    }

    return '''If-Else (temperatura = $temperatura°C):
if (temperatura > 30) {
  estado = 'Hace calor';
} else {
  estado = 'Temperatura agradable';
}

Resultado: "$estado"''';
  }

  /// Estructura if-else if-else múltiple
  static String demostrarIfElseIfMultiple() {
    int puntuacion = 85;
    String calificacion;

    if (puntuacion >= 90) {
      calificacion = 'A - Excelente';
    } else if (puntuacion >= 80) {
      calificacion = 'B - Bueno';
    } else if (puntuacion >= 70) {
      calificacion = 'C - Regular';
    } else if (puntuacion >= 60) {
      calificacion = 'D - Aprobado';
    } else {
      calificacion = 'F - Reprobado';
    }

    return '''If-Else If múltiple (puntuación = $puntuacion):
if (puntuacion >= 90) {
  calificacion = 'A - Excelente';
} else if (puntuacion >= 80) {
  calificacion = 'B - Bueno';
} else if (puntuacion >= 70) {
  calificacion = 'C - Regular';
} else if (puntuacion >= 60) {
  calificacion = 'D - Aprobado';
} else {
  calificacion = 'F - Reprobado';
}

Resultado: "$calificacion"''';
  }

  /// Condicionales anidadas
  static String demostrarCondicionalesAnidadas() {
    // Usando DateTime para generar un ejemplo dinámico
    bool tieneLicencia = DateTime.now().millisecond % 2 == 0;
    int edad = 20;
    String mensaje;

    if (tieneLicencia) {
      if (edad >= 18) {
        mensaje = 'Puede conducir';
      } else {
        mensaje = 'Tiene licencia pero es menor de edad';
      }
    } else {
      if (edad >= 18) {
        mensaje = 'Mayor de edad pero sin licencia';
      } else {
        mensaje = 'Menor de edad y sin licencia';
      }
    }

    return '''Condicionales anidadas:
• tieneLicencia = $tieneLicencia
• edad = $edad

if (tieneLicencia) {
  if (edad >= 18) {
    mensaje = 'Puede conducir';
  } else {
    mensaje = 'Tiene licencia pero es menor de edad';
  }
} else {
  if (edad >= 18) {
    mensaje = 'Mayor de edad pero sin licencia';
  } else {
    mensaje = 'Menor de edad y sin licencia';
  }
}

Resultado: "$mensaje"''';
  }

  // ========== 2. SWITCH Y PATTERN MATCHING ==========

  /// Switch básico
  static String demostrarSwitchBasico() {
    int dia = 3;
    String nombreDia;

    switch (dia) {
      case 1:
        nombreDia = 'Lunes';
        break;
      case 2:
        nombreDia = 'Martes';
        break;
      case 3:
        nombreDia = 'Miércoles';
        break;
      case 4:
        nombreDia = 'Jueves';
        break;
      case 5:
        nombreDia = 'Viernes';
        break;
      case 6:
      case 7:
        nombreDia = 'Fin de semana';
        break;
      default:
        nombreDia = 'Día inválido';
    }

    return '''Switch básico (dia = $dia):
switch (dia) {
  case 1:
    nombreDia = 'Lunes';
    break;
  case 2:
    nombreDia = 'Martes';
    break;
  case 3:
    nombreDia = 'Miércoles';
    break;
  // ... más casos
  case 6:
  case 7:
    nombreDia = 'Fin de semana';
    break;
  default:
    nombreDia = 'Día inválido';
}

Resultado: "$nombreDia"''';
  }

  /// Switch con strings
  static String demostrarSwitchConStrings() {
    String fruta = 'manzana';
    String color;

    switch (fruta) {
      case 'manzana':
        color = 'roja o verde';
        break;
      case 'banana':
        color = 'amarilla';
        break;
      case 'naranja':
        color = 'naranja';
        break;
      case 'uva':
        color = 'morada o verde';
        break;
      default:
        color = 'color desconocido';
    }

    return '''Switch con Strings (fruta = "$fruta"):
switch (fruta) {
  case 'manzana':
    color = 'roja o verde';
    break;
  case 'banana':
    color = 'amarilla';
    break;
  case 'naranja':
    color = 'naranja';
    break;
  case 'uva':
    color = 'morada o verde';
    break;
  default:
    color = 'color desconocido';
}

Resultado: "La $fruta es de color $color"''';
  }

  /// Switch expression (moderno)
  static String demostrarSwitchExpression() {
    String tipoAnimal = 'perro';

    // Switch expression (Dart 3.0+)
    String sonido = switch (tipoAnimal) {
      'perro' => 'guau guau',
      'gato' => 'miau miau',
      'vaca' => 'muu muu',
      'pato' => 'cuac cuac',
      'león' => 'rugido',
      _ => 'sonido desconocido',
    };

    return '''Switch Expression moderno (tipoAnimal = "$tipoAnimal"):
String sonido = switch (tipoAnimal) {
  'perro' => 'guau guau',
  'gato' => 'miau miau',
  'vaca' => 'muu muu',
  'pato' => 'cuac cuac',
  'león' => 'rugido',
  _ => 'sonido desconocido'
};

Resultado: "El $tipoAnimal hace: $sonido"''';
  }

  // ========== 3. BUCLES FOR Y WHILE ==========

  /// Bucle for tradicional
  static String demostrarBucleForTradicional() {
    List<String> resultados = [];

    for (int i = 1; i <= 5; i++) {
      resultados.add('Iteración $i');
    }

    return '''Bucle For tradicional:
for (int i = 1; i <= 5; i++) {
  resultados.add('Iteración \$i');
}

Resultados:
${resultados.map((r) => '• $r').join('\\n')}''';
  }

  /// Bucle for-in
  static String demostrarBucleForIn() {
    List<String> frutas = ['manzana', 'banana', 'naranja', 'uva'];
    List<String> resultados = [];

    for (String fruta in frutas) {
      resultados.add('Me gusta la $fruta');
    }

    return '''Bucle For-In:
List<String> frutas = ['manzana', 'banana', 'naranja', 'uva'];

for (String fruta in frutas) {
  resultados.add('Me gusta la \$fruta');
}

Resultados:
${resultados.map((r) => '• $r').join('\\n')}''';
  }

  /// Bucle while
  static String demostrarBucleWhile() {
    List<int> numeros = [];
    int contador = 1;

    while (contador <= 5) {
      numeros.add(contador * contador);
      contador++;
    }

    return '''Bucle While:
int contador = 1;

while (contador <= 5) {
  numeros.add(contador * contador);
  contador++;
}

Cuadrados generados:
${numeros.map((n) => '• $n').join('\\n')}''';
  }

  /// Bucle do-while
  static String demostrarBucleDoWhile() {
    List<String> mensajes = [];
    int intentos = 0;

    do {
      intentos++;
      mensajes.add('Intento número $intentos');
    } while (intentos < 3);

    return '''Bucle Do-While:
int intentos = 0;

do {
  intentos++;
  mensajes.add('Intento número \$intentos');
} while (intentos < 3);

Mensajes generados:
${mensajes.map((m) => '• $m').join('\\n')}''';
  }

  // ========== 4. CONTROL DE FLUJO AVANZADO ==========

  /// Break y continue
  static String demostrarBreakyContinue() {
    List<String> procesados = [];
    List<int> omitidos = [];

    for (int i = 1; i <= 10; i++) {
      if (i % 2 == 0) {
        omitidos.add(i);
        continue; // Saltar números pares
      }

      if (i > 7) {
        break; // Parar cuando i > 7
      }

      procesados.add('Procesado: $i');
    }

    return '''Break y Continue:
for (int i = 1; i <= 10; i++) {
  if (i % 2 == 0) {
    omitidos.add(i);
    continue; // Saltar números pares
  }
  
  if (i > 7) {
    break; // Parar cuando i > 7
  }
  
  procesados.add('Procesado: \$i');
}

Números procesados:
${procesados.map((p) => '• $p').join('\\n')}

Números omitidos (pares): ${omitidos.join(', ')}''';
  }

  /// Labels con break y continue
  static String demostrarLabels() {
    List<String> resultados = [];

    exterior:
    for (int i = 1; i <= 3; i++) {
      for (int j = 1; j <= 3; j++) {
        if (i == 2 && j == 2) {
          resultados.add('¡Saltando bucle exterior desde ($i, $j)!');
          break exterior; // Sale de ambos bucles
        }
        resultados.add('i=$i, j=$j');
      }
    }

    return '''Labels con Break:
exterior: for (int i = 1; i <= 3; i++) {
  for (int j = 1; j <= 3; j++) {
    if (i == 2 && j == 2) {
      resultados.add('¡Saltando bucle exterior!');
      break exterior; // Sale de ambos bucles
    }
    resultados.add('i=\$i, j=\$j');
  }
}

Resultados:
${resultados.map((r) => '• $r').join('\\n')}''';
  }

  /// Return en funciones
  static String demostrarReturn() {
    String resultado = _funcionConReturn(15);

    return '''Return en funciones:
String _funcionConReturn(int numero) {
  if (numero < 0) {
    return 'Número negativo';
  }
  
  if (numero == 0) {
    return 'Cero';
  }
  
  if (numero % 2 == 0) {
    return 'Número par: \$numero';
  }
  
  return 'Número impar: \$numero';
}

_funcionConReturn(15) → "$resultado"''';
  }

  /// Función auxiliar para el ejemplo de return
  static String _funcionConReturn(int numero) {
    if (numero < 0) {
      return 'Número negativo';
    }

    if (numero == 0) {
      return 'Cero';
    }

    if (numero % 2 == 0) {
      return 'Número par: $numero';
    }

    return 'Número impar: $numero';
  }

  // ========== 5. MANEJO DE EXCEPCIONES ==========

  /// Try-catch básico
  static String demostrarTryCatchBasico() {
    List<String> logs = [];

    try {
      int resultado = 10 ~/ 0; // División por cero
      logs.add('Resultado: $resultado');
    } catch (e) {
      logs.add('Error capturado: $e');
    }

    logs.add('Programa continúa ejecutándose');

    return '''Try-Catch básico:
try {
  int resultado = 10 ~/ 0; // División por cero
  logs.add('Resultado: \$resultado');
} catch (e) {
  logs.add('Error capturado: \$e');
}

logs.add('Programa continúa ejecutándose');

Log de ejecución:
${logs.map((log) => '• $log').join('\\n')}''';
  }

  /// Try-catch con tipos específicos
  static String demostrarTryCatchEspecifico() {
    List<String> logs = [];

    try {
      List<int> lista = [1, 2, 3];
      int elemento = lista[10]; // Índice fuera de rango
      logs.add('Elemento: $elemento');
    } on RangeError catch (e) {
      logs.add('Error de rango: ${e.message}');
    } catch (e) {
      logs.add('Otro error: $e');
    }

    return '''Try-Catch específico:
try {
  List<int> lista = [1, 2, 3];
  int elemento = lista[10]; // Índice fuera de rango
  logs.add('Elemento: \$elemento');
} on RangeError catch (e) {
  logs.add('Error de rango: \${e.message}');
} catch (e) {
  logs.add('Otro error: \$e');
}

Log de ejecución:
${logs.map((log) => '• $log').join('\\n')}''';
  }

  /// Try-catch-finally
  static String demostrarTryCatchFinally() {
    List<String> logs = [];

    try {
      logs.add('Ejecutando código en try');
      throw Exception('Error simulado');
    } catch (e) {
      logs.add('Capturado en catch: $e');
    } finally {
      logs.add('Siempre se ejecuta finally');
    }

    logs.add('Código después del try-catch-finally');

    return '''Try-Catch-Finally:
try {
  logs.add('Ejecutando código en try');
  throw Exception('Error simulado');
} catch (e) {
  logs.add('Capturado en catch: \$e');
} finally {
  logs.add('Siempre se ejecuta finally');
}

logs.add('Código después del try-catch-finally');

Log de ejecución:
${logs.map((log) => '• $log').join('\\n')}''';
  }

  /// Throw personalizado
  static String demostrarThrowPersonalizado() {
    List<String> logs = [];

    try {
      _validarEdad(-5, logs);
    } catch (e) {
      logs.add('Excepción capturada: $e');
    }

    try {
      _validarEdad(25, logs);
    } catch (e) {
      logs.add('Excepción capturada: $e');
    }

    return '''Throw personalizado:
void _validarEdad(int edad, List<String> logs) {
  if (edad < 0) {
    throw ArgumentError('La edad no puede ser negativa');
  }
  
  if (edad > 120) {
    throw RangeError('Edad demasiado alta');
  }
  
  logs.add('Edad válida: \$edad');
}

Pruebas:
_validarEdad(-5, logs);  // Lanza excepción
_validarEdad(25, logs);  // Edad válida

Log de ejecución:
${logs.map((log) => '• $log').join('\\n')}''';
  }

  /// Función auxiliar para throw personalizado
  static void _validarEdad(int edad, List<String> logs) {
    if (edad < 0) {
      throw ArgumentError('La edad no puede ser negativa');
    }

    if (edad > 120) {
      throw RangeError('Edad demasiado alta');
    }

    logs.add('Edad válida: $edad');
  }
}
