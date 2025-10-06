# Flutter CodeLabs

## 📱 Descripción
Repositorio de **código práctico y aplicaciones Flutter** que complementa el curso teórico `Curso_Flutter_Dart_Completo`. Aquí encontrarás demos visuales interactivos y proyectos independientes para que los estudiantes practiquen cada concepto aprendido.

## 🎯 Objetivo
Transformar la teoría en práctica mediante:
- **Demos visuales** de cada concepto
- **Aplicaciones funcionales** para experimentar
- **Proyectos independientes** para que el estudiante desarrolle
- **Portafolio progresivo** de aplicaciones Flutter

## 🏗️ Estructura del Repositorio

### 📁 curso_flutter_dart_app/
**Aplicación principal del curso** - Demo unificada de todos los conceptos
```
curso_flutter_dart_app/
├── lib/
│   ├── main.dart                    # Menú principal navegable
│   ├── modulos/
│   │   ├── 01_fundamentos_dart/     # Demos de conceptos Dart
│   │   ├── 02_profundizando_dart/   # Async, Collections, Null Safety
│   │   ├── 03_fundamentos_flutter/  # Widgets, Layouts, Navegación
│   │   ├── 04_interfaces_avanzadas/ # Animaciones, Forms, Custom Widgets
│   │   ├── 05_integracion/          # APIs, Storage, State Management
│   │   └── 06_buenas_practicas/     # Testing, Performance, Publishing
│   ├── widgets/                     # Componentes reutilizables
│   └── utils/                       # Utilidades y constantes
├── assets/                          # Imágenes y recursos
├── pubspec.yaml                     # Dependencias del proyecto
└── README.md                        # Guía de la app principal
```

### 📁 proyectos_estudiante/
**Proyectos independientes** donde el estudiante practica cada tema
```
proyectos_estudiante/
├── 01_fundamentos_dart/
│   ├── calculadora_simple_app/      # Implementa operaciones básicas
│   └── clase_persona_app/           # Practica POO en Flutter
├── 02_profundizando_dart/
│   ├── lista_nombres_app/           # Manjo de colecciones
│   ├── edad_nullable_app/           # Null safety en práctica
│   ├── temporizador_async_app/      # Async/await visual
│   └── stream_numeros_app/          # Streams en tiempo real
├── 03_fundamentos_flutter/
│   ├── contador_app/                # StatefulWidget básico
│   ├── layout_basico_app/           # Column, Row, Flex
│   └── navegacion_simple_app/       # Navigator y rutas
├── 04_interfaces_avanzadas/
│   ├── animacion_color_app/         # AnimatedContainer
│   ├── tarjeta_personalizada_app/   # Custom Widgets
│   ├── formulario_registro_app/     # Forms y validación
│   └── lista_tareas_app/            # ListView dinámico
├── 05_integracion_funcionalidades/
│   ├── consulta_api_app/            # HTTP requests
│   ├── guardar_preferencia_app/     # Shared Preferences
│   ├── contador_riverpod_app/       # State Management
│   ├── notificacion_local_app/      # Push notifications
│   └── foto_ubicacion_app/          # Camera y GPS
└── 06_publicacion_buenas_practicas/
    ├── app_pruebas/                 # Testing completo
    └── app_optimizada/              # Performance monitoring
```

## 🚀 Cómo usar este repositorio

### 👨‍🏫 Para Profesores:
1. **Muestra la demo** en `curso_flutter_dart_app` durante la clase
2. **Asigna proyectos** de `proyectos_estudiante` como tareas
3. **Revisa y evalúa** los proyectos completados por estudiantes
4. **Usa como referencia** para explicar conceptos complejos

### 👨‍🎓 Para Estudiantes:
1. **Explora la demo principal** para ver conceptos en acción
2. **Clona y modifica** los proyectos asignados
3. **Experimenta libremente** con el código
4. **Construye tu portafolio** completando cada aplicación

## ⚙️ Configuración inicial

### Prerrequisitos:
- Flutter SDK (versión 3.0 o superior)
- Dart SDK (incluido con Flutter)
- Editor: VS Code o Android Studio
- Emulador o dispositivo físico

### Instalación:
```bash
# Clona el repositorio
git clone https://github.com/DaisyGeraldine/Flutter_CodeLabs.git

# Navega al proyecto principal
cd Flutter_CodeLabs/curso_flutter_dart_app

# Instala dependencias
flutter pub get

# Ejecuta la app
flutter run
```

### Para proyectos individuales:
```bash
# Navega al proyecto específico
cd proyectos_estudiante/02_profundizando_dart/lista_nombres_app

# Instala dependencias
flutter pub get

# Ejecuta el proyecto
flutter run
```

## 📚 Relación con el curso teórico

| Módulo Teórico | Demo en App Principal | Proyecto del Estudiante |
|----------------|----------------------|------------------------|
| **01_Fundamentos_Dart** | Sintaxis interactiva | `calculadora_simple_app` |
| **02_Profundizando_Dart** | Async/Collections demos | `temporizador_async_app` |
| **03_Fundamentos_Flutter** | Widgets playground | `contador_app` |
| **04_Interfaces_Avanzadas** | Animaciones live | `formulario_registro_app` |
| **05_Integracion_Funcionalidades** | API consumer | `consulta_api_app` |
| **06_Publicacion_BuenasPracticas** | Testing examples | `app_pruebas` |

## 🎓 Metodología de aprendizaje

### Flujo recomendado:
1. **Lee la teoría** → `Curso_Flutter_Dart_Completo`
2. **Ve la demo** → `curso_flutter_dart_app`
3. **Practica** → `proyectos_estudiante`
4. **Experimenta** → Modifica y mejora los proyectos
5. **Evalúa** → Compara con el solucionario

### Niveles de dificultad:
- 🟢 **Básico**: Seguir instrucciones paso a paso
- 🟡 **Intermedio**: Implementar funcionalidades adicionales  
- 🔴 **Avanzado**: Crear variaciones y mejoras propias

## 📱 Tecnologías y paquetes utilizados

### Core:
- **Flutter** 3.0+
- **Dart** 2.17+

### Paquetes principales:
- `http` - Consumo de APIs
- `shared_preferences` - Almacenamiento local
- `riverpod` - Manejo de estado
- `go_router` - Navegación avanzada
- `sqflite` - Base de datos local
- `camera` - Acceso a cámara
- `geolocator` - Geolocalización

## 🤝 Contribuciones

¿Quieres mejorar los CodeLabs?
1. Fork el repositorio
2. Crea una branch para tu feature
3. Implementa mejoras o nuevos ejemplos
4. Crea un Pull Request

### Ideas para contribuir:
- Nuevos ejemplos prácticos
- Mejoras en la UI/UX
- Optimizaciones de rendimiento
- Documentación adicional
- Traducciones

## 📞 Soporte y comunidad

- **Issues**: Reporta bugs o solicita features
- **Discussions**: Comparte ideas y pregunta dudas
- **Wiki**: Documentación extendida y tutoriales
- **Releases**: Versiones y changelog

## 📊 Progreso del curso

Al completar todos los proyectos, el estudiante habrá:
- ✅ Creado **12+ aplicaciones Flutter** funcionales
- ✅ Dominado conceptos desde básicos hasta avanzados
- ✅ Construido un **portafolio sólido** de proyectos
- ✅ Preparado para desarrollar apps comerciales

## 🏆 Certificación

Este repositorio complementa el curso teórico para la certificación como:
**"Desarrollador Flutter Dart Profesional"**

---

**Versión:** 1.0  
**Última actualización:** Octubre 2025  
**Mantenido por:** [Daisy Geraldine](https://github.com/DaisyGeraldine)
**Licencia:** MIT  

> 💡 **Tip**: La mejor forma de dominar Flutter es construyendo. ¡Cada app que completes te acerca más a ser un experto!

**🔗 Repositorio relacionado:** [Curso_Flutter_Dart_Completo](https://github.com/DaisyGeraldine/Curso_Flutter_Dart_Completo)
