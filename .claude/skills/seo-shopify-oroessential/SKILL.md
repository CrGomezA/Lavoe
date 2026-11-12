---
name: seo-shopify-oroessential
description: Flujo de trabajo y convenciones para auditar y mejorar el SEO de la tienda Shopify oroessential.com (productos, colecciones, imágenes, blog). Úsala siempre que el usuario pida SEO, posicionamiento, tráfico, textos de productos o colecciones, o revisar la tienda.
---

# SEO de la tienda oroessential.com

## 0. Antes de empezar

- Lee el `README.md` de `main` (el responsable lo llama «agent.md»): reglas de oro, seguridad en Shopify, estilo de los textos (tono, estructura, textos originales) y catálogo. Lo que diga ese archivo manda sobre esta skill. Es de **solo lectura**: no lo modifiques.
- **No crees colecciones nuevas** hasta que el responsable lo autorice.
- **Nada que cueste dinero** sin su orden expresa: publicidad, apps de pago, descuentos, precios, pedidos o pagos. Propón solo opciones gratuitas e indica siempre si algo es de pago.
- Revisa `oroessential-seo/registro.md` y la carpeta de memoria por si hay decisiones o tareas pendientes.
- Si te falta un dato (precio, especificación, plazo de envío…), **pregunta**. No lo inventes.
- Explica lo que vas a cambiar en la tienda y espera el «sí» del responsable antes de aplicarlo.

## 1. Auditoría (solo lectura)

Usa las herramientas del servidor MCP de Shopify. Antes de escribir una consulta, comprueba los campos con `graphql_schema`, porque algunos están obsoletos (por ejemplo `Collection.ruleSet` y `Publication.name`).

- **Productos activos sin SEO:** `products(query:"status:active")` con `seo { title description }`.
- **Fotos sin texto alternativo:** `media { id alt mediaContentType }`.
- **Productos sin colección:** `collections(first:5){ nodes { handle } }` en cada producto.
- **Colecciones:** `seo`, `descriptionHtml` y número de productos activos (las colecciones con productos archivados se ven vacías).
- **Tráfico:** `run-analytics-query` con `FROM sessions SHOW sessions GROUP BY referrer_source SINCE -90d UNTIL today`.
- **Ventas:** `FROM sales SHOW orders, total_sales SINCE -90d UNTIL today`.
- **Otros:** políticas (`shop.shopPolicies`), páginas, blog y canales (`publications { catalog { title } }`).
- **Si la respuesta es muy grande,** se guarda en un archivo. Procésala con `jq` o Python en lugar de copiar los IDs a mano.

## 2. Convenciones de redacción

- **Título SEO:** `<palabra clave principal> | Oro Essential`, **≤ 60 caracteres** en total.
- **Meta descripción:** **≤ 155 caracteres**, con los datos concretos del producto (material, medidas, ajuste).
- **Comprueba las variantes antes de escribir.** Si la joya existe en *Dorado* y *Plateado*, la descripción menciona las dos.
- **No inventes afirmaciones:** nada de «envío a toda España», «hipoalergénico», garantías o plazos si no constan en la ficha o no los confirma el usuario.
- **Términos de búsqueda en España:** «circonitas» (no «zircones»), «plata de ley 925», «baño de oro 18k», «acero inoxidable 316L».
- **Texto alternativo:** `<nombre del producto>` para la foto principal y `<nombre> – vista N` para el resto. Respeta el patrón existente si ya hay alt.
- **Colecciones:** 2 párrafos con negritas en las palabras clave y enlaces internos a colecciones relacionadas (`/collections/...`).
- **Blog:** crea los artículos siempre con `isPublished: false` (borrador oculto). Pon el SEO en los metafields `global.title_tag` y `global.description_tag` y enlaza a productos (`/products/<handle>`) y colecciones.
- **Comprueba longitudes con un script** antes de aplicar.

## 3. Aplicar cambios

- **Rellena primero los campos vacíos.** Antes de sobrescribir un texto existente, guarda el original en `oroessential-seo/` para poder volver atrás.
- **Agrupa los cambios** en una sola mutación con alias (`p0: productUpdate(...) p1: ...`) para que el usuario confirme una sola vez:
  - SEO de producto: `productUpdate(product:{id, seo:{title, description}})`. Envía título y descripción juntos.
  - SEO o texto de colección: `collectionUpdate(collection:{id, seo, descriptionHtml})`.
  - Texto alternativo: `fileUpdate(files:[{id, alt}])`, en lotes de unos 125.
  - Añadir productos a colecciones manuales: herramienta `add-to-collection`.
  - Crear colecciones: herramienta `create-collection`, que ya las publica en la tienda online.

## 4. Verificar y documentar

- **Vuelve a consultar** la tienda para confirmar que se aplicó todo y que no quedan campos vacíos.
- **Actualiza** `oroessential-seo/README.md` (estado y pendientes) y los CSV o MD de textos.
- **Añade una entrada** en `oroessential-seo/registro.md` con la fecha, lo hecho, dónde se hizo y lo que queda pendiente.
- **Haz commit y push** a la rama de trabajo de la sesión.

## 5. Mejora continua

Cuando aprendas algo nuevo trabajando en la tienda, añádelo a esta skill en la misma sesión: un error de la API, una preferencia del usuario o una convención que funciona.
