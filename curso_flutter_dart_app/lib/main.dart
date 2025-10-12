import 'package:curso_flutter_dart_app/modulos/01_fundamentos_dart/functions_errors/screens/function_main_screen.dart';
import 'package:curso_flutter_dart_app/modulos/01_fundamentos_dart/basic_syntax/screens/basic_syntax_main_screen.dart';
import 'package:curso_flutter_dart_app/modulos/01_fundamentos_dart/control_structures/screens/control_structures_main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(centerTitle: true, elevation: 0),
        cardTheme: CardTheme(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepPurple,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ),
      home: const DemoConcepts(),
    );
  }
}

// Demo de conceptos de dart y flutter
class DemoConcepts extends StatelessWidget {
  const DemoConcepts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Dart & Flutter Concepts',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Encabezado
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.only(bottom: 24),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.deepPurple.shade100,
                      Colors.deepPurple.shade50,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.deepPurple.shade200),
                ),
                child: Column(
                  children: [
                    Icon(
                      Icons.school,
                      size: 48,
                      color: Colors.deepPurple.shade700,
                    ),
                    const SizedBox(height: 12),
                    Text(
                      'Curso de Dart & Flutter',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple.shade700,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Aprende los fundamentos paso a paso',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.deepPurple.shade600,
                      ),
                    ),
                  ],
                ),
              ),

              // Módulos disponibles
              Expanded(
                child: ListView(
                  children: [
                    _buildModuleCard(
                      context,
                      title: 'Sintaxis Básica de Dart',
                      subtitle:
                          'Variables, tipos, operadores y conceptos fundamentales',
                      icon: Icons.abc,
                      color: Colors.green,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const BasicSyntaxMainScreen(),
                          ),
                        );
                      },
                    ),

                    const SizedBox(height: 16),

                    _buildModuleCard(
                      context,
                      title: 'Funciones y Manejo de Errores',
                      subtitle:
                          'Funciones, parámetros, excepciones y buenas prácticas',
                      icon: Icons.functions,
                      color: Colors.blue,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const FunctionsScreen(),
                          ),
                        );
                      },
                    ),

                    const SizedBox(height: 16),

                    _buildModuleCard(
                      context,
                      title: 'Estructuras de Control',
                      subtitle:
                          'If, switch, loops, excepciones y control de flujo',
                      icon: Icons.alt_route,
                      color: Colors.purple,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) =>
                                    const ControlStructuresMainScreen(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildModuleCard(
    BuildContext context, {
    required String title,
    required String subtitle,
    required IconData icon,
    required Color color,
    required VoidCallback onTap,
    bool enabled = true,
  }) {
    return Card(
      elevation: enabled ? 4 : 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: InkWell(
        onTap: enabled ? onTap : null,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color:
                      enabled
                          ? color.withOpacity(0.1)
                          : Colors.grey.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(
                  icon,
                  color: enabled ? color : Colors.grey,
                  size: 28,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: enabled ? null : Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      subtitle,
                      style: TextStyle(
                        fontSize: 14,
                        color: enabled ? Colors.grey.shade600 : Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: enabled ? Colors.grey.shade400 : Colors.grey.shade300,
                size: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
