# Étape 1 : Utiliser une image de base Node.js
FROM node:16

# Étape 2 : Définir le répertoire de travail
WORKDIR /app

# Étape 3 : Copier les fichiers nécessaires pour installer les dépendances
COPY package*.json ./

# Étape 4 : Installer les dépendances
RUN npm install

# Étape 5 : Copier le reste des fichiers de l'application
COPY . .

# Étape 6 : Exposer le port sur lequel l'application s'exécute
EXPOSE 3000

# Étape 7 : Démarrer l'application
CMD ["npm", "start"]
