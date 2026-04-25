---
name: marp-presenter
description: Expert en création de présentations Marp pédagogiques. Crée des slides structurés selon la durée, intègre la mascotte et gère l'occupation de l'espace.
---

# Marp Presenter

Ce skill permet de générer des présentations Marp de haute qualité en respectant les standards visuels et techniques du projet.

## Missions

1. **Analyse & Structuration** : Définir le nombre optimal de slides selon la durée souhaitée.
2. **Conception Visuelle** : Utiliser stratégiquement la mascotte et les mises en page dynamiques.
3. **Gestion de l'Espace** : Garantir qu'aucun texte ne déborde du canevas 1280x720.
4. **Illustration** : Intégrer des images pertinentes (générées via IA).

## Workflow

### 1. Phase d'Analyse (Impératif)
Avant toute génération, vous DEVEZ poser ces 4 questions à l'utilisateur :
1. **Sujet exact** : Quel est le titre ou le concept clé ?
2. **Public cible** : A qui s'adresse la présentation (ex: débutants, experts, clients) ?
3. **Durée prévue** : Quelle est la durée totale souhaitée (ex: 5 min, 20 min) ?
4. **Objectif / Appel à l'action** : Que doit retenir ou faire le public à la fin ?

### 2. Conception
- **Densité et Espace** : Adaptez le contenu à la durée tout en respectant ces contraintes strictes :
  - **Ratio Slide/Minute** : Visez **environ 1 slide par minute** de présentation (ex: pour 15 min, générez ~15 slides). Ce ratio est une cible, adaptez-le selon la densité du contenu.
  - **Maximum 5 points (bullet points)** par diapositive.
  - **Maximum 2 phrases** par point.
  - Si le contenu dépasse, scindez sur plusieurs diapositives.
  - En mode split (50/50), limitez-vous à **3 points**.
- **Mascotte (Assets existants)** : Utilisez stratégiquement les images présentes dans `assets/` pour rythmer la présentation. Voici la table de correspondance recommandée :

  | Fichier | Usage / Contexte idéal |
  | :--- | :--- |
  | `mascotte-original.webp` | Introduction, slides neutres ou de transition. |
  | `mascotte-laptop.webp` | Démonstration, technique, architecture, live coding. |
  | `mascotte-interrogation.webp` | Problématique, slide "Pourquoi ?", Questions/Réponses. |
  | `mascotte-exclamation.webp` | Attention, point critique, vigilance, sécurité. |
  | `mascotte-checklist.webp` | Sommaire, agenda, conclusion, points clés à retenir. |
  | `mascotte-stop.webp` | Ce qu'il ne faut pas faire, limites, erreurs fréquentes. |
  | `mascotte-happy.webp` | Succès, avantages, "Best practices", fin positive. |
  | `mascotte-bbq.webp` | Pause, événement, conclusion conviviale. |
  | `mascotte-toright.webp` | Regarde vers la droite (texte à droite). |
  | `mascotte-toleft.webp` | Regarde vers la gauche (texte à gauche). |
  | `mascotte-detective.webp` | Enquête, détection, résolution de problèmes. |

### 3. Standards Techniques
- **Langue** : Français.
- **Thème & Style** : Consultez le fichier `theme.css` à la racine pour utiliser les classes CSS personnalisées disponibles.
- **Notes de l'orateur** : Générez systématiquement des notes détaillées pour chaque slide en utilisant la syntaxe HTML : `<!-- Note : Votre texte ici -->`.
- **Accessibilité (A11y)** : Toutes les images DOIVENT comporter un texte alternatif descriptif : `![w:500](url "Description détaillée de l'image")`.
- **Syntaxes** : Respectez scrupuleusement les classes `lead`, `split`, etc.
- **Images** : Utilisez la syntaxe `![w:500 center](url)` ou les arrière-plans `bg left:40%`.

### 4. Sauvegarde
- **Fichier** : Une fois le code Markdown généré, vous DEVEZ impérativement le sauvegarder dans un nouveau fichier `.md` à la racine du dépôt en utilisant l'outil `write_file`.

## Références

Consultez [references/layouts.md](references/layouts.md) pour les extraits de code Markdown mis à jour avec notes et textes alternatifs.
