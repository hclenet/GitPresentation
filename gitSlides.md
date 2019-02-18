<!-- $theme: gaia -->
<!-- $size: 16:9 -->

Initiation à Github
===


  
![center 50%](images/githublogo.png)


<br>
<p style='text-align:right; font-size:26px'>
  Présentation par <a href='http://www.karasiak.net'>Nicolas Karasiak</a> et Harold Clenet<br>
  Réalisé en markdown avec <a href='https://yhatt.github.io/marp/'>MARP</a>

</p>

---

# Git ?


---

# Github

## Créer un dépôt / ou cloner

:clipboard: **Cloner cette présentation** : 
https://github.com/lennepkade/GitPresentation 

:open_file_folder: Mettez-vous dans le repertoire de votre choix et : 
`git clone https://github.com/lennepkade/GitPresentation`

:open_file_folder: Cela créera un dossier nommé GitPresentation. Mais vous pouvez aussi choisir le nom du dossier :
`git clone https://github.com/lennepkade/GitPresentation SuperbePresentationGitDeNicolas`

---

<br>

## Maintenant que je sais cloner, je fais quoi ?

- Je regarde mon clonage, c'est pas tous les jours qu'on clone !

<br><br>
## Mais si je veux corriger une erreur ou mettre à jour, je fais comment ?

- Pas comme ça !

---

# :fork_and_knife:  Fourche en anglais ? Fork !

Un fork est une duplication sur votre compte Git d'un dépôt d'une personne tiers.

# :interrobang: Pourquoi faire ?

Pour mettre à jour, modifier, ajouter des éléments, bref **travailler en groupe** sans demander au créateur*! 

<font size='5'>*On peut ajouter manuellement des contributeurs à son Git, mais les *fork* permettent à gentilles personnes d'améliorer/corriger des erreurs et de nous tenir au courant.</font>

---

# Après le clonage, on fourche, puis on clone encore !

**Retourner sur le git** : 
https://github.com/lennepkade/GitPresentation

Mais cette-fois fait un fork :  ![20%](images/githubfork.png)

## Et après ? On reclone ! :repeat:

---

# Et maintenant qu'on a cloné, forké, cloné ? on refork ?
Quand même pas :wink:! 

- On peut ajouter une image au dossier images :open_file_folder: :camera: 
- On peut ajouter son nom au fichier README.md  
- On peut ajouter l'image au fichier README.md avec les balises : 
  - `![](images/MonImage.png)`
  -  ![30%](images/githubfork.png)

---

# J'ai fini ! Je fais comment pour mettre à jour ?

D'abord on met à jour **pour soi** :sunglasses: :
<span style="font-size:90%">:newspaper: Pour voir les mises à jour, on tape dans le dossier de son git (terminal) :  `git status`<br>
:heavy_plus_sign: Pour ajouter les modifications, soit on ajoute un à un les fichiers `git add monfichier.py`, soit on ajoute tout :  `git add --all`<br>
:memo: On explique ce qu'on a fait : `git commit -m 'jai ajouté une image de chat'`<br>
:arrow_upper_right: On envoie ! `git push origin master`*</span><span style="font-size:50%">
<i>origin</i> car c'est son propre dépôt, <i>master</i> car c'est la branche par défaut.</span>

--- 
<br>
<br>
<br>

# Plus pratique
Si on ajoute à chaque fois tous les fichiers. On peut faire en une seule ligne le `git add --all` et le `git commit -m 'mon message'`  : 

`git commit -a -m 'ADD : Tous mes fichiers'`

--- 

## Pour partager

<br>

- Je partage avec quiconque mes modifications,

<br>

- Je peux demander à Nicolas de mettre à jour son dépôt avec mes modifications : ![](images/githubpullrequest.png). Mais attention,  il peut y avoir des conflits :
  - Si plusieurs personnes modifient un fichier au même endroit
  - Si ma version est en retard sur celle du créateur

---

# Conclusion

**Ce tutorial est conçu et partagé sur Github.**

Mais le protocole git est universel :

![center 40%](images/framasoft_aime_gitlab.png)

<br>

Il vaut surement mieux créer un git sur [Framagit](Framagit.org) :thumbsup: !


---

# Quelques liens potientiellement utiles

[Un petit guide pratique en français](http://rogerdudler.github.io/git-guide/index.fr.html) 
[Git book](https://git-scm.com/book/en/v2)









