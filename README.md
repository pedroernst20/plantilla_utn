# informeutn

Plantilla en LaTeX para realizar informes, trabajos prácticos y presentaciones académicas pensada para estudiantes de la **Universidad Tecnológica Nacional - Facultad Regional Córdoba (UTN FRC)**.

Este proyecto busca simplificar el proceso de escritura de informes con una estética prolija, márgenes apropiados, carátula automática, encabezados personalizados, y compatibilidad con diagramas eléctricos mediante `circuitikz`.

---

## 📁 Archivos incluidos

- `informeutn.cls`: Archivo de clase principal. Define el formato general del documento, la carátula, márgenes, encabezados y comandos personalizados.
- `test.tex`: Ejemplo básico que muestra cómo usar la plantilla.
- `logo-utn.png`: Imagen del logo de la UTN que aparece en la carátula.

---

## ✍️ Cómo usar la plantilla

1. Copiá los archivos `informeutn.cls` y `logo-utn.png` en el mismo directorio que tu archivo `.tex`.

2. En tu archivo `.tex`, usá esta estructura mínima:

```latex
\documentclass{plantillautn}

\materia{Materia universitaria}
\titulo{Informe pracito N°1}
\subtitulo{Aplicaciones practicas}
\autores{Pedro Ernst, Legajo 400624}
\fecha{\today}

\begin{document}

\maketitle

\tableofcontents
\newpage

\section{Introducción}

Texto del informe...

\end{document}
