---
marp: true
theme: custom-light
paginate: true
footer: "Les rudiments de l'accessibilité web"
---

<!-- _class: lead center -->
<!-- _paginate: skip -->
<!-- _footer: "" -->

# L'Accessibilité Web
## Comprendre et appliquer les bases pour un web inclusif

---

![bg left:35% w:550](assets/mascotte-laptop.webp)

# Plan

1. Qu'est-ce que l'accessibilité web ?
2. Les enjeux et obligations
3. Les 4 principes fondamentaux (WCAG)
4. Pratique : Textes alternatifs
5. Pratique : Contrastes et couleurs
6. Pratique : Structure et Sémantique
7. Tester l'accessibilité
8. Conclusion

---

# Qu'est-ce que l'accessibilité web ?

![bg right:35% w:550](assets/mascotte-toleft.webp)

- **Définition** — Rendre les sites et applications web utilisables par tous, y compris les personnes en situation de handicap.
- **Types de handicaps** — Visuels, auditifs, moteurs, cognitifs.
- **Bénéfice universel** — Améliore l'expérience globale (ex: contrastes utiles en plein soleil, sous-titres dans les transports).

> "Le pouvoir du Web est dans son universalité. L'accès par tous, quel que soit le handicap, est un aspect essentiel." — Tim Berners-Lee

---

# Pourquoi est-ce important ?

![bg left:35% w:550](assets/mascotte-toright.webp)

- **Enjeu éthique** — Garantir l'inclusion et l'égalité des chances numériques pour tous les utilisateurs.
- **Enjeu légal** — Respect des obligations légales (RGAA en France, directives européennes).
- **Enjeu économique** — Ne pas se priver d'environ 15% de la population mondiale qui vit avec une forme de handicap.

> L'accessibilité n'est pas une option, c'est un standard de qualité.

---

<!-- _class: split -->

# Les 4 principes (Règles WCAG)

> ### Perceptible
>
> - L'information doit pouvoir être perçue par les sens (ex: alternatives textuelles aux images).

> ### Utilisable
>
> - L'interface doit être navigable facilement (ex: navigation complète au clavier possible).

> ### Compréhensible
>
> - Le contenu et le fonctionnement doivent être clairs, lisibles et prévisibles.

> ### Robuste
>
> - Le code doit être interprétable par diverses technologies d'assistance (lecteurs d'écran).

---

# Pratique : Le texte alternatif

![bg right:40%](https://picsum.photos/400/600?random=1)

- L'attribut `alt` est indispensable pour décrire l'image aux lecteurs d'écran.
- **Images informatives** — Décrire de manière concise ce que l'image apporte au contexte.
- **Images décoratives** — Utiliser un attribut vide `alt=""` pour qu'elles soient ignorées par la synthèse vocale.

```html
<img src="graphique-ventes.png" alt="Graphique montrant une hausse des ventes de 20% en 2023">
````

-----

# Pratique : Contrastes et Couleurs

  - **Contraste suffisant** — Le texte doit se détacher clairement de son arrière-plan.
  - Le ratio minimum recommandé est de 4.5:1 pour un texte de taille normale.
  - **Ne pas se fier qu'à la couleur** — Ne transmettez jamais une information uniquement par la couleur.
  - *Exemple* : un message d'erreur rouge doit aussi être accompagné d'une icône spécifique ou d'un texte explicite.

-----

# Pratique : Structure et Sémantique

  - **Titres hiérarchisés** — Utilisez les balises de `<h1>` à `<h6>` dans un ordre strictement logique, sans sauter de niveau.
  - La structure des titres sert de sommaire pour les utilisateurs de technologies d'assistance.
  - **Éléments sémantiques HTML5** — Préférez des balises comme `<button>` ou `<nav>` plutôt que des simples `<div>` cliquables.

> Une structure HTML sémantique et propre est la fondation même d'un site web accessible.

-----

# Comment tester son site ?

## Avez-vous déjà essayé de naviguer sans la souris ?

  - **Navigation au clavier** — Parcourez votre site en utilisant uniquement la touche `Tab` et la touche `Entrée`.
  - **Outils automatisés** — Utilisez des extensions comme Axe DevTools, Wave ou Lighthouse (permettent de détecter \~30% des erreurs).
  - **Lecteurs d'écran** — Faites des tests avec VoiceOver (Mac), NVDA ou JAWS (Windows).

-----

<!-- _class: lead center -->
<!-- _paginate: skip -->

# Merci \!

## L'accessibilité est l'affaire de tous.

### Des questions ?
