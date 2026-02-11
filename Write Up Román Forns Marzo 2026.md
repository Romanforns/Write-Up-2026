# Write Up Román Forns – Septiembre 2025

## ¿Sientes que has crecido en los últimos 6 meses?

En estos últimos seis meses he experimentado una evolución muy marcada. Los proyectos en los que he participado me han exigido dominar plataformas y patrones nuevos (Microsoft Fabric, Data Vault 2.0, arquitecturas metadata-driven, modelado dbt sobre ecosistemas enterprise), asumiendo liderazgo técnico desde el diseño hasta la entrega y consolidándome como referente en iniciativas de migración y modernización de plataformas de datos.

### Practice

- **Assessment Migración DACSA**

  A partir de la extracción automatizada de metadatos de Dataverse, Azure Synapse, Azure Data Factory, MySQL y Power BI, mediante herramientas propias desarrolladas en Python, he generado el inventario completo de la plataforma de Business Intelligence. Sobre esta base, he elaborado una documentación exhaustiva de la arquitectura y los activos existentes, incluyendo modelos semánticos, reportes paginados, transformaciones ETL, análisis de linaje por dominio (Finanzas, Logística, Ventas, Calidad, I+D y POE) y diagramas de dependencias técnicas y funcionales. Asimismo, he definido criterios de categorización de productos según su nivel de complejidad (S, M, L, XL) para estructurar y planificar su migración a Microsoft Fabric. Este marco de clasificación, junto con la documentación exhaustiva de la arquitectura, ha permitido al equipo realizar un análisis de la plataforma de forma sistemática, estimar el esfuerzo requerido y dimensionar con precisión el alcance del proyecto de migración, convirtiéndose en el principal input para la elaboración y defensa de la propuesta comercial.

- **Proyecto Migración DACSA Fabric**

  Sobre la base del assessment previo, participé en el análisis y diseño de la migración hacia Microsoft Fabric. Se abordó una simplificación integral de la capa de transformación, orientándola a la ingesta directa de entidades de D365 F&O y a la aplicación sistemática de reglas de calidad definidas en una guía metodológica exhaustiva, diseñada para maximizar el uso de las librerías dbt_utils y dbt_expectations (validaciones de integridad, unicidad, rangos, formatos y consistencia dentro del marco de arquitectura Medallion). Como resultado, el dato queda estandarizado, validado y preparado en la capa Silver. Para garantizar coherencia, trazabilidad y escalabilidad, se definieron guidelines transversales de Naming Conventions para toda la plataforma de datos de DACSA, estableciendo una clara diferenciación entre la capa Silver (enfoque técnico y trazable) y la capa Gold (enfoque semántico y orientado a negocio), con convenciones obligatorias para nuevos desarrollos. Asimismo, participé en el refinamiento de los pipelines de ingesta desde orígenes cloud y on-premises, basada en shortcuts y staging en Lakehouses, junto con el modelado en dbt para la construcción de los Data Warehouses en las capas Silver y Gold.

- **Prueba DataTech para promoción a Specialist**

  El equipo de DataTech proporcionó inicialmente, a mi solicitud, dos ejemplos de prueba técnica y, días después, una tercera prueba final. Tras comenzar su desarrollo de forma independiente, se decidió consolidar los tres enunciados en una única Proof of Concept (PoC) integrada que diera respuesta conjunta a todos los requisitos planteados. Las pruebas abordaban, respectivamente: el diseño de una arquitectura Data Vault 2.0 sobre TPCH_SF1 en Snowflake con dbt Cloud y lineage end-to-end; el desarrollo de un framework de ingesta y validación metadata-driven con PySpark, Docker y Airflow bajo un enfoque DataOps; y la implementación de un programa en Python/Scala basado en metadata.json para transformaciones dinámicas, control de calidad y versionado con Spark. Como respuesta, se diseñó una solución unificada y metadata-driven que integró arquitectura, procesamiento, gobierno y modelado de datos en un mismo ecosistema tecnológico basado en Airflow, Spark y dbt sobre Snowflake. La propuesta combinó la arquitectura Data Vault 2.0, un framework de ingesta y validación declarativa y un motor de transformaciones dinámicas gobernado por metadatos JSON, garantizando trazabilidad, control de versiones y calidad del dato desde origen hasta capa analítica. El proceso abarcó la ingesta y normalización de datos, la aplicación de validaciones declarativas, la generación de datasets controlados (OK/KO), la carga versionada en capa RAW con soporte para estrategias overwrite, append y upsert, y la posterior materialización en modelo Data Vault (staging → hubs, links, satellites → marts), incluyendo testing automatizado y lineage end-to-end. El resultado fue una plataforma unificada que resolvió los tres ejercicios en un único entregable coherente, demostrando capacidades avanzadas de diseño arquitectónico, estandarización de procesos, gobierno del dato y construcción de un framework reutilizable y escalable.

- **Metadata Driven Ingestion Framework (MDIF) – Proyecto adicional**

  Como ejercicio adicional, se desarrolló el proyecto Metadata Driven Ingestion Framework (MDIF), un framework de ingeniería de datos que automatiza la migración e ingesta entre PostgreSQL, MySQL y Snowflake mediante una arquitectura declarativa basada en metadatos YAML. El sistema descubre esquemas desde INFORMATION_SCHEMA, genera automáticamente DDL idempotente y scripts de ingesta en Python, y ejecuta procesos batch e incrementales con control de volumetría, validación de integridad y orquestación en Apache Airflow. La arquitectura se estructura en capas de metadatos, generación, runtime y orquestación, incorporando conectores especializados y estrategias de ingesta reutilizables que separan completamente la configuración de la implementación. El proyecto continúa evolucionando con la incorporación de nuevos conectores y la extensión del patrón metadata-driven a otros escenarios de migración, con el objetivo de consolidarse como un activo reutilizable y escalable dentro del portfolio de soluciones de la práctica.

- **Proyecto Refactorización DataPlatform TOUS**

  A partir del trabajo realizado en la prueba DataTech, se elaboró una propuesta técnica para optimizar la plataforma de datos de TOUS. El repositorio GPC_Tous-main centraliza APIs Flask y DAGs de Airflow en una arquitectura monolítica, con fuerte acoplamiento entre componentes, configuración dispersa y despliegues manuales. El análisis identificó como principales problemáticas el elevado coste de cambio, la ausencia de CI/CD, queries de BigQuery embebidas en código, uso de operadores deprecados y una cobertura limitada de testing, afectando directamente a la mantenibilidad, escalabilidad y gobernanza de la plataforma. Como respuesta, se realizó un análisis de viabilidad técnica y se definió un roadmap de migración de 20 semanas estructurado en ocho fases. La propuesta arquitectónica, denominada TOUS Workframe, planteó una reestructuración por capas, la implementación de DAG factories parametrizadas en YAML, la adopción del Repository Pattern con abstracción de Datastore y BigQuery, una estrategia metadata-driven para la gestión de queries y configuraciones, la centralización de parámetros mediante Pydantic y la incorporación de un framework de testing alineado con buenas prácticas de Data Engineering. El entregable consistió en una propuesta técnica integral que incluía el diseño arquitectónico detallado, el plan de migración y la documentación de mejoras estructurales, aplicando de forma coherente los patrones metadata-driven y de arquitectura consolidados durante la prueba DataTech. No obstante, la propuesta no llegó a presentarse debido a la reducción de inversión de TOUS en su Data Platform.

### Operations

- **DACSA**: Estructuración operativa de la migración: a partir del assessment y del inventario de modelos y reportes, he estructurado el inventario de pipelines y el mapeo de datasets necesarios para la migración a Microsoft Fabric, revisando dependencias y definiendo rutas de migración por fases, con guías operativas que facilitan una transición controlada y trazable desde la plataforma actual.

- **DataTech**: Demostración de operación metadata-driven: en la prueba de DataTech he demostrado una operación metadata-driven en la que cambios en reglas, rutas de ingesta o destinos analíticos se realizan modificando ficheros JSON/YAML sobre una arquitectura separada en orquestación (Airflow), procesamiento (Spark) y modelado (dbt), permitiendo adaptar volúmenes, frecuencias y estrategias de carga por configuración declarativa manteniendo estabilidad y escalabilidad.

- **TOUS**: Operaciones orientadas a una arquitectura metadata-driven: he propuesto operar la plataforma en base a principios metadata-driven mediante un roadmap de 20 semanas que migra gradualmente el monolito a componentes desacoplados apoyados en DAG factories en YAML, configuración centralizada, CI/CD y un framework de testing, de forma que la evolución se gestione mediante metadatos y no mediante cambios manuales en código.

### Team

- **DACSA**: además de aportar documentación y estructuras que facilitan el trabajo coordinado entre perfiles técnicos y funcionales, participo activamente en la coordinación del equipo que ejecuta el análisis detallado y la planificación de la migración, revisando entregables y alineando las decisiones técnicas del día a día con la estrategia definida.

- **DataTech**: la documentación exhaustiva que he generado en los repositorios (defensa del proyecto, documentación técnica, guías de metadatos y READMEs ampliados) permite que cualquier desarrollador pueda entender y extender la plataforma sin depender de una única persona, sirviendo como base para que otros compañeros adopten patrones metadata-driven y Data Vault en sus propios desarrollos.

- **TOUS**: actúo como referencia técnica para perfiles de datos, guiando el diseño de DAGs, las buenas prácticas en GCP y el uso de la arquitectura actual, fomentando un marco de trabajo compartido y transferible al resto del equipo dentro de las limitaciones del contexto presente.

### Client

- **DACSA**: el trabajo de assessment, documentación de la arquitectura y estructuración operativa de la migración proporciona al cliente una visión clara del estado real de su plataforma de BI, de las dependencias entre dominios y de las opciones de migración a Microsoft Fabric, facilitando la toma de decisiones informadas sobre alcance, riesgos y prioridades.

- **DataTech**: la prueba técnica y el proyecto MDIF demuestran de forma tangible la capacidad de diseñar y operar plataformas metadata-driven y marcos de migración reutilizables, reforzando la confianza en nuestra propuesta de valor para escenarios de modernización y consolidación de datos similares a los que afrontan muchos clientes.

- **TOUS**: la propuesta de refactorización de la Data Platform, apoyada en un roadmap realista, ofrece al cliente una hoja de ruta clara para evolucionar su plataforma actual hacia una arquitectura más mantenible y gobernable, incluso aunque la ejecución completa del plan quede condicionada por decisiones de inversión.

### Business

- **DACSA**: el assessment y el diseño de la migración a Fabric sientan las bases para priorizar productos y dominios según esfuerzo y valor, facilitando decisiones de inversión progresivas en la modernización de la plataforma de BI.

- **DataTech**: el conocimiento adquirido en la plataforma metadata-driven y el proyeto MDIF, consolidan un activo intangible que puede convertirse en acelerador para futuros proyectos de migración y consolidación de datos, con impacto directo en time-to-market, reducción de costes de desarrollo y diferenciación de la práctica frente a otras propuestas del mercado.

- **TOUS**: la propuesta de refactorización busca reducir costes operativos, mejorar tiempos de entrega de nuevos requerimientos y aumentar la calidad y estabilidad de la plataforma de datos, alineando la evolución técnica con objetivos de negocio como la agilidad en la toma de decisiones y el control del gasto en GCP.

### Influence

- He influido en decisiones arquitectónicas clave mediante documentación técnica estructurada, diagramas y propuestas apoyadas en métricas, actuando como referente interno en arquitecturas de datos modernas y migraciones cloud.

- El enfoque metadata-driven aplicado en la prueba de DataTech y utilizado como base en la propuesta para TOUS refuerza la posición de SDG como consultora capaz de ofrecer soluciones escalables y mantenibles, y sirve como referencia para diseñar marcos reutilizables en otros clientes.

- La creación del MDIF como proyecto adicional muestra iniciativa y la capacidad de transformar aprendizajes técnicos en artefactos reutilizables con potencial de convertirse en activos de la práctica, conectando el trabajo de ingeniería con oportunidades de valor y diferenciación en futuras propuestas.

---

## Describa las actividades realizadas para los clientes

### 1. Assessment Migración DACSA (Dynamics, Azure Synapse, Azure Data Factory, MySQL)

**Alcance**: análisis de la plataforma de datos de DACSA para evaluar y simplificar los procesos ETL de los productos de Power BI activos, en preparación de la migración a Microsoft Fabric.

**Actividades realizadas**:

- Documentación exhaustiva de la plataforma existente: Dynamics 365 FO como fuente principal, Azure Synapse, Azure Data Factory, MySQL e integraciones con INNOVA, INTER y SharePoint.
- Inventario de modelos semánticos y reportes paginados, con documentación por producto: estructura del dataset, transformaciones (M-query, DAX, SQL), orígenes de datos, pipelines ADF y diagramas de dependencias.
- Modelado por dominios (Finanzas, Logística, Ventas, Calidad, I+D, POE) con identificación de hechos y dimensiones clave para cada área.
- Categorización de productos (S, M, L, XL) según complejidad y esfuerzo, para priorizar y estimar la migración.
- Definición de una estrategia preliminar de migración basada en consumo desde shortcuts de Fabric, modelado en dbt y simplificación de capas intermedias.

### 2. Proyecto Migración DACSA Fabric

**Alcance**: análisis y diseño para migrar la plataforma de datos de DACSA a Microsoft Fabric.

**Actividades realizadas**:

- Inventario de pipelines y mapeo de datasets desde el repositorio de análisis para asegurar la cobertura de procesos críticos.
- Elaboración de un glosario de campos D365 F&O y documentación de entidades clave, alineando el modelo técnico con el lenguaje de negocio.
- Documentación de modelos BIM para productos de finanzas y otros dominios prioritarios.
- Definición de capas de transformación y su mapeo hacia las capas Bronze/Silver/Gold, integrando la estrategia de calidad de datos.
- Diseño del scaffolding en Fabric y de los primeros modelos Bronze en dbt como base de la futura plataforma.
- Estructuración de un plan de migración por fases: preparación del entorno, migración de procesos, validación y pruebas, estabilización y transferencia al equipo del cliente.

---

## ¿Cómo te gustaría verte dentro de 6 meses en SDG?

Me gustaría verme consolidando el paso a Specialist referente de arquitectura e integración en clientes clave, con foco en:

- Arquitecturas innovadoras de datos metadata-driven, incorporando progresivamente capacidades de IA y Machine Learning cuando aporten valor real.
- Migraciones de entornos legacy hacia ecosistemas cloud con trazabilidad, calidad y gobernanza, aplicando los aprendizajes de proyectos como DACSA y las propuestas tipo TOUS.
- Soluciones que unan eficiencia tecnológica y visión de negocio, reutilizando patrones y frameworks para maximizar impacto en costes, riesgos, tiempos de entrega y calidad del dato.
- Potenciar mis soft skills para continuar inspirando y guiando los miembros de los equipos en proyectos de alto impacto, acompañando a perfiles más junior mediante liderazgo interno.

---

## ¿Cuáles son los factores clave que te ayudarán a continuar creciendo profesionalmente?

- **Proyectos high-tech**: Participación en retos que exijan dominar nuevas tecnologías y patrones de arquitectura de datos.
- **Mentoría**: acompañamiento de referentes técnicos que me aporten nuevas perspectivas en arquitectura, gobierno del dato y estimaciones, ayudándome a contrastar decisiones y afinar criterios.
- **Mayor disponibilidad para diseño**: reducir dedicación exclusiva a desarrollo para poder:
  - Diseñar arquitecturas desde la fase de propuesta y assessment.
  - Mejorar prácticas, documentación, estimaciones y planificación.
  - Formar y acompañar a analistas y consultores, consolidando equipo y cultura técnica.
- **Reutilización de artefactos**: trabajar en desarrollos que permitan el reaprovechamiento de las soluciones como base para acelerar futuros proyectos, reduciendo esfuerzo repetitivo y reforzando un catálogo de soluciones de práctica.

---

## Comentario personal

En este periodo he pasado de centrarme en el desarrollo y en PoCs complejas a tener un rol mucho más orientado a diseño de arquitecturas de datos y roadmaps de migración, definiendo plataformas metadata-driven, modelos Data Vault y frameworks reutilizables (como la prueba DataTech, el MDIF o la propuesta de TOUS). Además de la contribución técnica, he empezado a asumir más responsabilidad en la coordinación de trabajos (especialmente en DACSA) así como la continuación en la guía de perfiles más junior y la elaboración de documentación de referencia.

Al mismo tiempo, la naturaleza de las responsabilidades asumidas, el tipo de decisiones en las que participo y el nivel de autonomía que ejerzo han evolucionado de forma muy marcada respecto a hace un año, a veces más rápido que cómo se organizan los contextos, oportunidades y reconocimientos asociados a estos roles. Ese contraste me hace reflexionar con especial atención sobre dónde y cómo puedo seguir desarrollando todo este potencial en el medio plazo, priorizando entornos donde este tipo de contribución arquitectónica y de liderazgo técnico tenga el recorrido, la visibilidad y el reconocimiento que merece.