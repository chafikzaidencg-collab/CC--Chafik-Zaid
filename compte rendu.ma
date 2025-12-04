# Customer Segmentation – Rapport Détaillé

## 1. Introduction
La segmentation client est un outil essentiel du marketing analytique visant à regrouper les clients selon des comportements similaires.  
L’objectif de ce projet est d’identifier différents profils clients afin d’optimiser les actions marketing, améliorer la fidélisation et augmenter la valeur générée.

Ce rapport présente l’analyse complète du dataset, le traitement des données, les méthodes de clustering utilisées et les résultats obtenus.

---

## 2. Préparation et Exploration des Données

### 2.1. Importation des librairies
Les librairies utilisées incluent :
- **Pandas** et **NumPy** pour la manipulation des données  
- **Matplotlib** et **Seaborn** pour la visualisation  
- **Scikit-Learn** pour les algorithmes de clustering  
- **SciPy** pour l’analyse hiérarchique  

---

### 2.2. Chargement du Dataset
Les données sont chargées dans un DataFrame.  
Les premières analyses incluent :
- Le type des colonnes  
- Le nombre d’observations  
- Le taux de valeurs manquantes  

---

### 2.3. Nettoyage des Données

#### a) Suppression des valeurs manquantes
Les lignes avec **CustomerID manquant** sont supprimées puisque cette variable est essentielle.

#### b) Suppression des doublons
Les entrées dupliquées sont supprimées afin de conserver des données propres.

---

### 2.4. Analyse des Variables
Les principales variables analysées sont basées sur le modèle **RFM** :
- **Recency**
- **Frequency**
- **Monetary**

Elles présentent une forte hétérogénéité, propice à une segmentation efficace.

---

## 3. Analyse Exploratoire des Données (EDA)

L’analyse exploratoire inclut :
- Des histogrammes de distribution  
- Des boxplots pour identifier des valeurs extrêmes  
- Une heatmap de corrélation pour comprendre les relations entre variables  

Les résultats montrent :
- Des montants dépensés très dispersés  
- Des comportements d’achat variés  
- L’existence probable de plusieurs groupes clients distincts  

---

## 4. Méthodes de Segmentation

### 4.1. K-Means

#### a) Normalisation
Les données sont standardisées via **StandardScaler**, car K-Means est sensible aux échelles.

#### b) Détermination du nombre optimal de clusters
Méthodes utilisées :
- **Elbow Method**
- **Silhouette Score**

Résultat : **4 clusters** est un choix optimal.

#### c) Application de K-Means
Le modèle est entraîné et chaque client reçoit une étiquette de cluster.  
Les centres des clusters sont analysés pour comprendre les comportements typiques.

---

### 4.2. Clustering Hiérarchique
Une seconde méthode est utilisée pour validation :
- Méthode de liaison : **Ward**
- Visualisation : **Dendrogramme**

Ce clustering confirme l’existence de **3 à 5 groupes naturels**.

---

## 5. Interprétation des Clusters

### Cluster A – Clients Premium
- Dépenses élevées  
- Fréquence importante  
- Cœur de cible à fidéliser

### Cluster B – Clients Réguliers
- Achats fréquents  
- Montants modérés  
- Potentiel d’upsell

### Cluster C – Clients Occasionnels
- Achats peu fréquents  
- Montants variables  
- Cibles pour campagnes promotionnelles

### Cluster D – Clients Faiblement Actifs
- Faible fréquence et dépense  
- Nécessitent une stratégie de réactivation

---

## 6. Visualisation des Résultats
Le notebook inclut :
- Des scatter plots de clustering  
- Des graphiques RFM  
- Des visualisations des centres de clusters  

Ces graphiques confirment une séparation claire des groupes.

---

## 7. Conclusion

Cette segmentation client a permis d’identifier des groupes distincts et exploitables commercialement.  
Les principaux points à retenir :

- Le nettoyage rigoureux des données est essentiel  
- K-Means avec 4 clusters donne une segmentation cohérente  
- Les clusters obtenus peuvent guider des stratégies marketing ciblées  
- Une analyse complémentaire pourrait inclure :  
  - Une segmentation RFM complète  
  - L’utilisation de DBSCAN ou GMM  
  - Une prédiction de la valeur future (CLV)

---

## 8. Recommandations
- Développer des offres adaptées aux **clients premium**  
- Proposer des programmes de fidélité aux **clients réguliers**  
- Lancer des campagnes ciblées pour les **occasionnels**  
- Réactiver ou exclure du ciblage les **clients inactifs**

---

## 9. Annexes (optionnel)
- Code complet du notebook  
- Graphiques détaillés  
- Pré-traitement avancé des données  

---

*Rapport généré automatiquement à partir de l’analyse du notebook `customer-segmentation.ipynb`.*


