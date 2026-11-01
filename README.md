# 🐾 Vision Studio AI (v2.0) · Clasificador y Detector de Animales

### 🎓 Universidad Autónoma Gabriel René Moreno (UAGRM)
### 🏛️ Facultad de Ciencias de la Computación y Telecomunicaciones (FICCT)
* **Materia:** Soporte a la Toma de Decisiones
* **Docente:** Ing. Jesús Bautista

---

## 📖 Contexto Académico

Proyecto interactivo desarrollado para la materia **Soporte a la Toma de Decisiones**. 

Agradecimiento especial a nuestro docente, el **Ingeniero Jesús Bautista**, quien nos propuso esta iniciativa orientada a la extracción y análisis de información mediante Visión Artificial, transmitiéndonos su conocimiento y guiándonos para ponernos a prueba ante problemas del mundo real.

---

## 🚀 Capacidades del Sistema

1. **Modo 1: Clasificador CNN (1 animal centrado):**
   - Red convolucional entrenada en Keras con 3 bloques `Conv2D + MaxPooling2D` y salida sigmoide.
   - Clasificación binaria entre **Perro** y **Gato** en $100 \times 100$ píxeles.
2. **Modo 2: Detector y Conteo Multi-animal (2 o más):**
   - Localización espacial con cajas delimitadoras (*bounding boxes*) en tiempo real.
   - Totaliza automáticamente la cantidad de perros y gatos presentes en pantalla y calcula su nivel de confianza.
3. **Sincronización WebRTC con Celular:**
   - Permite vincular el teléfono móvil como cámara inalámbrica mediante un **Código QR dinámico**, transmitiendo video en vivo hacia la laptop con latencia ultra-baja.

---

## 📁 Estructura del Repositorio

```text
Clasificador de Animales/
├── index.html                           # Dashboard web interactivo con soporte WebRTC
├── model.json                           # Topología de la red convolucional (TensorFlow.js)
├── group1-shard1of2.bin                 # Pesos pre-entrenados (Fragmento 1)
├── group1-shard2of2.bin                 # Pesos pre-entrenados (Fragmento 2)
├── perros-gatos-cnn-ad.keras            # Modelo nativo unificado para Python
├── Clasificador_de_perros_y_gatos.ipynb # Cuaderno de entrenamiento de clase
├── Iniciar_Clasificador.bat             # Lanzador local para Windows (1 clic)
├── logo_uagrm_ficct.png                 # Emblema oficial UAGRM FICCT
└── favicon.ico / favicon-*.png          # Favicons del sitio
```

---

## 💻 Ejecución Local

1. Hacer doble clic sobre `Iniciar_Clasificador.bat`.
2. O ejecutar en consola:
   ```bash
   python -m http.server 8000
   ```
3. Abrir en el navegador: **`http://localhost:8000`**

---

## ☁️ Despliegue en Vercel / GitHub

El proyecto es **100% estático** (el cómputo de la IA se ejecuta en el navegador del usuario mediante WebGL/GPU):
1. Sube esta carpeta a tu repositorio de GitHub.
2. Impórtala en [Vercel](https://vercel.com) con un solo clic.
3. Vercel te entregará una URL pública con HTTPS (ej. `https://clasificador-animales.vercel.app`) para abrir la cámara desde cualquier smartphone.
