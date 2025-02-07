# FIFO_memory
Ce projet implémente une mémoire FIFO (First-In-First-Out) en Verilog. Une FIFO est une structure de données utilisée pour stocker temporairement des données dans un ordre spécifique : le premier élément entré est le premier élément sorti. Ce type de mémoire est couramment utilisé dans les systèmes embarqués, les FPGA et les circuits numériques pour gérer des flux de données.

---

## **Objectif du projet**

L'objectif de ce projet est de concevoir et d'implémenter une mémoire FIFO en Verilog avec les fonctionnalités suivantes :
1. **Stockage de données** : La FIFO peut stocker jusqu'à 16 éléments de 8 bits chacun.
2. **Gestion des opérations** : Les opérations d'écriture et de lecture sont contrôlées par des signaux spécifiques.
3. **Détection des états** : La FIFO détecte si elle est pleine, vide, ou si un seuil spécifique est atteint.
4. **Protection contre les erreurs** : La FIFO détecte les débordements (écriture lorsque la FIFO est pleine) et les sous-débordements (lecture lorsque la FIFO est vide).

---

## **Architecture du projet**

Le projet est divisé en plusieurs modules Verilog, chacun ayant une fonction spécifique :

### **1. Module principal : fifo_mem**
Ce module est le point d'entrée de la FIFO. Il instancie et connecte les sous-modules suivants :
- **write_pointer** : Gère le pointeur d'écriture.
- **read_pointer** : Gère le pointeur de lecture.
- **memory_array** : Implémente la mémoire interne de la FIFO.
- **memory_status** : Génère les signaux de statut (plein, vide, seuil, débordement, sous-débordement).

![image](https://github.com/user-attachments/assets/e71c50c5-3063-4ef9-a95a-4970299b9320)


### **2. Sous-module : write_pointer**
Ce module gère le pointeur d'écriture (**wptr**). Il est mis à jour à chaque opération d'écriture et vérifie si la FIFO est pleine.

![image](https://github.com/user-attachments/assets/e86e6bb5-7df3-4c3c-afda-0feca6e59b6e)


### **3. Sous-module : read_pointer**
Ce module gère le pointeur de lecture (**rptr**). Il est mis à jour à chaque opération de lecture et vérifie si la FIFO est vide.

![image](https://github.com/user-attachments/assets/8da81b92-4ea6-4ec1-9b95-1d704b4c60c4)


### **4. Sous-module : memory_array**
Ce module implémente la mémoire interne de la FIFO. Il stocke les données et permet de lire/écrire des éléments en fonction des pointeurs d'écriture et de lecture.

![image](https://github.com/user-attachments/assets/cf2c5474-9b70-4c9f-bfbd-30fe72a3995a)


### **5. Sous-module : memory_status**

![image](https://github.com/user-attachments/assets/7139a915-8e42-478a-8353-d1836f97ca80)


Ce module génère les signaux de statut de la FIFO :
- **fifo_full** : Actif lorsque la FIFO est pleine.
- **fifo_empty** : Actif lorsque la FIFO est vide.
- **fifo_threshold** : Actif lorsque le nombre d'éléments dans la FIFO atteint un seuil spécifique.
- **fifo_overflow** : Actif en cas de tentative d'écriture lorsque la FIFO est pleine.
- **fifo_underflow** : Actif en cas de tentative de lecture lorsque la FIFO est vide.

---

## **Fonctionnement de la FIFO**

### **1. Écriture de données**
- Lorsque le signal **wr** est actif, la donnée **`data_in`** est écrite dans la mémoire à la position indiquée par le pointeur d'écriture (**wptr**).
- Le pointeur d'écriture est ensuite incrémenté.
- Si la FIFO est pleine et on écrite dans la mémoire, le signal **fifo_overflow** est activé.

### **2. Lecture de données**
- Lorsque le signal **rd** est actif, la donnée est lue à la position indiquée par le pointeur de lecture (**rptr**).
- Le pointeur de lecture est ensuite incrémenté.
- Si la FIFO est vide et on veut lire de la mémoire, le signal **fifo_underflow** est activé.

### **3. Gestion des états**
- **FIFO pleine** : Lorsque les pointeurs d'écriture et de lecture sont égaux et que le bit de poids fort est différent.
- **FIFO vide** : Lorsque les pointeurs d'écriture et de lecture sont égaux et que le bit de poids fort est identique.
- **Seuil** : Lorsque le nombre d'éléments dans la FIFO dépasse un certain seuil (par exemple, 8 éléments).

---

## **Signaux du module FIFO**

### **Entrées :**
- **clk** : Signal d'horloge.
- **rst_n** : Signal de reset (actif bas).
- **wr** : Signal d'écriture.
- **rd** : Signal de lecture.
- **data_in** : Donnée d'entrée (8 bits).

### **Sorties :**
- **data_out** : Donnée de sortie (8 bits).
- **fifo_full** : FIFO pleine.
- **fifo_empty** : FIFO vide.
- **fifo_threshold** : Seuil atteint.
- **fifo_overflow** : Débordement.
- **fifo_underflow** : Sous-débordement.

---

### **code Verilog de module principal : fifo_mem**
```verilog
module fifo_mem( 
  input wr, rd, clk, rst_n,  
  input[7:0] data_in,  
  output[7:0] data_out,  
  output reg fifo_full, fifo_empty, fifo_threshold, fifo_overflow, fifo_underflow);  
  
  wire[4:0] wptr,rptr;  
  wire fifo_we,fifo_rd;
  wire fifo_full_wire, fifo_empty_wire, fifo_threshold_wire, fifo_overflow_wire, fifo_underflow_wire;   
  
  //reg fifo_full_reg, fifo_empty_reg, fifo_threshold_reg, fifo_overflow_reg, fifo_underflow_reg; 
  
  write_pointer w_inst (.clk(clk), .rst_n(rst_n), .wr(wr), .fifo_full_wire(fifo_full_wire), .wptr(wptr), .fifo_we(fifo_we));  
  read_pointer  r_inst (.clk(clk), .rst_n(rst_n), .rd(rd), .fifo_empty_wire(fifo_empty_wire), .rptr(rptr), .fifo_rd(fifo_rd)); 
  memory_array  m_inst (.clk(clk), .rst_n(rst_n), .fifo_we(fifo_we), .wptr(wptr), .rptr(rptr), .data_in(data_in), .data_out(data_out));
  memory_status s_inst (.clk(clk), .rst_n(rst_n), .wr(wr), .rd(rd), .fifo_we(fifo_we), .fifo_rd(fifo_rd), .wptr(wptr), .rptr(rptr), .fifo_full_wire(fifo_full_wire), .fifo_empty_wire(fifo_empty_wire), .fifo_threshold_wire(fifo_threshold_wire), .fifo_overflow_wire(fifo_overflow_wire), .fifo_underflow_wire(fifo_underflow_wire));
  
  always @(*)
  begin
  fifo_full <= fifo_full_wire;
  fifo_empty <= fifo_empty_wire;
  fifo_threshold <= fifo_threshold_wire;
  fifo_overflow <= fifo_overflow_wire;
  fifo_underflow <= fifo_underflow_wire;
  end
  
endmodule
```

---

## **Simulation et test**

Un testbench est fourni pour simuler et tester le module FIFO. Il vérifie les fonctionnalités suivantes :
1. Écriture et lecture de données.
2. Détection des états pleins et vides.
3. Gestion des débordements et sous-débordements.

![image](https://github.com/user-attachments/assets/88f36fdf-1536-4ecc-9b87-5773c598066b)


---

## **Conclusion**

Ce projet est une implémentation complète d'une mémoire FIFO en Verilog. Il peut être utilisé comme base pour des conceptions plus complexes ou intégré dans des systèmes FPGA. Si vous avez des questions ou des suggestions, n'hésitez pas à contribuer ou à ouvrir une issue sur GitHub.
