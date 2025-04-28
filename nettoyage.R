# Charger les packages nécessaires
library(DMwR2)    # Pour knnImputation
library(caret)
library(readxl)# Pour la normalisation

#  Charger les données
df <- read_excel("niv_vie22.xlsx")  # Remplace par ton fichier
#  Vérifier les valeurs manquantes
print(colSums(is.na(df)))  # Voir combien de valeurs manquantes par colonne

# Standardiser uniquement les colonnes numériques
num_cols <- sapply(df, is.numeric)  # Sélectionner les colonnes numériques
df_scaled <- df  # Copier le dataframe original

# Appliquer la standardisation : (X - mean) / sd
df_scaled[num_cols] <- scale(df[num_cols])
df_scaled

#  Appliquer l’imputation KNN (avec k=5)
df_imputed <- knnImputation(df_scaled[,-1], k = 5)

#  Désinverser la standardisation (revenir aux valeurs originales)
for (col in names(df)[num_cols]) {
  df_imputed[[col]] <- df_imputed[[col]] * sd(df[[col]], na.rm = TRUE) + mean(df[[col]], na.rm = TRUE)
}

#  Vérifier que toutes les valeurs manquantes ont été imputées
print(colSums(is.na(df_imputed)))  # Normalement tout est à 0

#  Sauvegarder le fichier nettoyé
write.csv2(df_imputed, "niv_vie_k.csv", row.names = FALSE)
