# Lista de tareas

## Tareas realizadas

- [x] En las figuras 3.16 y 3.17, intenta profundizar un poco más en la interpretación de los resultados, indicando qué variables presentan patrones específicos para cada tipo de fallo y con cuánta antelación comienzan a manifestarse. También sería interesante comparar estos patrones con periodos de funcionamiento normal.
- [x] Justifica la elección de la ventana temporal de 96 horas y comprueba cómo afectan al análisis aquellos fallos para los que no dispones del histórico completo de las 96 horas anteriores.
- [x] En el apartado 3.2.3, revisa el número de fallos con mantenimiento asociado, ya que, según la tabla 3.12, serían 745 y no 746.
- [x] Revisa algunas inconsistencias entre la redacción y el código. Por ejemplo, en la explicación de la figura 3.16 mencionas 48 horas en lugar de 96, y en el notebook indicas una ventana de suavizado de 6 horas cuando en el código utilizas 4.

## Tareas pendientes

- [ ] En el análisis de la relación entre fallos y mantenimientos, veo que has corregido el criterio temporal. Sin embargo, en el código sigues realizando el cruce únicamente por identificador de máquina (machineID). Deberías comprobar también que el componente que ha fallado coincide con el componente sustituido.
- [ ] Me llama la atención que los 16 fallos sin mantenimiento asociado se produzcan exactamente en la misma fecha y hora (02/01/2015 a las 03:00). Intenta averiguar a qué puede deberse esta circunstancia antes de decidir cómo tratar estos registros.
- [ ] Incluye al final del apartado 3.2 una breve síntesis de las principales conclusiones del análisis exploratorio y de cómo estas se trasladarán a la fase de ingeniería de características.
