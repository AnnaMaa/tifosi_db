![MySQL Project](https://img.shields.io/badge/Database-MySQL-blue?style=flat&logo=mysql)


# TIFOSI - Base de données MySQL

Ce projet consiste à concevoir une base de données collaborative pour un restaurant italien de street-food : **Le Tifosi**.

## 🎯 Objectifs pédagogiques

- Créer une base MySQL avec tables, clés et contraintes
- Manipuler des scripts SQL (création, insertion, sauvegarde)
- Gérer un utilisateur administrateur
- Générer un backup de la base

## 🗃️ Contenu du projet

- `create_db.sql` → création des tables et de la base `tifosi`
- `insert_data.sql` → insertion des données de test (focaccias, ingrédients, boissons, marques)
- `backup_tifosi.sql` → sauvegarde complète de la base (structure + contenu)

## 🧪 Données utilisées

Les données sont issues de fichiers fournis (Excel) :
- focaccia.xlsx
- ingredient.xlsx
- marque.xlsx
- boisson.xlsx

## 🔒 Sécurité

- Un utilisateur MySQL `tifosi` avec tous les droits est créé :
  ```sql
  CREATE USER 'tifosi'@'localhost' IDENTIFIED BY 'tifosi123';
  GRANT ALL PRIVILEGES ON tifosi.* TO 'tifosi'@'localhost';
  FLUSH PRIVILEGES;
