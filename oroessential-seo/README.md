# SEO de oroessential.com

Proyecto para mejorar el posicionamiento en Google y el tráfico de la tienda Shopify **Oro Essential** (oroessential.com).

## Punto de partida (11/11/2026)

| Indicador | Valor |
|---|---|
| Visitas en los últimos 90 días | 119, todas directas (0 desde Google, 0 desde redes) |
| Pedidos en los últimos 90 días | 0 |
| Productos activos | 54 |
| Productos sin título/descripción SEO | 26 |
| Fotos de producto sin texto alternativo | 247 |
| Joyas sin colección | 24 (la colección «Joyería» se veía vacía) |
| Artículos de blog | 0 |
| Políticas publicadas | solo privacidad |
| Canal Google & YouTube (Google Shopping) | no instalado |

## Cambios aplicados en la tienda

Todos los cambios se hicieron en la tienda a través de la API de Shopify. Los productos activos, las colecciones y las fotos ya tienen sus metadatos SEO.

1. **SEO de productos**: título SEO (≤ 60 caracteres) y meta descripción (≤ 155) en los 26 productos que no tenían. En las 13 joyas que se venden en dorado y plateado, la descripción menciona las dos versiones. Detalle en [`productos-seo.csv`](productos-seo.csv).
2. **Colección Joyería**: se le añadieron las 24 joyas (collares, pulseras y anillos).
3. **Colecciones nuevas** (publicadas en la tienda online), con texto y enlaces internos entre ellas:
   - `/collections/collares` (10 productos)
   - `/collections/pulseras` (7)
   - `/collections/anillos` (7)
   - `/collections/regalos-para-mujer` (16, pensada para Navidad, Reyes, San Valentín…)
4. **SEO de colecciones**: título y meta descripción en Collares, Pulseras, Anillos, Regalos para Mujer, Joyería, Hogar y Electrónica. Se ampliaron los textos de Joyería, Hogar y Electrónica. Los textos y los originales (para poder volver atrás) están en [`colecciones.md`](colecciones.md).
5. **Hogar**: se añadieron la tira LED con sensor y el sofá chaiselongue infantil, que no estaban en ninguna colección.
6. **Texto alternativo**: 247 fotos que no lo tenían. Formato: `<nombre del producto>` para la foto principal y `<nombre> – vista N` para el resto.
7. **Blog «Noticias»**: 3 artículos creados como **borrador oculto**, con título y descripción SEO. Copia en [`blog/`](blog/):
   - *Labradorita: significado, origen y cómo llevarla en tus joyas*
   - *¿El baño de oro 18k se pone negro? Cómo cuidar tus joyas para que duren*
   - *Regalos para mujer por menos de 30 €: 10 ideas para esta Navidad*

## Lo que tienes que hacer tú (no se puede hacer por API)

Por orden de impacto:

- [ ] **Google Search Console**: añadir `oroessential.com` como propiedad, verificarla y enviar el sitemap `https://oroessential.com/sitemap.xml`. Sin esto Google tarda mucho más en descubrir la tienda.
- [ ] **Políticas** (Configuración → Políticas): crear las de *reembolso*, *envío*, *términos del servicio* e *información de contacto*. Añadir un **aviso legal** (obligatorio en España por la LSSI: titular, NIF y domicilio). Google Merchant Center las exige.
- [ ] **Google Shopping gratis**: instalar la app **Google & YouTube** y conectar Merchant Center. Los productos podrán salir gratis en la pestaña Shopping y en Google Imágenes.
- [ ] **Meta descripción de la página de inicio** (Tienda online → Preferencias). Propuesta:
  - Título: `Oro Essential | Joyería con Baño de Oro 18k y Plata 925`
  - Descripción: `Joyería de plata de ley 925 y baño de oro 18k, cosmética y lámparas de diseño fabricadas en España. Descubre regalos únicos en Oro Essential.`
- [ ] **Menú de navegación** (Tienda online → Navegación): añadir Collares, Pulseras, Anillos y Regalos para Mujer dentro de Joyería. Los enlaces del menú son los que más pesan para Google.
- [ ] **Revisar y publicar los 3 artículos** del blog (Tienda online → Artículos de blog). Conviene añadirles una imagen destacada.
- [ ] **Colección «Electrodomésticos»**: solo tiene un producto archivado, así que se ve vacía. Ocultarla o llenarla.
- [ ] **Tira LED con sensor**: su descripción contiene código CSS del proveedor (`@import url(...)`) que Google lee como texto. Limpiarla.

## Plan para las próximas semanas

1. **Enfoque (decisión pendiente del responsable)**: según `agent.md`, la tienda es de productos cotidianos de alta gama (hogar, cocina, electrónica y objetos de valor), con un filtro estricto (≥ 4,5/5 con ≥ 500 reseñas, marca reconocida, garantía de 2 años y CE). El catálogo actual es sobre todo joyería y belleza de Shopify Collective, y habrá que revisar qué productos cumplen ese filtro. Un catálogo muy mezclado hace que Google no sepa para qué búsquedas posicionar la tienda, así que conviene alinear catálogo, colecciones y contenido con el enfoque que se decida.
2. **Descripciones propias**: muchas fichas copian el texto del proveedor (Shopify Collective). Google suele priorizar al proveedor original, así que conviene reescribir con tus palabras al menos las 10 fichas más importantes.
3. **Blog**: 2 artículos al mes respondiendo a preguntas reales. Ideas en [`palabras-clave.md`](palabras-clave.md).
4. **Reseñas**: instalar una app de reseñas (Shopify Product Reviews, Judge.me…) para que salgan estrellas en Google y aumente la confianza.
5. **Redes**: conectar el canal de Facebook e Instagram de Shopify para etiquetar productos. Publicar en Pinterest, que funciona muy bien con joyería y decoración y lleva tráfico a la web.
6. **Medir**: revisar cada mes en Search Console las impresiones y los clics, y en Shopify (Análisis → Informes) las sesiones por origen.

> El SEO tarda normalmente entre 3 y 6 meses en notarse. Google Shopping, Pinterest e Instagram pueden traer visitas mucho antes.
