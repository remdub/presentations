# Marp Layouts & Mascot Usage

## Standard Frontmatter
```yaml
---
marp: true
theme: custom-light
paginate: true
footer: "Nom de la leçon"
---
```

## Title Slide
```markdown
<!-- _class: lead center -->
<!-- _paginate: skip -->
<!-- _footer: "" -->

# Titre de la présentation
## Référentiel - Nom de la leçon

<!-- Note : Bienvenue à tous. Aujourd'hui nous allons aborder [Sujet]. L'objectif est de [Objectif]. -->
```

## Agenda / Plan
```markdown
![bg left:35% w:550](assets/mascotte-laptop.webp "Mascotte devant un ordinateur portable")
# Plan

1. Introduction
2. Concepts clés
3. Mise en pratique
4. Conclusion

<!-- Note : Voici le déroulement de notre session. Nous commencerons par poser les bases avant de passer à la pratique. -->
```

## Content with Mascot
### Mascot on Right (Pointing Left)
```markdown
# Concept Important
![bg right:35% w:550](assets/mascotte-toleft.webp "Mascotte pointant vers la gauche pour souligner le texte")

- Premier point clé.
- Deuxième point important.

<!-- Note : Ce point est crucial car il définit la base de notre architecture. -->
```

### Mascot on Left (Pointing Right)
```markdown
# Détails Techniques
![bg left:35% w:550](assets/mascotte-toright.webp "Mascotte pointant vers la droite vers les détails techniques")

- Analyse de la performance.
- Optimisation des ressources.

<!-- Note : Notez comment la mascotte dirige l'attention vers les points d'optimisation. -->
```

## Content without Mascot
### Standard Text List
```markdown
# Titre de la diapositive

- Premier point important.
- Deuxième point avec détail.
- Troisième point pour conclure.

<!-- Note : Explication détaillée des points abordés pour l'orateur. -->
```

### Centered Image
```markdown
# Titre avec image centrée

![w:500 center](url_de_l_image.webp "Texte alternatif descriptif de l'image")

- Explication ou légende sous l'image.

<!-- Note : L'image ci-dessus illustre le concept clé de cette section. -->
```

### Image Background (Left or Right)
```markdown
# Titre de la diapositive
![bg left:40%](url_de_l_image.webp "Texte alternatif descriptif")

- Le contenu s'affiche à droite.
- Modifiez `left` par `right` pour inverser.

<!-- Note : Ce type de mise en page permet d'équilibrer visuellement le texte et l'illustration. -->
```

## Advanced Markdown Layouts
### Blockquote / Citation
```markdown
# Citation inspirante

> "La programmation n'est pas une question de ce que vous savez ; c'est une question de ce que vous pouvez comprendre."
> — Chris Pine

<!-- Note : Utilisez cette slide pour marquer une pause ou inspirer le public. -->
```

### Data Table
```markdown
# Comparatif Technique

| Concept | Description | Statut |
| :--- | :--- | :--- |
| Variable | Stockage de données | ✅ OK |
| Boucle | Répétition de tâches | ⏳ En cours |

<!-- Note : Les tableaux sont parfaits pour synthétiser des données ou comparer des fonctionnalités. -->
```

### Centered Message (Impact)
```markdown
<!-- _class: center -->

# Message Percutant
### Une seule idée par slide pour un maximum d'impact.

<!-- Note : La classe center permet de focaliser l'attention sur un message court au milieu de l'écran. -->
```

### Adaptive Title (Fit Text)
```markdown
# <!-- fit --> TITRE TRÈS LARGE (FIT)

<!-- Note : La directive fit ajuste automatiquement la taille de la police pour remplir toute la largeur. -->
```

### Image Mosaic
```markdown
# Galerie de photos
![bg](img1.webp "Image 1")
![bg](img2.webp "Image 2")
![bg](img3.webp "Image 3")

<!-- Note : Déclarer plusieurs images de fond à la suite crée une mosaïque automatique gérée par Marp. -->
```

### Background with Filter
```markdown
# Texte sur fond complexe
![bg blur:5px brightness:0.4](img.webp "Fond filtré")

## Lisibilité maximale
Grâce au flou et à la luminosité réduite, le texte reste blanc et lisible.

<!-- Note : Idéal pour les slides de transition avec de belles photos tout en restant professionnel. -->
```

### Local Header/Footer Override
```markdown
<!-- _header: "Section Spécifique" -->
<!-- _footer: "© 2024 - Document Exclusif" -->

# Surcharge Locale
Cette diapositive possède ses propres zones hautes et basses.

<!-- Note : Utile pour indiquer un changement de contexte ou une mention légale spécifique. -->
```

### Typography Showcase
```markdown
# Styles et Couleurs
- **Important** (Accent principal)
- *Complémentaire* (Accent secondaire)
- `Technique` (Orange)
- [Action](https://url.com) (Lien stylisé)

<!-- Note : Montrez ici comment les différents styles Markdown exploitent la palette de couleurs du thème. -->
```

## Specialized Slides
### Question / Interrogation
```markdown
# Des questions ?
![bg right:35% w:550](assets/mascotte-interrogation.webp "Mascotte perplexe avec un point d'interrogation")

<!-- Note : C'est le moment d'échanger avec le public. -->
```

### Code Example
```markdown
# Exemple de code
```python
def hello_world():
    print("Bonjour !")
```
![bg right:35% w:550](assets/mascotte-example-toleft.webp "Mascotte montrant un exemple de code")

<!-- Note : Voici une implémentation simple. -->
```

## Layouts
### Multi-column Split
```markdown
<!-- _class: split -->
# Comparaison / Multi-colonnes

> ### Colonne 1
> - Détail A

> ### Colonne 2
> - Détail B

> ### Colonne 3
> - Détail C

<!-- Note : Cette vue permet de comparer plusieurs options en parallèle. -->
```

## Final Slide
```markdown
<!-- _class: lead center -->
<!-- _paginate: skip -->

![bg left](assets/mascotte-original.webp "Mascotte souriante pour la conclusion")

# Merci !
## À vous de jouer.

<!-- Note : Merci pour votre attention. -->
```
