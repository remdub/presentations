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
4. **Illustration** : Proposer des prompts d'image précis et pertinents à l'utilisateur, afin qu'il puisse les générer avec son outil favori (ex: Midjourney, DALL-E) et les intégrer dans le dossier `assets/`.

## Workflow

### 1. Phase d'Analyse (Impératif)
Avant toute génération, vous DEVEZ poser ces 5 questions à l'utilisateur :
1. **Sujet exact** : Quel est le titre ou le concept clé ?
2. **Public cible** : A qui s'adresse la présentation (ex: débutants, experts, clients) ?
3. **Durée prévue** : Quelle est la durée totale souhaitée (ex: 5 min, 20 min) ?
4. **Objectif / Appel à l'action** : Que doit retenir ou faire le public à la fin ?
5. **Ton souhaité** : Quel est le ton de la présentation (ex: sérieux, humoristique, institutionnel, dynamique) ?

**Conseil** : Proposez systématiquement un **framework narratif** adapté à l'objectif (ex: *Problème > Impact > Solution* pour convaincre, ou *Concept > Démonstration > Exercice* pour former).

### 2. Validation du Plan (Nouveau)
Avant de générer le code Markdown complet, vous DEVEZ générer un **sommaire détaillé** (titres et intention de chaque slide) et **attendre la validation explicite de l'utilisateur**. Ne commencez la rédaction que lorsque le plan est validé.

### 3. Conception
- **Auto-analyse du thème** : Avant de rédiger, vous DEVEZ lire les fichiers `theme.css` et `template.md` à la racine pour identifier les classes CSS personnalisées et la structure recommandée.
- **Densité et Espace** : Adaptez le contenu à la durée tout en respectant ces contraintes strictes :
  - **Ratio Slide/Minute** : Visez **environ 1 slide par minute** de présentation (ex: pour 15 min, générez ~15 slides).
  - **Maximum 5 points (bullet points)** par diapositive.
  - **Maximum 2 phrases** par point.
  - Si le contenu dépasse, scindez sur plusieurs diapositives.
  - En mode split (50/50), limitez-vous à **3 points**.
- **Interactivité** : Rythmez la présentation en insérant une **slide interactive** (Quizz, Débat, Exercice court) toutes les 10 minutes environ pour maintenir l'engagement.
- **Mascotte & Layouts** : Variez les mises en page en utilisant stratégiquement la mascotte et les exemples de `references/layouts.md`. Voici la table de correspondance recommandée pour la mascotte :

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

### 4. Standards Techniques
- **Langue** : Français.
- **Thème & Style** : Utilisez les classes CSS personnalisées identifiées dans `theme.css`.
- **Blocs de code** : Maximum **15 lignes** par bloc. Au-delà, réduisez la taille de police (ex: `<style scoped>code { font-size: 20px; }</style>`) ou scindez sur plusieurs slides.
- **Notes de l'orateur** : Générez systématiquement des notes détaillées : `<!-- Note : Votre texte ici -->`.
- **Illustration (Génération de prompts)** : Pour illustrer des concepts complexes, l'agent ne génère PAS d'images automatiquement. À la place, il fournit à l'utilisateur :
  - Un prompt détaillé pour chaque image nécessaire (ex: Midjourney, DALL-E, etc.).
  - Un nom de fichier recommandé (ex: `assets/illustration-concept.png`).
  - L'instruction explicite à l'utilisateur de sauvegarder ces images dans le dossier `assets/` avant de finaliser la présentation.
- **Accessibilité (A11y)** : Texte alternatif obligatoire : `![w:500](url "Description détaillée")`.
- **Syntaxes** : Respectez scrupuleusement les classes `lead`, `split`, etc.

### 5. Sauvegarde
- **Fichier** : Une fois le code Markdown généré, sauvegardez-le dans un fichier `.md` à la racine du dépôt via `write_file`.

## Références

Consultez [references/layouts.md](references/layouts.md) pour les extraits de code Markdown mis à jour avec notes et textes alternatifs.
