import 'package:flutter/material.dart';
import '../concepts/dart_control_structures.dart';
import 'control_example_screen.dart';

class ControlStructuresMainScreen extends StatefulWidget {
  const ControlStructuresMainScreen({super.key});

  @override
  State<ControlStructuresMainScreen> createState() =>
      _ControlStructuresMainScreenState();
}

class _ControlStructuresMainScreenState
    extends State<ControlStructuresMainScreen> {
  @override
  Widget build(BuildContext context) {
    final conceptos =
        ControlStructuresConcepts.obtenerConceptosEstructurasControl();

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.deepPurple.shade800,
              Colors.purple.shade600,
              Colors.indigo.shade700,
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
                        const Expanded(
                          child: Text(
                            'Estructuras de Control',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(width: 48), // Balance del IconButton
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Aprende sobre condicionales, bucles, switch y manejo de excepciones',
                      style: TextStyle(fontSize: 16, color: Colors.white70),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),

              // Lista de conceptos
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  itemCount: conceptos.length,
                  itemBuilder: (context, index) {
                    final concepto = conceptos[index];
                    return _buildConceptCard(concepto, index);
                  },
                ),
              ),

              // Footer información
              Container(
                padding: const EdgeInsets.all(20),
                child: Card(
                  color: Colors.white.withOpacity(0.1),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      children: [
                        Icon(Icons.info_outline, color: Colors.white70),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Text(
                            'Cada concepto incluye ejemplos interactivos y código ejecutable',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
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

  Widget _buildConceptCard(Map<String, dynamic> concepto, int index) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      child: Card(
        elevation: 8,
        color: Colors.white.withOpacity(0.95),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder:
                    (context) => ControlExampleScreen(
                      titulo: concepto['titulo'],
                      conceptoIndex: index,
                    ),
              ),
            );
          },
          borderRadius: BorderRadius.circular(16),
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                // Ícono del concepto
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Color(concepto['color']).withOpacity(0.1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(
                    _getIconData(concepto['icono']),
                    size: 30,
                    color: Color(concepto['color']),
                  ),
                ),

                const SizedBox(width: 16),

                // Contenido del concepto
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        concepto['titulo'],
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        concepto['descripcion'],
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[600],
                          height: 1.4,
                        ),
                      ),
                    ],
                  ),
                ),

                // Flecha indicadora
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Color(concepto['color']).withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: Color(concepto['color']),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  IconData _getIconData(String iconName) {
    switch (iconName) {
      case 'alt_route':
        return Icons.alt_route;
      case 'switch_left':
        return Icons.switch_left;
      case 'loop':
        return Icons.loop;
      case 'control_camera':
        return Icons.control_camera;
      case 'error_outline':
        return Icons.error_outline;
      default:
        return Icons.code;
    }
  }
}
