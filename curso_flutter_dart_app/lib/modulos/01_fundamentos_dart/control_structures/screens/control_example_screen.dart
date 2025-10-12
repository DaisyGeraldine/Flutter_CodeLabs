import 'package:flutter/material.dart';
import '../concepts/dart_control_structures.dart';

class ControlExampleScreen extends StatefulWidget {
  final String titulo;
  final int conceptoIndex;

  const ControlExampleScreen({
    super.key,
    required this.titulo,
    required this.conceptoIndex,
  });

  @override
  State<ControlExampleScreen> createState() => _ControlExampleScreenState();
}

class _ControlExampleScreenState extends State<ControlExampleScreen> {
  int _ejemploActual = 0;
  List<Map<String, dynamic>> _ejemplos = [];
  String _outputActual = '';

  @override
  void initState() {
    super.initState();
    _cargarEjemplos();
    _ejecutarEjemploActual();
  }

  void _cargarEjemplos() {
    switch (widget.conceptoIndex) {
      case 0: // Condicionales If/Else
        _ejemplos = [
          {
            'titulo': 'If Básico',
            'funcion': ControlStructuresConcepts.demostrarIfBasico,
            'descripcion': 'Estructura condicional simple con if',
          },
          {
            'titulo': 'If-Else',
            'funcion': ControlStructuresConcepts.demostrarIfElse,
            'descripcion': 'Condición con alternativa usando else',
          },
          {
            'titulo': 'If-Else If múltiple',
            'funcion': ControlStructuresConcepts.demostrarIfElseIfMultiple,
            'descripcion': 'Múltiples condiciones encadenadas',
          },
          {
            'titulo': 'Condicionales Anidadas',
            'funcion': ControlStructuresConcepts.demostrarCondicionalesAnidadas,
            'descripcion': 'Condiciones dentro de otras condiciones',
          },
        ];
        break;

      case 1: // Switch y Pattern Matching
        _ejemplos = [
          {
            'titulo': 'Switch Básico',
            'funcion': ControlStructuresConcepts.demostrarSwitchBasico,
            'descripcion': 'Switch tradicional con números',
          },
          {
            'titulo': 'Switch con Strings',
            'funcion': ControlStructuresConcepts.demostrarSwitchConStrings,
            'descripcion': 'Switch usando cadenas de texto',
          },
          {
            'titulo': 'Switch Expression',
            'funcion': ControlStructuresConcepts.demostrarSwitchExpression,
            'descripcion': 'Switch moderno con expresiones',
          },
        ];
        break;

      case 2: // Bucles For y While
        _ejemplos = [
          {
            'titulo': 'For Tradicional',
            'funcion': ControlStructuresConcepts.demostrarBucleForTradicional,
            'descripcion': 'Bucle for con contador',
          },
          {
            'titulo': 'For-In',
            'funcion': ControlStructuresConcepts.demostrarBucleForIn,
            'descripcion': 'Iteración sobre colecciones',
          },
          {
            'titulo': 'While',
            'funcion': ControlStructuresConcepts.demostrarBucleWhile,
            'descripcion': 'Bucle con condición previa',
          },
          {
            'titulo': 'Do-While',
            'funcion': ControlStructuresConcepts.demostrarBucleDoWhile,
            'descripcion': 'Bucle con condición posterior',
          },
        ];
        break;

      case 3: // Control de Flujo Avanzado
        _ejemplos = [
          {
            'titulo': 'Break y Continue',
            'funcion': ControlStructuresConcepts.demostrarBreakyContinue,
            'descripcion': 'Control del flujo de bucles',
          },
          {
            'titulo': 'Labels',
            'funcion': ControlStructuresConcepts.demostrarLabels,
            'descripcion': 'Etiquetas para bucles anidados',
          },
          {
            'titulo': 'Return',
            'funcion': ControlStructuresConcepts.demostrarReturn,
            'descripcion': 'Salida temprana de funciones',
          },
        ];
        break;

      case 4: // Manejo de Excepciones
        _ejemplos = [
          {
            'titulo': 'Try-Catch básico',
            'funcion': ControlStructuresConcepts.demostrarTryCatchBasico,
            'descripcion': 'Captura básica de errores',
          },
          {
            'titulo': 'Catch específico',
            'funcion': ControlStructuresConcepts.demostrarTryCatchEspecifico,
            'descripcion': 'Captura de tipos específicos de errores',
          },
          {
            'titulo': 'Try-Catch-Finally',
            'funcion': ControlStructuresConcepts.demostrarTryCatchFinally,
            'descripcion': 'Bloque finally siempre ejecutado',
          },
          {
            'titulo': 'Throw personalizado',
            'funcion': ControlStructuresConcepts.demostrarThrowPersonalizado,
            'descripcion': 'Lanzamiento de excepciones personalizadas',
          },
        ];
        break;
    }
  }

  void _ejecutarEjemploActual() {
    if (_ejemplos.isNotEmpty) {
      setState(() {
        _outputActual = _ejemplos[_ejemploActual]['funcion']();
      });
    }
  }

  void _cambiarEjemplo(int nuevoIndice) {
    setState(() {
      _ejemploActual = nuevoIndice;
    });
    _ejecutarEjemploActual();
  }

  @override
  Widget build(BuildContext context) {
    if (_ejemplos.isEmpty) {
      return Scaffold(
        appBar: AppBar(title: Text(widget.titulo)),
        body: const Center(
          child: Text('No hay ejemplos disponibles para este concepto'),
        ),
      );
    }

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.indigo.shade800,
              Colors.purple.shade600,
              Colors.deepPurple.shade700,
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              // Header
              Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () => Navigator.pop(context),
                          icon: const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            widget.titulo,
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(width: 48),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Text(
                      _ejemplos[_ejemploActual]['descripcion'],
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white70,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),

              // Selector de ejemplos
              Container(
                height: 60,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _ejemplos.length,
                  itemBuilder: (context, index) {
                    final isSelected = index == _ejemploActual;
                    return Container(
                      margin: const EdgeInsets.only(right: 12),
                      child: GestureDetector(
                        onTap: () => _cambiarEjemplo(index),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 12,
                          ),
                          decoration: BoxDecoration(
                            color:
                                isSelected
                                    ? Colors.white
                                    : Colors.white.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color:
                                  isSelected
                                      ? Colors.transparent
                                      : Colors.white.withOpacity(0.3),
                              width: 1,
                            ),
                          ),
                          child: Text(
                            _ejemplos[index]['titulo'],
                            style: TextStyle(
                              color:
                                  isSelected
                                      ? Colors.indigo.shade700
                                      : Colors.white,
                              fontWeight:
                                  isSelected
                                      ? FontWeight.bold
                                      : FontWeight.normal,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),

              const SizedBox(height: 20),

              // Área de output
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.black87,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Header del output
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: const BoxDecoration(
                          color: Color(0xFF2D2D2D),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12),
                          ),
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 12,
                              height: 12,
                              decoration: const BoxDecoration(
                                color: Colors.red,
                                shape: BoxShape.circle,
                              ),
                            ),
                            const SizedBox(width: 8),
                            Container(
                              width: 12,
                              height: 12,
                              decoration: const BoxDecoration(
                                color: Colors.yellow,
                                shape: BoxShape.circle,
                              ),
                            ),
                            const SizedBox(width: 8),
                            Container(
                              width: 12,
                              height: 12,
                              decoration: const BoxDecoration(
                                color: Colors.green,
                                shape: BoxShape.circle,
                              ),
                            ),
                            const SizedBox(width: 16),
                            Text(
                              'Resultado de ${_ejemplos[_ejemploActual]['titulo']}',
                              style: const TextStyle(
                                color: Colors.white70,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),

                      // Contenido del output
                      Expanded(
                        child: SingleChildScrollView(
                          padding: const EdgeInsets.all(20),
                          child: SelectableText(
                            _outputActual,
                            style: const TextStyle(
                              color: Colors.green,
                              fontFamily: 'Courier',
                              fontSize: 14,
                              height: 1.5,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Botón de ejecutar nuevamente
              Container(
                padding: const EdgeInsets.all(20),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    onPressed: _ejecutarEjemploActual,
                    icon: const Icon(Icons.play_arrow),
                    label: Text(
                      'Ejecutar ${_ejemplos[_ejemploActual]['titulo']} nuevamente',
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.indigo.shade700,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
