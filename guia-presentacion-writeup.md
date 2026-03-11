# Guía de presentación – Write Up Q1 2026

**Duración total:** ~23 min  
**Estructura:** 3 bloques (15 min + 5 min + 3 min)

---

## Bloque 1 — Crecimiento y entregables (15 min)

<details>
<summary><strong>⏱ 15 min · ¿Sientes que has crecido en los últimos 6 meses?</strong></summary>

### Objetivo
Transmitir la evolución técnica y de responsabilidad en los últimos 6 meses.

### Síntesis
Evolución significativa: nuevos proyectos exigieron dominar Fabric, Data Vault, arquitecturas metadata-driven y dbt, con liderazgo técnico en diseño e implementación. Concreción en tres frentes: migración BI DACSA→Fabric (notebooks estándar, pipelines incrementales), modelado financiero con dbt (guías de calidad y naming) y propuesta/MVP TETRIS (React, Flask, Python, integración Salesforce y Fabric).

### Puntos clave a cubrir en voz
- Evolución: Fabric, Data Vault, metadata-driven, dbt; liderazgo en diseño e implementación.
- Tres concreciones: migración DACSA→Fabric, modelado dbt, propuesta/MVP TETRIS.

</details>

<details>
<summary><strong>Dimensiones del crecimiento profesional (SDG)</strong></summary>

### Objetivo
Recorrer las 6 dimensiones SDG con ejemplos concretos por cliente/contexto.

---

<details>
<summary><strong>PRÁCTICA — Proyectos y entregables técnicos</strong></summary>

| Proyecto | Síntesis |
|----------|----------|
| **Assessment DACSA** | Extracción automatizada de metadatos (Dataverse, Synapse, ADF, MySQL, Power BI) con herramientas Python → inventario completo de BI, documentación de arquitectura y activos, linaje por dominio (Finanzas, Logística, Ventas, Calidad, I+D, POE), categorización S/M/L/XL. Input clave para propuesta comercial. |
| **Migración DACSA Fabric** | Análisis y diseño de migración a Fabric; simplificación de transformación (ingesta D365 F&O, guía de calidad dbt_utils/dbt_expectations, plantilla notebooks Lakehouse); proyecto dbt Staging/Silver/Gold con CI/CD y Git; Naming Conventions Silver vs Gold; pipelines incrementales Synapse/ADLS→SQL/Fabric. |
| **TETRIS DACSA** | Arquitectura y MVP de calculadora B2B (D365/Fabric → KPIs FOB, CIF, CCT, etc.). MVP: FastAPI + React + PostgreSQL en contenedores, SSO Entra ID, motor como servicio desde Fabric. Roadmap de productivización y extensión alineado con plataforma de datos. |
| **Prueba DataTech** | Tres pruebas unificadas en una PoC: Data Vault 2.0 en Snowflake con dbt; framework ingesta/validación metadata-driven (PySpark, Docker, Airflow); transformaciones dinámicas con metadata.json y Spark. Solución: Airflow + Spark + dbt, landing→RAW→Data Vault (hubs, links, satellites, marts), lineage y documentación entrega/defensa. |
| **MDIF** | Framework de migración/ingesta PostgreSQL, MySQL, Snowflake con metadatos YAML. Capas: metadatos (YAML), generación (DDL + scripts Python), runtime (Strategy, batch/incremental), orquestación (Airflow). Volumetría, streaming, integridad, retry, idempotencia. Activo reutilizable para la práctica. |
| **Refactorización TOUS** | Propuesta TOUS Workframe: Medallion, DAG factories YAML, Repository Pattern, metadata-driven, Pydantic, testing. Roadmap 20 semanas. No presentada por reducción de inversión del cliente. |

</details>

<details>
<summary><strong>OPERACIONES</strong></summary>

- **DACSA:** Inventario pipelines y datasets, dbt Staging/Silver/Gold con CI/CD (Azure Pipelines, Git); pipelines correctivos (deduplicación, deletes, marcadores); notebooks estándar Fabric (AEMET, CBOT, FOREX, población → CSV en Lakehouse).
- **DataTech:** Operación metadata-driven vía JSON/YAML; Airflow (RAW, validaciones, cargas) + Spark (reglas, versionado) + dbt (Data Vault, marts); trazabilidad landing→analítica.
- **MDIF:** Descubrimiento de esquemas, DDL, scripts de ingesta, batch/incremental con Airflow y YAML.
- **TOUS:** Propuesta: desacoplar monolito, YAML+Pydantic, CI/CD, testing.

</details>

<details>
<summary><strong>EQUIPO</strong></summary>

- **DACSA:** Coordinación del equipo de migración; diseño colaborativo dbt (staging, dimensiones, macros, schema.yml); guías de calidad, naming y plantillas de notebooks como estándar común.
- **DataTech:** Documentación (README, PROJECT_DOCUMENTATION, defensa) para que otros entiendan y extiendan la plataforma.
- **MDIF:** Framework reutilizable como base común y activo del equipo.
- **TOUS:** Referencia técnica en DAGs, GCP y arquitectura; propuesta documentada como marco transferible.

</details>

<details>
<summary><strong>CLIENTE</strong></summary>

- **DACSA:** Visión clara de la plataforma, dependencias y opciones de migración a Fabric; dbt gobernado (tests, documentación, despliegues); análisis pipelines Synapse/ADF y procesos correctivos; documentación de referencia → estabilización durante la transición.
- **TOUS:** Hoja de ruta para plataforma más mantenible y gobernable; roadmap de migración como visión estratégica (ejecución condicionada por inversión).

</details>

<details>
<summary><strong>NEGOCIO</strong></summary>

- **DACSA:** Priorización por esfuerzo y valor; capa dbt por dominios para reporting; TETRIS y flujos de ingesta → confianza en evolución escalonada con SDG.
- **DataTech/MDIF:** Activos reutilizables para migración y consolidación; menos código, evolución vía metadatos.
- **TOUS:** Refactorización para reducir costes, mejorar plazos y calidad; roadmap de optimización.

</details>

<details>
<summary><strong>INFLUENCIA</strong></summary>

- Referente en decisiones arquitectónicas (dbt DACSA, documentación); arquitecturas modernas, migraciones cloud, metadata-driven.
- Refuerzo de SDG C&R con soluciones escalables y mantenibles; estándares de calidad y guías dbt.
- MDIF y plantillas Fabric como artefactos reutilizables y activos del equipo.
- TOUS Workframe y TETRIS como roadmaps y patrones aplicables a otros proyectos; visión para modernización legacy e integración con motores de cálculo.

</details>

### Sugerencia de presentación
- Abrir solo la dimensión que se comente. En Práctica, detallar 2–3 proyectos (p. ej. DACSA, DataTech, MDIF) y resumir el resto.

</details>

<details>
<summary><strong>Actividades realizadas para los clientes</strong></summary>

### Objetivo
Resumir entregables por proyecto (alcance + actividades).

---

<details>
<summary><strong>1. Assessment Migración DACSA</strong></summary>

**Alcance:** Análisis de la plataforma DACSA para evaluar y simplificar ETL de Power BI como preparación a Fabric.

**Actividades:** Documentación plataforma (D365 FO, Synapse, ADF, MySQL, SharePoint); inventario modelos semánticos y reportes paginados; modelado por dominios (Finanzas, Logística, Ventas, Calidad, I+D, POE); categorización S/M/L/XL; estrategia preliminar (shortcuts Fabric, dbt, simplificación capas).

</details>

<details>
<summary><strong>2. Proyecto Migración DACSA Fabric</strong></summary>

**Alcance:** Análisis y diseño para migrar la plataforma de datos de DACSA a Microsoft Fabric.

**Actividades:** Inventario pipelines y mapeo datasets; glosario D365 F&O y entidades clave; documentación BIM; capas Bronze/Silver/Gold y calidad; pipeline incremental ADLS–Synapse–SQL (OPENROWSET, control, dedup, merge); plantilla notebooks Fabric para ingesta Lakehouse (JSON de salidas).

</details>

<details>
<summary><strong>3. Proyecto Modelado DACSA con dbt</strong></summary>

**Alcance:** Capa de datos gobernada y documentada para reporting financiero y de gestión (D365 F&O, SharePoint; staging / silver / gold).

**Actividades:** Proyecto dbt (Silver/Gold, sources.yml, packages.yml, dbt_project, profiles); 25+ modelos Staging (Dynamics + SharePoint); dimensiones Gold (calendario fiscal, productos, proveedores, compañías, cuentas); schema.yml con tests (not_null, unique, dbt_expectations); macros (silver_metadata, stg_clean, incrementales, surrogate keys); CI/CD Azure Pipelines y Git; guías de calidad y naming; documentación para reutilización en la práctica (referencia Medallion).

</details>

</details>

---

## Bloque 2 — Futuro y factores de crecimiento (5 min)

<details>
<summary><strong>⏱ 5 min · ¿Cómo te gustaría verte dentro de 6 meses en SDG?</strong></summary>

### Objetivo
Comunicar visión a 6 meses: consolidación como Specialist y foco de valor.

### Síntesis
- Consolidar paso a **Specialist** (arquitectura e integración) en C&R - Fashion and Others.
- **Arquitecturas** metadata-driven; IA/ML cuando aporten valor real.
- **Migraciones** legacy→cloud con trazabilidad, calidad y gobernanza.
- **Soluciones** que unan eficiencia técnica y visión de negocio; reutilizar patrones y frameworks (costes, riesgos, plazos, calidad).
- **Liderazgo interno:** inspirar, guiar y acompañar a perfiles más junior.

### Puntos clave a cubrir en voz
Specialist en C&R; arquitecturas metadata-driven + IA/ML; migraciones legacy→cloud; eficiencia + negocio; liderazgo y acompañamiento a junior.

</details>

<details>
<summary><strong>Factores clave para seguir creciendo</strong></summary>

### Objetivo
Alinear expectativas sobre condiciones que favorecen el crecimiento.

### Síntesis
- **Proyectos high-tech:** retos con nuevas tecnologías y patrones de arquitectura.
- **Colaboración** con referentes senior en arquitectura y gobierno del dato.
- **Mayor disponibilidad para diseño:** menos desarrollo puro; más propuesta, assessment, documentación y roadmaps (TOUS, DACSA, TETRIS).
- **Reutilización de artefactos:** desarrollos que permitan acelerar futuros proyectos.

### Puntos clave a cubrir en voz
High-tech; colaboración con senior; más tiempo para diseño; reutilización de soluciones.

</details>

---

## Bloque final — Comentario personal (3 min)

<details>
<summary><strong>⏱ 3 min · Comentario personal</strong></summary>

### Objetivo
Cerrar con reflexión sobre evolución del rol y expectativas de reconocimiento.

### Síntesis
- **Cambio de rol:** de desarrollo a diseño de arquitecturas y roadmaps (metadata-driven, Data Vault, frameworks: DataTech, MDIF, TOUS).
- **Más allá de lo técnico:** coordinación, orientación a junior, documentación estructural.
- **Evolución de responsabilidades:** decisiones, autonomía y complejidad han crecido; a veces más rápido que la estructuración formal de contextos y reconocimientos.
- **Reflexión:** identificar espacios donde la contribución evolucione en proporción a complejidad e impacto, con trayectoria coherente al potencial y compromiso demostrados.

### Puntos clave a cubrir en voz
De desarrollo a diseño; coordinación y documentación; crecimiento más rápido que el reconocimiento formal; necesidad de espacios alineados con impacto y complejidad.

</details>

---

## Resumen de tiempos

| Bloque | Contenido | Tiempo |
|--------|-----------|--------|
| 1 | Crecimiento + Dimensiones + Actividades clientes | 15 min |
| 2 | Visión 6 meses + Factores clave | 5 min |
| 3 | Comentario personal | 3 min |
| **Total** | | **~23 min** |

---

*Guía sintetizada a partir del Write Up (index.html). Secciones colapsables para seguir la presentación desde un único documento.*
