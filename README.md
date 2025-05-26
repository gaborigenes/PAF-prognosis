# PAF-prognosis
repositorio de trabajo especial de grado llamado "Estratificación del riesgo del inicio de un evento de fibrilación auricular paroxistica usando aprendizaje automático" Creado por Gabriel Quintero

# *Tabla de Contenidos
- [Resumen](#about_project)
- [Conjunto de datos](#about_repo)
- [Presentación](#presentacion)


## Resumen <a name="about_project"></a>

En este trabajo se utilizaron algunas herramientas del aprendizaje automático con la idea de discernir entre tres condiciones para un paciente: sano, enfermo pero lejano a un episodio de fibrilación auricular paroxı́stica (FAP) y enfermo cercano al evento, persiguiendo como objetivo, la estratificación del riesgo de sufrir el episodio de FAP mencionado. El estudio tomó como base la variación de frecuencia cardı́aca (VFC) tanto de segmentos de ECG de 30 minutos como de 5 minutos e inició con una etapa de preprocesamiento, en la cual se extrajeron los intervalos R-R, para posteriormente evaluar 12 ı́ndices de VFC en el dominio temporal, frecuencial y no lineal haciendo uso de métodos estadı́sticos, espectrales, gráficas de recurrencia y gráficas de Poincaré. Estos ı́ndices, organizados como vectores, luego fueron utilizados como entrada a los modelos de aprendizaje automático utilizados: el bosque aleatorio y el perceptrón multicapas (MLP).


## Conjunto de Datos <a name="about_project"></a>

La base de datos utilizada fue PAF prediction Challenge de physionet disponible en https://physionet.org/content/afpdb/1.0.0/ la cual consiste en un conjunto de aprendizaje y un conjunto de prueba los cuales tienen registros cuyos nombres inician con p y denotan a pacientes que están lejanos a un evento de FAP (numeros impares, por ejemplo p15 y pacientes que estan cercanos a un FAP (numeros pares, por ejemplo p16). Estos se utilizaron en conjunto a la base de datos Normal synus rhythm de physionet, disponible en https://physionet.org/content/nsrdb/1.0.0/ los cuales contienen 18 muestras ECG de termino largo de pacientes sin ninguna patología cardíaca registrada.


El estudio tomó como base la variación de frecuencia cardíaca (VFC) tanto de segmentos de ECG de 30 minutos como de 5 minutos e inició con una etapa de preprocesamiento, en la cual se extrajeron los intervalos R-R, para posteriormente evaluar 12 índices de VFC en el dominio temporal, frecuencial y no lineal haciendo uso de métodos estadísticos, espectrales, gráficas de recurrencia y gráficas de Poincaré. Estos índices, organizados como vectores, luego fueron utilizados como entrada a los modelos de aprendizaje automático utilizados: el bosque aleatorio y el perceptrón multicapas (MLP).  Los puntajes de exactitud, precisión, sensibilidad y puntaje F1 de los segmentos de 30 minutos fueron 94.12\%, 95.29\%, 94.12\% y 94.18\% respectivamente para el MLP y 76.47\%, 80.88\%, 77.65\%, para el bosque aleatorio. Por otro lado, para los segmentos de 5 minutos, los puntajes fueron 82.93\%, 83.56\%, 82.93\% y 82.53\% para el MLP y 75.61\%, 75.92\%, 75.66\% para el bosque aleatorio.

## Presentación <a name="presentacion"></a>

En el siguiente enlace se comparte la presentación del proyecto realizado https://www.canva.com/design/DAF61E476R0/kBd6poLV76_kSFZ82wtO6Q/view?utm_content=DAF61E476R0&utm_campaign=designshare&utm_medium=link2&utm_source=uniquelinks&utlId=had336b2d0a#18
