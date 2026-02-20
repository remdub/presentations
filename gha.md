---
marp: true
theme: custom-light
paginate: true
footer: "GitHub Actions pour Python — Niveau Junior"
---

# Les Rudiments de GitHub Actions
## Automatisez vos projets Python 🐍

---

# Plan de la présentation

1. Qu'est-ce que GitHub Actions ?
2. L'intégration continue (CI)
3. Les concepts clés
4. Structure d'un Workflow
5. Construire un Workflow Python pas à pas
6. L'écosystème des Actions préconçues
7. Bonnes pratiques
8. Conclusion

---

# 1. Qu'est-ce que GitHub Actions ?

GitHub Actions est une plateforme d'**intégration continue et de déploiement continu (CI/CD)** directement intégrée à GitHub.

- **Automatisation** : Exécute des scripts automatiquement selon des événements.
- **Intégration** : Pas besoin d'outils externes (comme Jenkins ou Travis CI).
- **Gratuité** : Inclus dans les dépôts publics et privés (avec un quota généreux).

![w:400 center](https://images.unsplash.com/photo-1618401471353-b98afee0b2eb?auto=format&fit=crop&w=600&q=80)

---

# 2. Pourquoi faire de la CI/CD en Python ?

En tant que développeur, vous voulez être sûr que votre code fonctionne avant de le fusionner (*merge*).

- **Fini le "Ça marche sur ma machine !"**
- Exécution automatique de vos tests (`pytest`).
- Vérification automatique de la qualité du code (`black`, `flake8`).
- Gain de temps et réduction des erreurs humaines.

---
# 3. Les Concepts Clés (1/2)

<div class="col">
<div>

### Workflows
Un processus automatisé configurable composé d'un ou plusieurs *jobs*. Il est défini par un fichier YAML.

### Events (Événements)
Ce qui déclenche le workflow (ex: un `push`, une `pull_request`, ou une exécution manuelle `workflow_dispatch`).

</div>
<div>

![w:500](https://images.unsplash.com/photo-1555949963-aa79dcee981c?auto=format&fit=crop&w=600&q=80)

</div>
</div>

---
# 3. Les Concepts Clés (2/2)

<div class="col">
<div>

### Jobs
Un ensemble d'étapes (*steps*) exécutées sur le même serveur. Les jobs tournent en parallèle par défaut.

### Steps (Étapes)
Une tâche individuelle qui peut exécuter des commandes shell ou une *action*.

</div>
<div>

### Runners
Le serveur qui exécute vos workflows (ex: une machine virtuelle Ubuntu, Windows ou macOS fournie par GitHub).

### Actions
Des applications autonomes et réutilisables créées par la communauté pour accomplir des tâches complexes.

</div>
</div>

---

# 4. Structure d'un Workflow YAML

Les workflows se placent obligatoirement dans le dossier `.github/workflows/` de votre dépôt.

```yaml
name: Mon Premier Workflow

on: [push] # L'événement déclencheur

jobs:
  build: # Nom du job
    runs-on: ubuntu-latest # Le Runner
    
    steps: # Les étapes
      - name: Dire bonjour
        run: echo "Bonjour depuis GitHub Actions!"