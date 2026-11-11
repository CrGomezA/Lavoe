# Memoria del proyecto

Este repositorio se usa como espacio de trabajo del **proyecto SEO y de marketing de la tienda Shopify oroessential.com**.

- **Ignora la web «Lavoe Arroz y Mar»** (`index.html`, `styles.css`): no la modifiques ni propongas cambios sobre ella.
- El estado actual del proyecto, las tareas pendientes y el plan están en `oroessential-seo/README.md`.
- El historial de trabajos por sesión está en `oroessential-seo/registro.md`. **Añade una entrada al terminar cada sesión.**
- Para trabajos de SEO en la tienda, sigue la skill `seo-shopify-oroessential` (`.claude/skills/seo-shopify-oroessential/SKILL.md`).

## Cómo trabajar con el usuario

- Responde siempre en **español**.
- Explica **paso a paso qué haces y dónde lo aplicas** (tienda o repositorio), con una tabla de estado cuando haya varios pasos. El usuario lo pide expresamente.
- Antes de un cambio grande en la tienda, explica qué vas a hacer. Shopify pide confirmación de cada mutación.
- No guardes datos personales (teléfono, email) en el repositorio.

## La tienda

- Shopify (plan Basic), mercado España, EUR. Conectada a través del servidor MCP de Shopify.
- La mayor parte del catálogo viene de **Shopify Collective** (AILANA JEWELRY, ÉMOLO®, Mystical Tienda, Iberic Deco, Kaimok Design, innovagizmo.com, Valquer®, BANBU, OH! beauty, Maymoo…).
- **Enfoque de marca:** joyería de mujer con baño de oro 18k y plata de ley 925. El resto de categorías (belleza, hogar, electrónica) son secundarias.
- Colecciones manuales: `joyeria`, `collares`, `pulseras`, `anillos`, `regalos-para-mujer`, `hogar`, `electronica`, `relojes`, `auriculares`, `cuidado-del-pelo`, `cuidado-de-la-piel`, `electrodomesticos` (se ve vacía).
- Blog: `noticias`.

## Limitaciones conocidas de las sesiones en la nube

- La red de la sesión bloquea `oroessential.com`: no se puede ver la web pública (velocidad, tema, indexación) salvo que el usuario permita ese dominio en la configuración de red del entorno.
- La meta descripción de la portada (`shop.description`) y el tema publicado no se pueden editar por API: indícale al usuario dónde hacerlo en el panel.
- Si el push a GitHub da error 403, el usuario tiene que reconectar GitHub (https://claude.ai/connect-github).
