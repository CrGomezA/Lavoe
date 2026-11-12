# Memoria del proyecto

> **ANTES DE NADA: lee el `README.md` de la rama `main`.** Son las instrucciones del agente (el responsable también lo llama «agent.md»): reglas de oro, el negocio, los criterios de selección de productos, la seguridad en Shopify, el estilo de los textos, el catálogo y los precios. Revísalo al empezar **cada** sesión, antes de cualquier tarea. Si algo de este archivo lo contradice, manda el `README.md`.
>
> **`README.md` está BLOQUEADO en solo lectura** por orden del responsable, hasta que él diga lo contrario. No lo modifiques, renombres, muevas ni borres. Si crees que necesita un cambio, propónselo en el chat. El bloqueo lo aplican una regla `deny` y el hook `.claude/hooks/proteger-readme.sh` (configurados en `.claude/settings.json`).

Este repositorio se usa como espacio de trabajo de la **gestión de la tienda Shopify oroessential.com** (SEO, catálogo, informes).

- **Ignora la web «Lavoe Arroz y Mar»** (`index.html`, `styles.css`): no la modifiques ni propongas cambios sobre ella.
- El estado actual del proyecto, las tareas pendientes y el plan están en `oroessential-seo/README.md`.
- El historial de trabajos por sesión está en `oroessential-seo/registro.md`. **Añade una entrada al terminar cada sesión.**
- Para trabajos de SEO en la tienda, sigue la skill `seo-shopify-oroessential` (`.claude/skills/seo-shopify-oroessential/SKILL.md`).

## Dinero: PROHIBIDO sin orden expresa del responsable

Orden del responsable (12/11/2026), por encima de cualquier otra tarea:
- **No pagar publicidad**: nada de Google Ads, Meta Ads, campañas de pago en Google Shopping, Pinterest o Instagram, ni ninguna promoción de pago, salvo que él lo ordene.
- **No hacer ninguna gestión de pagos o compras** sin su consentimiento: apps o suscripciones de pago, planes, compras, pedidos, pagos, reembolsos, tarjetas regalo, descuentos ni cambios de precios o costes.
- Si una tarea puede costar dinero (también un periodo de prueba que se cobra después), **para, explica qué es y cuánto cuesta, y espera su «sí»**.
- Cuando recomiendes una herramienta, indica siempre si es **gratuita o de pago**. Por defecto, propón solo opciones gratuitas.
- Puedes **consultar** pedidos, ventas y precios (solo lectura) para hacer informes.

## Cómo trabajar con el usuario

- Responde siempre en **español**.
- **Termina SIEMPRE con un resumen** de todo lo hecho: qué has hecho, dónde (tienda, repositorio o ninguno), qué ha quedado pendiente y qué decisiones necesitas del responsable. Hazlo en cada respuesta en la que hayas trabajado, no solo al final de la sesión. Es una orden expresa del responsable.
- Explica **paso a paso qué haces y dónde lo aplicas** (tienda o repositorio), con una tabla de estado cuando haya varios pasos. El usuario lo pide expresamente.
- Antes de un cambio grande en la tienda, explica qué vas a hacer. Shopify pide confirmación de cada mutación.
- No guardes datos personales (teléfono, email) en el repositorio.

## La tienda

- Shopify (plan Basic), mercado España, EUR. Conectada a través del servidor MCP de Shopify.
- La mayor parte del catálogo viene de **Shopify Collective** (AILANA JEWELRY, ÉMOLO®, Mystical Tienda, Iberic Deco, Kaimok Design, innovagizmo.com, Valquer®, BANBU, OH! beauty, Maymoo…).
- **Tipo de tienda** (según `agent.md`): productos cotidianos de alta gama (hogar, cocina, electrónica y objetos de valor de uso común), solo de calidad contrastada y bien valorados. En noviembre de 2026 el catálogo real es sobre todo joyería y belleza. Cualquier cambio de enfoque lo decide el responsable: tú propones.
- Colecciones manuales: `joyeria`, `collares`, `pulseras`, `anillos`, `regalos-para-mujer`, `hogar`, `electronica`, `relojes`, `auriculares`, `cuidado-del-pelo`, `cuidado-de-la-piel`, `electrodomesticos` (se ve vacía).
- **No crees más colecciones** hasta que haya suficientes productos que cumplan los criterios para dar un servicio de calidad (orden del responsable, 11/11/2026).
- Blog: `noticias`.

## Limitaciones conocidas de las sesiones en la nube

- La red de la sesión bloquea `oroessential.com`: no se puede ver la web pública (velocidad, tema, indexación) salvo que el usuario permita ese dominio en la configuración de red del entorno.
- La meta descripción de la portada (`shop.description`) y el tema publicado no se pueden editar por API: indícale al usuario dónde hacerlo en el panel.
- Si el push a GitHub da error 403, el usuario tiene que reconectar GitHub (https://claude.ai/connect-github).
