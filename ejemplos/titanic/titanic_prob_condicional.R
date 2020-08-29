rm(list = ls())

install.packages("titanic")

library(titanic)

datos <- titanic_train 

# Imprimo las primeras 7 filas de la tabla
head(datos, n = 7)

# Imprimo las ultimas 8 filas de la tabla
tail(datos, n = 8)

# Evaluo las columnas disponibles en la tabla
str(datos)

# Cuantas filas tengo?
nrow(datos)

# Cuantas columnas tengo?
ncol(datos)
length(datos)

# Cuanta gente se salvo en el data set de train?
# Nota: 0 significa que no y 1 significa que si.
table(datos$Survived)
# Cual es la proporcion de gente que se salvo?
prop.table(table(datos$Survived))

# Como es la composicion de la gente que se subio?
table(datos$Sex)
# Existen datos faltantes?
sum(is.na(datos$Sex))
# Y como es la proporcion de gente que se salvo vs. el sexo?
table(datos$Sex, datos$Survived)
prop.table(table(datos$Sex, datos$Survived))

# Como es la composicion de clases de tickets?
table(datos$Pclass)
prop.table(table(datos$Pclass))
# Y versus si sobreviven?
table(datos$Pclass, datos$Survived)
prop.table(table(datos$Pclass, datos$Survived))
# Existen datos faltantes?
sum(is.na(datos$Pclass))

# Edad. Miremos un poco...
table(datos$Age)
# No se ve muy bien verdad? Ajustemos de a bloques de a 10 años
datos$AgeDec <- as.integer(datos$Age / 10)
table(datos$AgeDec)
# Noten que no tenemos datos en varios
sum(is.na(datos$AgeDec))
# Y versus si sobreviven?
table(datos$AgeDec, datos$Survived)
prop.table(table(datos$AgeDec, datos$Survived))

# Donde embarcaron?
unique(datos$Embarked)
table(datos$Embarked)
prop.table(table(datos$Embarked))
# Hay relacion entre si embarcaron y si sobrevivieron?
table(datos$Embarked, datos$Survived)
prop.table(table(datos$Embarked, datos$Survived))
# Tenemos datos faltantes?
sum(is.na(datos$Embarked))

# Tablas de mas de dos propiedades
table(datos$AgeDec, datos$Sex, datos$Survived)

