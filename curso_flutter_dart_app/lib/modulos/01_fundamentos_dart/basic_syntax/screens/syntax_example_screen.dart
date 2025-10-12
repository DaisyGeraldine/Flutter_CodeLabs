import 'package:flutter/material.dart';
import '../concepts/dart_basic_syntax.dart';

class SyntaxExampleScreen extends StatefulWidget {
  final String titulo;
  final int index;

  const SyntaxExampleScreen({
    super.key,
    required this.titulo,
    required this.index,
  });

  @override
  State<SyntaxExampleScreen> createState() => _SyntaxExampleScreenState();
}

class _SyntaxExampleScreenState extends State<SyntaxExampleScreen> {
  String resultado = "";
  bool isLoading = false;
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();

  @override
  void dispose() {
    _controller1.dispose();
    _controller2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.titulo),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.deepPurple.shade50, Colors.white],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _buildDescriptionCard(),
                const SizedBox(height: 20),
                _buildExampleCard(),
                const SizedBox(height: 20),
                _buildResultCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDescriptionCard() {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.info_outline, color: Colors.deepPurple, size: 24),
                const SizedBox(width: 8),
                Text(
                  'Descripción',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              _getDescription(),
              style: const TextStyle(fontSize: 14, height: 1.5),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildExampleCard() {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.play_circle, color: Colors.green, size: 24),
                const SizedBox(width: 8),
                const Text(
                  'Ejemplos Interactivos',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            _buildExampleButtons(),
          ],
        ),
      ),
    );
  }

  Widget _buildExampleButtons() {
    switch (widget.index) {
      case 0: // Variables y Tipos
        return Column(
          children: [
            _buildActionButton(
              'Declarar Variables Explícitas',
              () => _ejecutarEjemplo(
                () => BasicSyntaxConcepts.declararVariablesExplicitas(),
              ),
              Icons.abc,
              Colors.blue,
            ),
            const SizedBox(height: 8),
            _buildActionButton(
              'Inferencia de Tipos',
              () => _ejecutarEjemplo(
                () => BasicSyntaxConcepts.demostrarInferenciaTipos(),
              ),
              Icons.auto_fix_high,
              Colors.orange,
            ),
            const SizedBox(height: 8),
            _buildActionButton(
              'Null Safety',
              () => _ejecutarEjemplo(
                () => BasicSyntaxConcepts.demostrarNullSafety(),
              ),
              Icons.security,
              Colors.red,
            ),
          ],
        );
      case 1: // Operadores
        return Column(
          children: [
            _buildActionButton(
              'Operadores Aritméticos',
              () => _ejecutarEjemplo(
                () => BasicSyntaxConcepts.demostrarOperadoresAritmeticos(),
              ),
              Icons.calculate,
              Colors.blue,
            ),
            const SizedBox(height: 8),
            _buildActionButton(
              'Operadores de Comparación',
              () => _ejecutarEjemplo(
                () => BasicSyntaxConcepts.demostrarOperadoresComparacion(),
              ),
              Icons.compare_arrows,
              Colors.green,
            ),
            const SizedBox(height: 8),
            _buildActionButton(
              'Operadores Lógicos',
              () => _ejecutarEjemplo(
                () => BasicSyntaxConcepts.demostrarOperadoresLogicos(),
              ),
              Icons.psychology,
              Colors.purple,
            ),
            const SizedBox(height: 8),
            _buildActionButton(
              'Operadores de Asignación',
              () => _ejecutarEjemplo(
                () => BasicSyntaxConcepts.demostrarOperadoresAsignacion(),
              ),
              Icons.assignment,
              Colors.orange,
            ),
          ],
        );
      case 2: // Strings e Interpolación
        return Column(
          children: [
            _buildActionButton(
              'Interpolación Básica',
              () => _ejecutarEjemplo(
                () => BasicSyntaxConcepts.demostrarInterpolacionBasica(),
              ),
              Icons.text_fields,
              Colors.teal,
            ),
            const SizedBox(height: 8),
            _buildActionButton(
              'Strings Avanzados',
              () => _ejecutarEjemplo(
                () => BasicSyntaxConcepts.demostrarStringsAvanzados(),
              ),
              Icons.text_format,
              Colors.indigo,
            ),
          ],
        );
      case 3: // Colecciones Básicas
        return Column(
          children: [
            _buildActionButton(
              'Listas Básicas',
              () => _ejecutarEjemplo(
                () => BasicSyntaxConcepts.demostrarListasBasicas(),
              ),
              Icons.list,
              Colors.blue,
            ),
            const SizedBox(height: 8),
            _buildActionButton(
              'Mapas Básicos',
              () => _ejecutarEjemplo(
                () => BasicSyntaxConcepts.demostrarMapasBasicos(),
              ),
              Icons.map,
              Colors.green,
            ),
            const SizedBox(height: 8),
            _buildActionButton(
              'Sets Básicos',
              () => _ejecutarEjemplo(
                () => BasicSyntaxConcepts.demostrarSetsBasicos(),
              ),
              Icons.category,
              Colors.orange,
            ),
          ],
        );
      case 4: // Control de Flujo Básico
        return Column(
          children: [
            _buildActionButton(
              'If/Else',
              () =>
                  _ejecutarEjemplo(() => BasicSyntaxConcepts.demostrarIfElse()),
              Icons.alt_route,
              Colors.blue,
            ),
            const SizedBox(height: 8),
            _buildActionButton(
              'Operador Ternario',
              () => _ejecutarEjemplo(
                () => BasicSyntaxConcepts.demostrarOperadorTernario(),
              ),
              Icons.help_outline,
              Colors.green,
            ),
            const SizedBox(height: 8),
            _buildActionButton(
              'Operadores Null-Aware',
              () => _ejecutarEjemplo(
                () => BasicSyntaxConcepts.demostrarOperadoresNullAware(),
              ),
              Icons.safety_check,
              Colors.purple,
            ),
            const SizedBox(height: 8),
            _buildActionButton(
              'Switch',
              () =>
                  _ejecutarEjemplo(() => BasicSyntaxConcepts.demostrarSwitch()),
              Icons.switch_left,
              Colors.orange,
            ),
          ],
        );
      default:
        return const Text('Ejemplos no disponibles');
    }
  }

  Widget _buildActionButton(
    String texto,
    VoidCallback onPressed,
    IconData icono,
    Color color,
  ) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton.icon(
        onPressed: onPressed,
        icon: Icon(icono),
        label: Text(texto),
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
      ),
    );
  }

  Widget _buildResultCard() {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.terminal, color: Colors.green.shade700, size: 24),
                const SizedBox(width: 8),
                Text(
                  'Resultado',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.green.shade700,
                  ),
                ),
                const Spacer(),
                if (resultado.isNotEmpty)
                  IconButton(
                    onPressed: () => setState(() => resultado = ""),
                    icon: const Icon(Icons.clear),
                    tooltip: 'Limpiar resultado',
                  ),
              ],
            ),
            const SizedBox(height: 12),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey.shade900,
                borderRadius: BorderRadius.circular(8),
              ),
              child:
                  isLoading
                      ? const Center(
                        child: CircularProgressIndicator(color: Colors.white),
                      )
                      : SelectableText(
                        resultado.isEmpty
                            ? 'Presiona un botón para ver el resultado'
                            : resultado,
                        style: const TextStyle(
                          fontFamily: 'monospace',
                          color: Colors.white,
                          fontSize: 14,
                          height: 1.4,
                        ),
                      ),
            ),
          ],
        ),
      ),
    );
  }

  void _ejecutarEjemplo(String Function() ejemploFunction) {
    setState(() {
      isLoading = true;
    });

    // Simular un pequeño delay para mostrar el loading
    Future.delayed(const Duration(milliseconds: 300), () {
      setState(() {
        resultado = ejemploFunction();
        isLoading = false;
      });
    });
  }

  String _getDescription() {
    switch (widget.index) {
      case 0:
        return 'Las variables son contenedores para almacenar datos. Dart es un lenguaje tipado que soporta inferencia de tipos y null safety para prevenir errores comunes.';
      case 1:
        return 'Los operadores son símbolos que realizan operaciones sobre variables y valores. Incluyen operadores aritméticos, de comparación, lógicos y de asignación.';
      case 2:
        return 'Los strings (cadenas de texto) son secuencias de caracteres. Dart ofrece interpolación de strings y múltiples formas de crear y manipular texto.';
      case 3:
        return 'Las colecciones son estructuras de datos que almacenan múltiples elementos. Las más comunes son List (listas), Map (mapas) y Set (conjuntos).';
      case 4:
        return 'El control de flujo permite tomar decisiones en el código. Incluye if/else, operadores ternarios, switch y operadores null-aware.';
      default:
        return 'Concepto de sintaxis básica de Dart.';
    }
  }
}
