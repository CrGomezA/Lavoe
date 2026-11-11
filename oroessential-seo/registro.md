# Registro de trabajos

Historial de lo hecho en cada sesión. Las entradas más recientes van arriba.

---

## 11/11/2026: auditoría SEO y primeras mejoras

**Dónde:** tienda Shopify oroessential.com (cambios ya publicados) y repositorio (`oroessential-seo/`).

**Hecho en la tienda:**
- **SEO de productos:** título y meta descripción en 26 productos que no tenían. En las 13 joyas que existen en dorado y plateado, la descripción menciona las dos versiones.
- **Joyería:** 24 joyas añadidas a la colección «Joyería», que antes se veía vacía.
- **Colecciones nuevas:** Collares, Pulseras, Anillos y Regalos para Mujer.
- **SEO de colecciones:** título y meta descripción en 7 colecciones; textos de Joyería, Hogar y Electrónica ampliados.
- **Hogar:** añadidos la tira LED con sensor y el sofá infantil.
- **Fotos:** texto alternativo en 247 imágenes.
- **Blog:** 3 artículos en borrador oculto (labradorita, cuidado del baño de oro, regalos por menos de 30 €).

**Hecho en el repositorio:**
- Carpeta `oroessential-seo/` con el plan, los textos y las palabras clave.
- Memoria del proyecto en `CLAUDE.md`, skill `seo-shopify-oroessential` y este registro.

**Decisiones del usuario:**
- Olvidar la web Lavoe Arroz y Mar: la empresa se centra en oroessential.com.
- Quiere que se le explique paso a paso qué se hace y dónde.
- **Todos los agentes deben revisar primero las instrucciones del agente** antes de empezar cualquier tarea. Están en el `README.md` de `main`, que **se queda con ese nombre**.
- **`README.md` bloqueado en solo lectura** hasta nueva orden. Bloqueo aplicado con una regla `deny` y el hook `.claude/hooks/proteger-readme.sh` en `.claude/settings.json`, y comprobado en la sesión.
- **Terminar siempre con un resumen** de todo lo hecho, dónde, lo pendiente y las decisiones necesarias.
- **No crear más colecciones** hasta tener suficientes productos de calidad. Las 4 colecciones creadas hoy se mantienen.
- **Siguiente paso:** explorar cada sección del catálogo (Hogar · Cocina · Electrónica · Accesorios personales · Regalos premium) y buscar productos que cumplan los criterios del README y se puedan vender por dropshipping.

**Investigación de productos:** se exploró la sección Cocina en Shopify Collective y no salió ningún producto apto (todos genéricos, con un margen del 8 % y sin reseñas). Detalle y proveedores alternativos en `catalogo/investigacion-productos.md`.

**Pendiente (lo tiene que hacer el usuario):** Search Console, políticas y aviso legal, app Google & YouTube, menú de navegación, publicar el blog y la meta descripción de la portada. Ver la lista en `README.md`.

**Pendiente (próximas sesiones):**
- Reescribir las descripciones copiadas del proveedor en los productos principales.
- Unificar los tipos de producto.
- Nuevos artículos del blog (ideas en `palabras-clave.md`).
- Revisar en Search Console las primeras impresiones y clics.
