; Arquivo: LCDnomeGrupo.nasm
; Curso: Elementos de Sistemas
; Criado por: Rafael Corsi
; Data: 28/3/2018
;
; Escreva no LCD o nome do grupo

   leaw $0, %A
  movw %A, %S
  notw %S


leaw $16405, %A
 movw %S, (%A)
leaw $16406, %A
 movw %S, (%A)
leaw $16407, %A
 movw %S, (%A)
leaw $16408, %A
 movw %S, (%A)
leaw $16410, %A
 movw %S, (%A)
leaw $16411, %A
 movw %S, (%A)
leaw $16412, %A
 movw %S, (%A)
leaw $16413, %A
 movw %S, (%A)
leaw $16415, %A
 movw %S, (%A)
leaw $16416, %A
 movw %S, (%A)
leaw $16417, %A
 movw %S, (%A)
leaw $16418, %A
 movw %S, (%A)
leaw $16420, %A
 movw %S, (%A)
leaw $16421, %A
 movw %S, (%A)
leaw $16422, %A
 movw %S, (%A)
leaw $16423, %A
 movw %S, (%A)
leaw $16425, %A
 movw %S, (%A)
leaw $16426, %A
 movw %S, (%A)
leaw $16427, %A
 movw %S, (%A)
leaw $16428, %A
 movw %S, (%A)
leaw $16430, %A
 movw %S, (%A)
leaw $16431, %A
 movw %S, (%A)
leaw $16432, %A
 movw %S, (%A)
leaw $16433, %A
 movw %S, (%A)
leaw $16435, %A
 movw %S, (%A)
leaw $16436, %A
 movw %S, (%A)
leaw $16437, %A
 movw %S, (%A)
leaw $16438, %A
 movw %S, (%A)
leaw $16440, %A
 movw %S, (%A)
leaw $16441, %A
 movw %S, (%A)
leaw $16442, %A
 movw %S, (%A)
leaw $16443, %A
 movw %S, (%A)
leaw $16445, %A
 movw %S, (%A)
leaw $16448, %A
 movw %S, (%A)
leaw $16450, %A
 movw %S, (%A)
leaw $16453, %A
 movw %S, (%A)
leaw $16455, %A
 movw %S, (%A)
leaw $16460, %A
 movw %S, (%A)
leaw $16463, %A
 movw %S, (%A)
leaw $16465, %A
 movw %S, (%A)
leaw $16468, %A
 movw %S, (%A)
leaw $16470, %A
 movw %S, (%A)
leaw $16473, %A
 movw %S, (%A)
leaw $16475, %A
 movw %S, (%A)
leaw $16480, %A
 movw %S, (%A)
leaw $16483, %A
 movw %S, (%A)
leaw $16485, %A
 movw %S, (%A)
leaw $16488, %A
 movw %S, (%A)
leaw $16490, %A
 movw %S, (%A)
leaw $16493, %A
 movw %S, (%A)
leaw $16495, %A
 movw %S, (%A)
leaw $16500, %A
 movw %S, (%A)
leaw $16503, %A
 movw %S, (%A)
leaw $16505, %A
 movw %S, (%A)
leaw $16508, %A
 movw %S, (%A)
leaw $16510, %A
 movw %S, (%A)
leaw $16513, %A
 movw %S, (%A)
leaw $16515, %A
 movw %S, (%A)
leaw $16520, %A
 movw %S, (%A)
leaw $16523, %A
 movw %S, (%A)
leaw $16525, %A
 movw %S, (%A)
leaw $16526, %A
 movw %S, (%A)
leaw $16527, %A
 movw %S, (%A)
leaw $16528, %A
 movw %S, (%A)
leaw $16530, %A
 movw %S, (%A)
leaw $16531, %A
 movw %S, (%A)
leaw $16532, %A
 movw %S, (%A)
leaw $16533, %A
 movw %S, (%A)
leaw $16535, %A
 movw %S, (%A)
leaw $16536, %A
 movw %S, (%A)
leaw $16537, %A
 movw %S, (%A)
leaw $16538, %A
 movw %S, (%A)
leaw $16540, %A
 movw %S, (%A)
leaw $16541, %A
 movw %S, (%A)
leaw $16542, %A
 movw %S, (%A)
leaw $16543, %A
 movw %S, (%A)
leaw $16545, %A
 movw %S, (%A)
leaw $16546, %A
 movw %S, (%A)
leaw $16547, %A
 movw %S, (%A)
leaw $16548, %A
 movw %S, (%A)
leaw $16550, %A
 movw %S, (%A)
leaw $16551, %A
 movw %S, (%A)
leaw $16552, %A
 movw %S, (%A)
leaw $16553, %A
 movw %S, (%A)
leaw $16555, %A
 movw %S, (%A)
leaw $16556, %A
 movw %S, (%A)
leaw $16557, %A
 movw %S, (%A)
leaw $16558, %A
 movw %S, (%A)
leaw $16560, %A
 movw %S, (%A)
leaw $16561, %A
 movw %S, (%A)
leaw $16562, %A
 movw %S, (%A)
leaw $16563, %A
 movw %S, (%A)
leaw $16565, %A
 movw %S, (%A)
leaw $16566, %A
 movw %S, (%A)
leaw $16567, %A
 movw %S, (%A)
leaw $16568, %A
 movw %S, (%A)
leaw $16570, %A
 movw %S, (%A)
leaw $16571, %A
 movw %S, (%A)
leaw $16572, %A
 movw %S, (%A)
leaw $16573, %A
 movw %S, (%A)
leaw $16575, %A
 movw %S, (%A)
leaw $16576, %A
 movw %S, (%A)
leaw $16577, %A
 movw %S, (%A)
leaw $16578, %A
 movw %S, (%A)
leaw $16580, %A
 movw %S, (%A)
leaw $16581, %A
 movw %S, (%A)
leaw $16582, %A
 movw %S, (%A)
leaw $16583, %A
 movw %S, (%A)
leaw $16585, %A
 movw %S, (%A)
leaw $16586, %A
 movw %S, (%A)
leaw $16587, %A
 movw %S, (%A)
leaw $16588, %A
 movw %S, (%A)
leaw $16590, %A
 movw %S, (%A)
leaw $16591, %A
 movw %S, (%A)
leaw $16592, %A
 movw %S, (%A)
leaw $16593, %A
 movw %S, (%A)
leaw $16595, %A
 movw %S, (%A)
leaw $16596, %A
 movw %S, (%A)
leaw $16597, %A
 movw %S, (%A)
leaw $16598, %A
 movw %S, (%A)
leaw $16600, %A
 movw %S, (%A)
leaw $16601, %A
 movw %S, (%A)
leaw $16602, %A
 movw %S, (%A)
leaw $16603, %A
 movw %S, (%A)
leaw $16605, %A
 movw %S, (%A)
leaw $16608, %A
 movw %S, (%A)
leaw $16610, %A
 movw %S, (%A)
leaw $16615, %A
 movw %S, (%A)
leaw $16620, %A
 movw %S, (%A)
leaw $16621, %A
 movw %S, (%A)
leaw $16625, %A
 movw %S, (%A)
leaw $16628, %A
 movw %S, (%A)
leaw $16630, %A
 movw %S, (%A)
leaw $16635, %A
 movw %S, (%A)
leaw $16640, %A
 movw %S, (%A)
leaw $16641, %A
 movw %S, (%A)
leaw $16645, %A
 movw %S, (%A)
leaw $16648, %A
 movw %S, (%A)
leaw $16650, %A
 movw %S, (%A)
leaw $16655, %A
 movw %S, (%A)
leaw $16660, %A
 movw %S, (%A)
leaw $16661, %A
 movw %S, (%A)
leaw $16662, %A
 movw %S, (%A)
leaw $16665, %A
 movw %S, (%A)
leaw $16668, %A
 movw %S, (%A)
leaw $16670, %A
 movw %S, (%A)
leaw $16675, %A
 movw %S, (%A)
leaw $16680, %A
 movw %S, (%A)
leaw $16682, %A
 movw %S, (%A)
leaw $16685, %A
 movw %S, (%A)
leaw $16688, %A
 movw %S, (%A)
leaw $16690, %A
 movw %S, (%A)
leaw $16695, %A
 movw %S, (%A)
leaw $16696, %A
 movw %S, (%A)
leaw $16697, %A
 movw %S, (%A)
leaw $16698, %A
 movw %S, (%A)
leaw $16700, %A
 movw %S, (%A)
leaw $16702, %A
 movw %S, (%A)
leaw $16703, %A
 movw %S, (%A)
leaw $16705, %A
 movw %S, (%A)
leaw $16708, %A
 movw %S, (%A)
leaw $16710, %A
 movw %S, (%A)
leaw $16715, %A
 movw %S, (%A)
leaw $16716, %A
 movw %S, (%A)
leaw $16717, %A
 movw %S, (%A)
leaw $16718, %A
 movw %S, (%A)
leaw $16720, %A
 movw %S, (%A)
leaw $16723, %A
 movw %S, (%A)
leaw $16805, %A
 movw %S, (%A)
leaw $16806, %A
 movw %S, (%A)
leaw $16807, %A
 movw %S, (%A)
leaw $16808, %A
 movw %S, (%A)
leaw $16810, %A
 movw %S, (%A)
leaw $16813, %A
 movw %S, (%A)
leaw $16815, %A
 movw %S, (%A)
leaw $16816, %A
 movw %S, (%A)
leaw $16817, %A
 movw %S, (%A)
leaw $16818, %A
 movw %S, (%A)
leaw $16820, %A
 movw %S, (%A)
leaw $16821, %A
 movw %S, (%A)
leaw $16822, %A
 movw %S, (%A)
leaw $16823, %A
 movw %S, (%A)
leaw $16825, %A
 movw %S, (%A)
leaw $16826, %A
 movw %S, (%A)
leaw $16827, %A
 movw %S, (%A)
leaw $16828, %A
 movw %S, (%A)
leaw $16830, %A
 movw %S, (%A)
leaw $16833, %A
 movw %S, (%A)
leaw $16835, %A
 movw %S, (%A)
leaw $16836, %A
 movw %S, (%A)
leaw $16837, %A
 movw %S, (%A)
leaw $16838, %A
 movw %S, (%A)
leaw $16840, %A
 movw %S, (%A)
leaw $16841, %A
 movw %S, (%A)
leaw $16842, %A
 movw %S, (%A)
leaw $16843, %A
 movw %S, (%A)
leaw $16846, %A
 movw %S, (%A)
leaw $16847, %A
 movw %S, (%A)
leaw $16850, %A
 movw %S, (%A)
leaw $16853, %A
 movw %S, (%A)
leaw $16855, %A
 movw %S, (%A)
leaw $16858, %A
 movw %S, (%A)
leaw $16860, %A
 movw %S, (%A)
leaw $16866, %A
 movw %S, (%A)
leaw $16867, %A
 movw %S, (%A)
leaw $16870, %A
 movw %S, (%A)
leaw $16873, %A
 movw %S, (%A)
leaw $16875, %A
 movw %S, (%A)
leaw $16878, %A
 movw %S, (%A)
leaw $16880, %A
 movw %S, (%A)
leaw $16886, %A
 movw %S, (%A)
leaw $16887, %A
 movw %S, (%A)
leaw $16890, %A
 movw %S, (%A)
leaw $16893, %A
 movw %S, (%A)
leaw $16895, %A
 movw %S, (%A)
leaw $16898, %A
 movw %S, (%A)
leaw $16900, %A
 movw %S, (%A)
leaw $16906, %A
 movw %S, (%A)
leaw $16907, %A
 movw %S, (%A)
leaw $16910, %A
 movw %S, (%A)
leaw $16913, %A
 movw %S, (%A)
leaw $16915, %A
 movw %S, (%A)
leaw $16918, %A
 movw %S, (%A)
leaw $16920, %A
 movw %S, (%A)
leaw $16926, %A
 movw %S, (%A)
leaw $16927, %A
 movw %S, (%A)
leaw $16930, %A
 movw %S, (%A)
leaw $16933, %A
 movw %S, (%A)
leaw $16935, %A
 movw %S, (%A)
leaw $16936, %A
 movw %S, (%A)
leaw $16937, %A
 movw %S, (%A)
leaw $16938, %A
 movw %S, (%A)
leaw $16940, %A
 movw %S, (%A)
leaw $16941, %A
 movw %S, (%A)
leaw $16942, %A
 movw %S, (%A)
leaw $16943, %A
 movw %S, (%A)
leaw $16946, %A
 movw %S, (%A)
leaw $16947, %A
 movw %S, (%A)
leaw $16950, %A
 movw %S, (%A)
leaw $16953, %A
 movw %S, (%A)
leaw $16955, %A
 movw %S, (%A)
leaw $16956, %A
 movw %S, (%A)
leaw $16957, %A
 movw %S, (%A)
leaw $16958, %A
 movw %S, (%A)
leaw $16960, %A
 movw %S, (%A)
leaw $16961, %A
 movw %S, (%A)
leaw $16962, %A
 movw %S, (%A)
leaw $16963, %A
 movw %S, (%A)
leaw $16966, %A
 movw %S, (%A)
leaw $16967, %A
 movw %S, (%A)
leaw $16970, %A
 movw %S, (%A)
leaw $16973, %A
 movw %S, (%A)
leaw $16975, %A
 movw %S, (%A)
leaw $16976, %A
 movw %S, (%A)
leaw $16977, %A
 movw %S, (%A)
leaw $16978, %A
 movw %S, (%A)
leaw $16980, %A
 movw %S, (%A)
leaw $16981, %A
 movw %S, (%A)
leaw $16982, %A
 movw %S, (%A)
leaw $16983, %A
 movw %S, (%A)
leaw $16986, %A
 movw %S, (%A)
leaw $16987, %A
 movw %S, (%A)
leaw $16990, %A
 movw %S, (%A)
leaw $16993, %A
 movw %S, (%A)
leaw $16995, %A
 movw %S, (%A)
leaw $16996, %A
 movw %S, (%A)
leaw $16997, %A
 movw %S, (%A)
leaw $16998, %A
 movw %S, (%A)
leaw $17000, %A
 movw %S, (%A)
leaw $17001, %A
 movw %S, (%A)
leaw $17002, %A
 movw %S, (%A)
leaw $17003, %A
 movw %S, (%A)
leaw $17006, %A
 movw %S, (%A)
leaw $17007, %A
 movw %S, (%A)
leaw $17010, %A
 movw %S, (%A)
leaw $17013, %A
 movw %S, (%A)
leaw $17015, %A
 movw %S, (%A)
leaw $17016, %A
 movw %S, (%A)
leaw $17020, %A
 movw %S, (%A)
leaw $17026, %A
 movw %S, (%A)
leaw $17027, %A
 movw %S, (%A)
leaw $17030, %A
 movw %S, (%A)
leaw $17033, %A
 movw %S, (%A)
leaw $17035, %A
 movw %S, (%A)
leaw $17036, %A
 movw %S, (%A)
leaw $17040, %A
 movw %S, (%A)
leaw $17046, %A
 movw %S, (%A)
leaw $17047, %A
 movw %S, (%A)
leaw $17050, %A
 movw %S, (%A)
leaw $17053, %A
 movw %S, (%A)
leaw $17055, %A
 movw %S, (%A)
leaw $17056, %A
 movw %S, (%A)
leaw $17057, %A
 movw %S, (%A)
leaw $17060, %A
 movw %S, (%A)
leaw $17066, %A
 movw %S, (%A)
leaw $17067, %A
 movw %S, (%A)
leaw $17070, %A
 movw %S, (%A)
leaw $17073, %A
 movw %S, (%A)
leaw $17075, %A
 movw %S, (%A)
leaw $17077, %A
 movw %S, (%A)
leaw $17080, %A
 movw %S, (%A)
leaw $17086, %A
 movw %S, (%A)
leaw $17087, %A
 movw %S, (%A)
leaw $17090, %A
 movw %S, (%A)
leaw $17091, %A
 movw %S, (%A)
leaw $17092, %A
 movw %S, (%A)
leaw $17093, %A
 movw %S, (%A)
leaw $17095, %A
 movw %S, (%A)
leaw $17097, %A
 movw %S, (%A)
leaw $17098, %A
 movw %S, (%A)
leaw $17100, %A
 movw %S, (%A)
leaw $17101, %A
 movw %S, (%A)
leaw $17102, %A
 movw %S, (%A)
leaw $17103, %A
 movw %S, (%A)
leaw $17106, %A
 movw %S, (%A)
leaw $17107, %A
 movw %S, (%A)
leaw $17110, %A
 movw %S, (%A)
leaw $17111, %A
 movw %S, (%A)
leaw $17112, %A
 movw %S, (%A)
leaw $17113, %A
 movw %S, (%A)
leaw $17115, %A
 movw %S, (%A)
leaw $17118, %A
 movw %S, (%A)
leaw $17120, %A
 movw %S, (%A)
leaw $17121, %A
 movw %S, (%A)
leaw $17122, %A
 movw %S, (%A)
leaw $17123, %A
 movw %S, (%A)