/// Conceptos fundamentales de sintaxis en Dart

class BasicSyntaxConcepts {
  // ========== MÉTODOS PARA OBTENER INFORMACIÓN DE LOS CONCEPTOS ==========

  /// Obtiene la lista de conceptos básicos de sintaxis disponibles
  static List<Map<String, dynamic>> obtenerConceptosSintaxis() {
    return [
      {
        'titulo': 'Variables y Tipos',
        'descripcion':
            'Declaración de variables, tipos de datos básicos y null safety',
        'icono': 'abc',
        'color': 0xFF4CAF50, // Verde
      },
      {
        'titulo': 'Operadores',
        'descripcion':
            'Operadores aritméticos, de comparación, lógicos y de asignación',
        'icono': 'calculate',
        'color': 0xFF2196F3, // Azul
      },
      {
        'titulo': 'Strings e Interpolación',
        'descripcion':
            'Manejo de cadenas de texto, interpolación y métodos útiles',
        'icono': 'text_fields',
        'color': 0xFF9C27B0, // Púrpura
      },
      {
        'titulo': 'Colecciones Básicas',
        'descripcion': 'Listas, mapas, sets y operaciones fundamentales',
        'icono': 'storage',
        'color': 0xFFFF9800, // Naranja
      },
      {
        'titulo': 'Control de Flujo Básico',
        'descripcion': 'if/else, switch, operadores ternarios y null-aware',
        'icono': 'alt_route',
        'color': 0xFF795548, // Marrón
      },
    ];
  }

  // ========== 1. VARIABLES Y TIPOS ==========

  /// Declaración básica de variables con tipos explícitos
  static String declararVariablesExplicitas() {
    String nombre = 'Ana García';
    int edad = 25;
    double altura = 1.68;
    bool esEstudiante = true;

    return '''Variables con tipos explícitos:
• String nombre = '$nombre'
• int edad = $edad
• double altura = $altura
• bool esEstudiante = $esEstudiante''';
  }

  /// Inferencia de tipos con var, final y const
  static String demostrarInferenciaTipos() {
    var ciudad = 'Madrid'; // String inferido
    var poblacion = 3200000; // int inferido
    final fechaCreacion = DateTime.now(); // final - runtime
    const version = '1.0.0'; // const - compile time

    return '''Inferencia de tipos:
• var ciudad = '$ciudad' (String)
• var poblacion = $poblacion (int)
• final fechaCreacion = $fechaCreacion
• const version = '$version' ''';
  }

  /// Null Safety - variables que pueden ser null
  static String demostrarNullSafety() {
    String nombre = 'Carlos'; // No puede ser null
    String? apellido; // Puede ser null (inicialmente null)
    String? telefono = '123-456-789'; // Nullable con valor

    return '''Null Safety:
• String nombre = '$nombre' (no nullable)
• String? apellido (nullable): ${apellido ?? "null"}
• String? telefono = '$telefono' (nullable con valor)
• null-aware operator: apellido?.length = null (apellido es null)''';
  }

  // ========== 2. OPERADORES ==========

  /// Operadores aritméticos básicos
  static String demostrarOperadoresAritmeticos() {
    int a = 15;
    int b = 4;

    return '''Operadores aritméticos (a=$a, b=$b):
• Suma: $a + $b = ${a + b}
• Resta: $a - $b = ${a - b}
• Multiplicación: $a * $b = ${a * b}
• División: $a / $b = ${a / b}
• División entera: $a ~/ $b = ${a ~/ b}
• Módulo: $a % $b = ${a % b}''';
  }

  /// Operadores de comparación
  static String demostrarOperadoresComparacion() {
    int x = 10;
    int y = 20;

    return '''Operadores de comparación (x=$x, y=$y):
• x == y: ${x == y}
• x != y: ${x != y}
• x < y: ${x < y}
• x > y: ${x > y}
• x <= y: ${x <= y}
• x >= y: ${x >= y}''';
  }

  /// Operadores lógicos
  static String demostrarOperadoresLogicos() {
    return '''Operadores lógicos:
• AND (&&): true && false = false
• AND (&&): true && true = true
• OR (||): false || false = false
• OR (||): false || true = true
• NOT (!): !true = false, !false = true''';
  }

  /// Operadores de asignación
  static String demostrarOperadoresAsignacion() {
    int numero = 10;
    numero += 5; // numero = numero + 5
    int copia = numero;
    copia *= 2; // copia = copia * 2

    return '''Operadores de asignación:
• int numero = 10
• numero += 5 → $numero
• int copia = numero
• copia *= 2 → $copia
• También: -=, /=, ~/=, %=''';
  }

  // ========== 3. STRINGS E INTERPOLACIÓN ==========

  /// Interpolación básica de strings
  static String demostrarInterpolacionBasica() {
    String nombre = 'María';
    int edad = 28;
    double salario = 2500.75;

    return '''Interpolación de strings:
• Simple: "Hola, soy $nombre"
• Con expresión: "Tendré \${edad + 1} años"
• Con método: "NOMBRE: \${nombre.toUpperCase()}"
• Con formato: "Salario: €\${salario.toStringAsFixed(2)}"

Resultado:
"Hola, soy $nombre"
"Tendré ${edad + 1} años"
"NOMBRE: ${nombre.toUpperCase()}"
"Salario: €${salario.toStringAsFixed(2)}"''';
  }

  /// Strings multilinea y caracteres especiales
  static String demostrarStringsAvanzados() {
    String textoMultilinea = '''
Esta es una cadena
de múltiples líneas
que preserva el formato
    ''';

    String conEscapes = 'Línea 1\\nLínea 2\\tTabulado';
    String sinEscapes = r'Texto crudo: \n \t no se interpretan';

    return '''Strings avanzados:
• Multilinea con triple comillas:$textoMultilinea
• Con escapes: "$conEscapes"
• Raw string: "$sinEscapes"''';
  }

  // ========== 4. COLECCIONES BÁSICAS ==========

  /// Listas básicas
  static String demostrarListasBasicas() {
    List<String> frutas = ['manzana', 'banana', 'naranja'];
    var numeros = [1, 2, 3, 4, 5];

    frutas.add('kiwi');
    numeros.removeAt(0);

    return '''Listas básicas:
• List<String> frutas = ['manzana', 'banana', 'naranja']
• var numeros = [1, 2, 3, 4, 5] (tipo inferido)
• frutas.add('kiwi') → $frutas
• numeros.removeAt(0) → $numeros
• Acceso: frutas[0] = '${frutas[0]}'
• Longitud: frutas.length = ${frutas.length}''';
  }

  /// Mapas básicos
  static String demostrarMapasBasicos() {
    Map<String, int> edades = {'Ana': 25, 'Carlos': 30, 'María': 28};

    edades['Pedro'] = 35;
    var edad = edades['Ana'];

    return '''Mapas básicos:
• Map<String, int> edades = {'Ana': 25, 'Carlos': 30}
• edades['Pedro'] = 35 → $edades
• var edad = edades['Ana'] → $edad
• Claves: ${edades.keys.toList()}
• Valores: ${edades.values.toList()}''';
  }

  /// Sets básicos
  static String demostrarSetsBasicos() {
    Set<String> colores = {'rojo', 'verde', 'azul'};
    // Crear set con duplicados desde lista
    List<int> listaConDuplicados = [1, 2, 3, 2, 1];
    var numeros = listaConDuplicados.toSet(); // Duplicados se eliminan

    colores.add('amarillo');
    bool contieneRojo = colores.contains('rojo');

    return '''Sets básicos (elementos únicos):
• Set<String> colores = {'rojo', 'verde', 'azul'}
• [1, 2, 3, 2, 1].toSet() → $numeros (sin duplicados)
• colores.add('amarillo') → $colores  
• colores.contains('rojo') → $contieneRojo
• Longitud: ${colores.length}''';
  }

  // ========== 5. CONTROL DE FLUJO BÁSICO ==========

  /// Estructuras if/else básicas
  static String demostrarIfElse() {
    int edad = 20;
    String categoria;

    if (edad >= 18) {
      categoria = 'Adulto';
    } else if (edad >= 13) {
      categoria = 'Adolescente';
    } else {
      categoria = 'Niño';
    }

    return '''If/Else (edad = $edad):
if (edad >= 18) {
  categoria = 'Adulto';
} else if (edad >= 13) {
  categoria = 'Adolescente'; 
} else {
  categoria = 'Niño';
}

Resultado: categoria = '$categoria' ''';
  }

  /// Operador ternario
  static String demostrarOperadorTernario() {
    int puntuacion = 85;
    String resultado = puntuacion >= 60 ? 'Aprobado' : 'Reprobado';

    // Ternario anidado
    String calificacion =
        puntuacion >= 90
            ? 'A'
            : puntuacion >= 80
            ? 'B'
            : puntuacion >= 70
            ? 'C'
            : 'D';

    return '''Operador ternario (puntuación = $puntuacion):
• Simple: puntuacion >= 60 ? 'Aprobado' : 'Reprobado'
  Resultado: '$resultado'
  
• Anidado: 
  puntuacion >= 90 ? 'A' : 
  puntuacion >= 80 ? 'B' : 
  puntuacion >= 70 ? 'C' : 'D'
  Resultado: '$calificacion' ''';
  }

  /// Operadores null-aware
  static String demostrarOperadoresNullAware() {
    String? nombre;

    // ?? (null coalescing)
    String nombreCompleto = nombre ?? 'Sin nombre';

    // ??= (null-aware assignment)
    nombre ??= 'Juan';

    // ?. (null-aware access) - resetear para demostrar
    nombre = null;
    int? longitud = nombre?.length;

    return '''Operadores null-aware:
• String? nombre; (null inicialmente)

• ?? (null coalescing):
  nombre ?? 'Sin nombre' → '$nombreCompleto'
  
• ??= (null-aware assignment):
  nombre ??= 'Juan' → asigna si es null
  
• ?. (null-aware access):
  nombre?.length → $longitud (null si nombre es null)''';
  }

  /// Switch básico
  static String demostrarSwitch() {
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
      default:
        nombreDia = 'Otro día';
    }

    return '''Switch (dia = $dia):
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
  default:
    nombreDia = 'Otro día';
}

Resultado: nombreDia = '$nombreDia' ''';
  }
}
