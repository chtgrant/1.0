DROP TABLE t_alertas_profiles;

CREATE TABLE `t_alertas_profiles` (
  `id_alertas_profiles` int(11) NOT NULL AUTO_INCREMENT,
  `id_userprofiles` int(11) DEFAULT NULL,
  `id_alertas_tipos` int(11) DEFAULT NULL,
  `email_field` varchar(20) DEFAULT NULL,
  `date_added` date DEFAULT NULL,
  `last_update` datetime DEFAULT NULL,
  `id_user_last_update` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_alertas_profiles`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO t_alertas_profiles VALUES("1","1","1","","","","");



DROP TABLE t_alertas_tipos;

CREATE TABLE `t_alertas_tipos` (
  `id_alertas_tipos` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `codigo` varchar(20) DEFAULT NULL,
  `activo` int(1) DEFAULT '0',
  `date_added` date DEFAULT NULL,
  `last_update` datetime DEFAULT NULL,
  `id_user_last_update` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_alertas_tipos`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO t_alertas_tipos VALUES("1","Cambio de canal","CAMBIO_CANAL","1","","","");



DROP TABLE t_alertas_txt;

CREATE TABLE `t_alertas_txt` (
  `id_alertas_txt` int(11) NOT NULL AUTO_INCREMENT,
  `id_alertas_tipos` int(11) DEFAULT NULL,
  `id_userprofiles` int(11) DEFAULT NULL,
  `txt` text,
  `date_added` date DEFAULT NULL,
  `last_update` datetime DEFAULT NULL,
  `id_user_last_update` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_alertas_txt`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO t_alertas_txt VALUES("1","1","1","Estimado {nombre_completo}/\n//\n/Le informamos que la carga {tally} ha cambiado su estado a {canal}./\n//\n/Muchas gracias/\n//\n/","","","");



DROP TABLE t_alertas_users;

CREATE TABLE `t_alertas_users` (
  `id_alertas_users` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) DEFAULT NULL,
  `id_alertas_tipos` int(11) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `activo` int(1) DEFAULT '0',
  `date_added` date DEFAULT NULL,
  `last_update` datetime DEFAULT NULL,
  `id_user_last_update` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_alertas_users`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




DROP TABLE t_canal;

CREATE TABLE `t_canal` (
  `id_canal` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_canal`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

INSERT INTO t_canal VALUES("1","Verde");
INSERT INTO t_canal VALUES("2","Naranja");
INSERT INTO t_canal VALUES("3","Rojo");
INSERT INTO t_canal VALUES("4","Liberado");
INSERT INTO t_canal VALUES("5","Embarcando");
INSERT INTO t_canal VALUES("6","En tránsito");



DROP TABLE t_carga;

CREATE TABLE `t_carga` (
  `id_carga` int(11) NOT NULL AUTO_INCREMENT,
  `tally` int(11) DEFAULT NULL,
  `id_destino` int(11) DEFAULT NULL,
  `id_exportador` int(11) DEFAULT NULL,
  `permiso_embarque` varchar(50) DEFAULT NULL,
  `cantidad_bultos` varchar(20) DEFAULT NULL,
  `id_tipo_bulto` int(11) DEFAULT NULL,
  `pesaje` enum('SI','NO') DEFAULT 'NO',
  `peso` varchar(20) DEFAULT NULL,
  `m3` varchar(20) DEFAULT NULL,
  `contenido` varchar(100) DEFAULT '',
  `imo` enum('SI','NO') DEFAULT 'NO',
  `id_transportes` int(11) DEFAULT NULL,
  `observaciones` text,
  `id_despachantes` int(11) DEFAULT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  `id_canal` int(11) DEFAULT NULL,
  `salio` enum('SI','NO') DEFAULT 'NO',
  `fecha_ingreso` date DEFAULT NULL,
  `fecha_salida` date DEFAULT NULL,
  `date_added` date DEFAULT NULL,
  `last_update` datetime DEFAULT NULL,
  `id_user_last_update` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_carga`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;

INSERT INTO t_carga VALUES("2","1642","4","2","EC01 074272 H","4","1","SI","1671","8","CABLES","SI","1","DESPACHANTE RETIRA CARPETA PARA PRORROGA DE PERMISO","0","","1","NO","2014-10-01","","2014-10-15","2014-10-28 12:09:05","2");
INSERT INTO t_carga VALUES("4","1748","4","4","EC01 078720 J","1","1","NO","265,5","1,5","ARTICULOS DE ENVASADO","NO","1","adfadfa","0","","1","NO","2014-10-02","","2014-10-15","2014-10-22 16:39:01","2");
INSERT INTO t_carga VALUES("5","1768","4","6","EC01 079042 H","3","1","SI","2488,2","5","EXTRACTOS VEGETALES","SI","1","","0","","4","SI","2014-10-29","2014-10-24","2014-10-15","2014-10-22 16:37:21","2");
INSERT INTO t_carga VALUES("9","1800","4","9","EC01 078743 Y","6","1","NO","3900","9","AUTOPERFORANTES","NO","1","","0","","4","SI","2014-10-23","2014-10-09","2014-10-15","2014-10-15 11:23:20","2");
INSERT INTO t_carga VALUES("12","1803","2","12","EC01 079382 Y","5","5","NO","146,100","1","REPUESTOS","NO","2","","0","","1","SI","2014-10-09","2014-10-24","2014-10-22","2014-10-23 13:33:57","2");
INSERT INTO t_carga VALUES("13","1807","4","13","EC01 080631 D","1","3","NO","480","4","MOTOR","NO","1","","0","","1","SI","2014-10-09","2014-10-24","2014-10-22","2014-10-22 11:26:02","2");
INSERT INTO t_carga VALUES("14","1823","3","14","EC01 081561 F","50","7","NO","665","4","MALLAS","NO","5","","0","","4","SI","2014-10-14","2014-10-28","2014-10-22","2014-10-29 10:13:40","2");
INSERT INTO t_carga VALUES("15","1833","4","15","EC01 081572 X","4","1","NO","288","7","APARATOS DE ILUMINACION","NO","1","","0","","3","SI","2014-10-15","0000-00-00","2014-10-22","2014-10-24 15:47:18","2");
INSERT INTO t_carga VALUES("16","1835","4","16","EC01 081946 N","3","1","SI","645,600","3","ESENCIAS","SI","1","","0","","1","NO","2014-10-15","0000-00-00","2014-10-22","2014-10-27 09:29:14","2");
INSERT INTO t_carga VALUES("17","1838","2","17","EC01 082088 L","1","3","SI","850","2","TORNILLOS","NO","2","","0","","1","SI","0000-00-00","2014-10-24","2014-10-22","2014-10-23 13:37:36","2");
INSERT INTO t_carga VALUES("18","1845","4","18","EC03 018403 D","4","1","NO","4789","7","TABLEROS","NO","1","","0","","1","SI","2014-10-16","2014-10-24","2014-10-22","2014-10-23 13:33:17","2");
INSERT INTO t_carga VALUES("19","1849","3","19","EC01 080461 E","4","1","NO","2054","7","MANUFACTURAS DE ALUMINIO","NO","5","","0","","1","SI","2014-10-20","2014-10-28","2014-10-22","2014-10-29 10:13:07","2");
INSERT INTO t_carga VALUES("20","1850","4","20","EC01 083272 H","1","3","NO","259,400","2","BISAGRAS","NO","1","","0","","1","SI","2014-10-20","2014-10-24","2014-10-22","2014-10-22 11:45:55","2");
INSERT INTO t_carga VALUES("21","1851","2","21","EC01 083158 K","16","5","NO","186","3","MOLDES DE PRENDA DE VESTIR","NO","2","","0","","4","SI","2014-10-20","0000-00-00","2014-10-22","2014-10-22 11:48:28","2");
INSERT INTO t_carga VALUES("22","1852","4","22","EC01 082959 S","3","6","NO","700","8","QUEMADORES","NO","1","","0","","4","SI","2014-10-20","2014-10-24","2014-10-22","2014-10-23 13:38:28","2");
INSERT INTO t_carga VALUES("23","1855","2","23","EC01 083371 H","3","1","NO","1900","13","CARRETES DE CARTON","NO","2","","0","","1","SI","2014-10-20","2014-10-24","2014-10-22","2014-10-22 11:52:16","2");
INSERT INTO t_carga VALUES("24","1856","2","24","EC01 081839 Y","69","7","NO","740","2","BOLSAS MULTIPROPOSITOS","NO","3","","0","","1","NO","2014-10-20","0000-00-00","2014-10-22","2014-10-22 11:54:28","2");
INSERT INTO t_carga VALUES("25","1858","4","10","EC01 083148 J","1","1","NO","237,800","2","AUTOPARTES","NO","1","","0","","1","SI","2014-10-20","2014-10-24","2014-10-22","2014-10-24 15:46:21","2");
INSERT INTO t_carga VALUES("26","1859","3","25","EC02 000740 U","2","1","NO","143","3","REFRIGERADORES","NO","5","","0","","4","SI","2014-10-20","2014-10-28","2014-10-22","2014-10-29 10:14:52","2");
INSERT INTO t_carga VALUES("27","1860","2","26","EC01 083246 X","3","1","NO","1962,100","6","ETIQUETAS NO AUTOADHESIVAS","NO","2","","0","","1","SI","2014-10-20","2014-10-04","2014-10-22","2014-10-22 12:00:36","2");
INSERT INTO t_carga VALUES("28","1862","2","27","EC03 018683 N","1","1","NO","616","2","MANUFACTURAS DE PLASTICO","NO","2","","0","","1","SI","2014-10-21","2014-10-24","2014-10-22","2014-10-22 12:04:27","2");
INSERT INTO t_carga VALUES("29","1863","4","28","EC01 082470 G","21","1","NO","18124","30","INSECTICIDAS","SI","8","","0","","1","SI","2014-10-21","2014-10-24","2014-10-22","2014-10-22 12:07:41","2");
INSERT INTO t_carga VALUES("30","1864","2","29","EC01 083241 D","1","1","NO","700","2","MAQUINARIA","SI","2","","0","","4","SI","2014-10-21","2014-10-24","2014-10-22","2014-10-22 12:11:10","2");
INSERT INTO t_carga VALUES("31","1865","2","30","EC01 083298 P","4","1","NO","1664","7","ENVASES DE POLIETILENO","NO","2","","0","","1","SI","2014-10-21","2014-10-24","2014-10-22","2014-10-22 12:13:46","2");
INSERT INTO t_carga VALUES("32","1861","5","31","12114-38-2014","45","7","NO","","15","EQUIPAJE","NO","9","ADRIANA ZALDENVOREN equipaje fede roveda","0","","4","SI","2014-10-21","2014-10-27","2014-10-22","2014-10-28 10:02:32","2");
INSERT INTO t_carga VALUES("33","1867","2","32","EC01 083165 X","7","1","SI","2470,400","9","BOBINAS ","NO","2","","0","","1","SI","2014-10-21","2014-10-24","2014-10-22","2014-10-22 12:22:53","2");
INSERT INTO t_carga VALUES("34","1869","2","7","EC01 083623 H","14","1","SI","7996,800","21","ESENCIAS","SI","3","","0","","1","NO","2014-10-21","0000-00-00","2014-10-22","2014-10-23 13:38:48","2");
INSERT INTO t_carga VALUES("35","1871","2","33","EC01 083662 K","4","3","NO","3194","5","ACCESORIOS DE TUBERIAS","NO","2","","0","","2","SI","2014-10-22","2014-10-24","2014-10-22","2014-10-23 13:39:06","2");
INSERT INTO t_carga VALUES("36","1872","3","34","EC03 018681 L","7","1","NO","2695","7","BOBINAS DE PAPEL","NO","5","","0","","1","SI","2014-10-22","2014-10-28","2014-10-22","2014-10-29 10:14:16","2");
INSERT INTO t_carga VALUES("37","1873","4","35","EC01 083885 R","2","1","NO","300","5","APARATOS PARA FILTRAR","NO","1","","0","","1","SI","2014-10-22","2014-10-24","2014-10-22","2014-10-22 16:43:38","2");
INSERT INTO t_carga VALUES("38","1874","2","36","EC01 083588 R","1","7","NO","450","8","EVAPORADOR","NO","2","","0","","2","SI","2014-10-22","2014-10-24","2014-10-22","2014-10-22 16:44:09","2");
INSERT INTO t_carga VALUES("39","1875","4","37","EC01 083973 P","2","1","NO","1347","5","LIBROS","NO","1","","0","","4","NO","2014-10-22","0000-00-00","2014-10-22","2014-10-27 09:30:13","2");
INSERT INTO t_carga VALUES("40","1876","4","38","EC01 083547 M","8","1","NO","1830","20","ARTICULOS DE LIMPIEZA","NO","1","","0","","1","SI","2014-10-22","2014-10-24","2014-10-22","2014-10-22 16:38:43","2");
INSERT INTO t_carga VALUES("41","1877","6","39","EC01 083899 W","6","1","NO","2274","14","TAPAS PLASTICO","NO","10","","0","","1","SI","2014-10-22","0000-00-00","2014-10-22","2014-10-22 12:45:30","2");
INSERT INTO t_carga VALUES("42","1878","2","40","EC01 083875 Z","32","1","SI","19260","47","CLORO","SI","2","2127,500 KILOS DE DIFERENCIA DE MAS","0","","1","NO","2014-10-22","0000-00-00","2014-10-22","2014-10-27 15:29:07","2");
INSERT INTO t_carga VALUES("43","1879","7","41","ES01 001076 P","16","1","NO","3896,800","100","AUTOPARTES","NO","9","","0","","4","SI","2014-10-23","2014-10-23","2014-10-23","2014-10-24 15:57:35","2");
INSERT INTO t_carga VALUES("44","1880","2","42","EC01 081079 K","2","1","SI","1159","3,5","LACTOSUERO","NO","2","","0","","1","SI","2014-10-23","2014-10-24","2014-10-23","2014-10-23 14:22:01","2");
INSERT INTO t_carga VALUES("45","1881","3","43","EC01 083416 H","24","1","SI","24840","100","CURTIENTES","NO","11","","0","","1","SI","2014-10-23","2014-10-23","2014-10-23","2014-10-23 13:21:42","2");
INSERT INTO t_carga VALUES("46","1882","2","44","EC03 018711 F","5","1","SI","4460","8","SECATIVO PREPARADOS","SI","2","","0","","1","SI","2014-10-23","0000-00-00","2014-10-23","2014-10-23 13:23:48","2");
INSERT INTO t_carga VALUES("47","1883","2","44","EC01 083718 M","1","2","SI","3,4","1","SECATIVO PREPARADOS MUESTRA","SI","2","MUESTRA","0","","1","SI","2014-10-23","0000-00-00","2014-10-23","2014-10-23 13:25:02","2");
INSERT INTO t_carga VALUES("48","1884","2","45","EC01 084426 J","7","7","NO","129,400","1,5","ROLLOS DE TELA","NO","2","","0","","1","SI","2014-10-23","2014-10-24","2014-10-23","2014-10-23 13:26:59","2");
INSERT INTO t_carga VALUES("49","1885","2","46","EC01 084461 X","1","6","NO","180","2,5","CALENTADORES","NO","2","","0","","4","NO","2014-10-23","0000-00-00","2014-10-23","2014-10-27 11:26:35","2");
INSERT INTO t_carga VALUES("50","1886","8","10","EC01 084555 M","10","1","NO","971,500","18","AUTOPARTES","NO","4","","0","","1","NO","2014-10-23","0000-00-00","2014-10-23","2014-10-27 09:34:42","2");
INSERT INTO t_carga VALUES("51","1887","9","47","1282-1978-2014","57","7","NO","2400","20","EQUIPAJE DIPLOMATICO","NO","9","","0","","4","SI","2014-10-23","2014-10-23","2014-10-24","2014-10-24 15:17:13","2");
INSERT INTO t_carga VALUES("52","1888","2","48","EC01 081079 K","18","1","SI","27730","100","PREPARACIONES DE ALIMENTO ANIMAL","NO","7","","0","","1","SI","2014-10-23","2014-10-23","2014-10-24","2014-10-24 15:24:14","2");
INSERT INTO t_carga VALUES("53","1889","2","49","EC01 084171 G","1","2","NO","2,160","0,5","IMPRESOS PUBLICITARIOS","NO","2","","0","","1","SI","2014-10-23","2014-10-24","2014-10-24","2014-10-27 09:20:32","2");
INSERT INTO t_carga VALUES("54","1890","2","16","EC01 084593 Y","8","1","SI","3987,200","8","ESENCIAS","NO","3","","0","","1","NO","2014-10-23","0000-00-00","2014-10-24","2014-10-24 15:32:32","2");
INSERT INTO t_carga VALUES("55","1891","4","50","EC01 084542 X","8","1","NO","1884","17","CALEFONES","NO","1","","0","","4","NO","2014-10-23","0000-00-00","2014-10-24","2014-10-27 15:28:44","2");
INSERT INTO t_carga VALUES("56","1892","3","51","EC01 084986 U","28","1","NO","26788,500","100","PINTURAS","NO","5","","0","","1","SI","2014-10-23","2014-10-23","2014-10-24","2014-10-24 15:38:08","2");
INSERT INTO t_carga VALUES("57","1893","2","52","EC01 085077 M","850","5","NO","","","","NO","12","","0","","1","SI","0000-00-00","0000-00-00","2014-10-24","2014-10-24 15:41:13","2");
INSERT INTO t_carga VALUES("62","1895","4","54","EC03 018978 U","2","1","NO","1772","3","ETIQUETAS ","NO","4","","0","","1","SI","2014-10-27","2014-10-27","2014-10-27","2014-10-27 15:27:08","2");
INSERT INTO t_carga VALUES("63","1896","2","55","EC01 084311 C","2","1","NO","722","2","CAJA FUERTE","NO","2","","0","","1","NO","2014-10-27","0000-00-00","2014-10-27","2014-10-27 15:26:43","2");
INSERT INTO t_carga VALUES("64","1897","4","56","EC01 085187 Y","4","1","SI","3100","6","CAUCHO","NO","1","","0","","1","NO","2014-10-27","0000-00-00","2014-10-27","2014-10-28 11:38:19","2");
INSERT INTO t_carga VALUES("65","1898","4","57","EC0 083933 L","1","1","NO","75","1","QUEMADOR","NO","1","","0","","1","NO","2014-10-27","0000-00-00","2014-10-27","2014-10-27 15:27:24","2");
INSERT INTO t_carga VALUES("66","1899","2","58","EC01 085315 H","4","1","SI","1398,500","8","FILM","NO","3","","0","","1","NO","2014-10-27","0000-00-00","2014-10-27","2014-10-27 15:39:50","2");
INSERT INTO t_carga VALUES("67","1900","2","59","EC01 085476 P","7","1","SI","4801,770","10","ESENCIAS","NO","2","","0","","1","NO","2014-10-27","0000-00-00","2014-10-27","2014-10-28 12:00:18","2");
INSERT INTO t_carga VALUES("68","1902","4","61","EC01 084763 N","120","5","NO","460","5","ENVASES DE FLUIDOS","NO","1","","0","","3","NO","2014-10-27","0000-00-00","2014-10-27","2014-10-27 15:26:27","2");
INSERT INTO t_carga VALUES("69","1901","4","60","EC01 084862 N","14","7","NO","787,980","2","SUSTANCIAS ODOROFICAS","SI","1","","0","","1","NO","2014-10-27","0000-00-00","2014-10-27","2014-10-28 11:59:43","2");
INSERT INTO t_carga VALUES("70","1903","8","62","EC01 085316 X","4","7","NO","16380","100","MAQUINARIAS","NO","4","","0","","1","SI","2014-10-27","2014-10-27","2014-10-27","2014-10-27 15:25:51","2");
INSERT INTO t_carga VALUES("71","1904","8","10","EC01 085454 L","14","1","NO","1434,100","30","AUTOPARTES","NO","4","","0","","1","NO","2014-10-27","0000-00-00","2014-10-27","2014-10-27 16:26:37","2");
INSERT INTO t_carga VALUES("73","1905","4","63","EC01 085684 Z","2","3","NO","953,600","2,5","VARIADOR DE VELOCIDAD","NO","1","","0","","1","NO","2014-10-28","0000-00-00","2014-10-28","2014-10-29 10:04:50","2");
INSERT INTO t_carga VALUES("74","1906","3","64","EC03 019043 E","1","1","NO","1160","100","RODILLO PARA PAPELERA","NO","13","","0","","1","SI","2014-10-28","2014-10-28","2014-10-28","2014-10-28 10:26:11","2");
INSERT INTO t_carga VALUES("75","1907","3","64","EC02 000760 W","1","2","NO","498","100","CAJON","NO","13","CAJON ENVASE PARA TALLY 1906","0","","3","SI","2014-10-27","2014-10-28","2014-10-28","2014-10-28 10:27:35","2");
INSERT INTO t_carga VALUES("76","1908","4","10","EC01 085773 P","2","3","NO","92,200","2","AUTOPARTES","NO","1","","0","","1","NO","2014-10-28","0000-00-00","2014-10-28","2014-10-28 12:00:42","2");
INSERT INTO t_carga VALUES("77","1909","2","65","EC01 085443 J","11","7","NO","291","3","MAQUINARIAS","NO","2","MAQUINARIAS, VARIOS TIPOS DE BULTOS, INCLUYE CAÑOS","0","","2","NO","2014-10-28","0000-00-00","2014-10-28","2014-10-29 10:04:14","2");
INSERT INTO t_carga VALUES("78","1910","8","66","EC01 085861 N","172","5","NO","1790","17","IMPRESOS  ","NO","4","","0","","2","NO","2014-10-28","0000-00-00","2014-10-28","2014-10-29 09:45:04","2");
INSERT INTO t_carga VALUES("79","1911","2","67","EC01 085869 V","1028","7","NO","2410","100","FLORES Y PLANTAS","NO","14","","0","","2","SI","2014-10-28","2014-10-29","2014-10-28","2014-10-29 09:44:36","2");
INSERT INTO t_carga VALUES("80","1912","4","68","EC03 019034 E","5","1","NO","10216.810","11","APARATOS PARA PULVERIZACION","NO","1","","0","","1","NO","2014-10-28","0000-00-00","2014-10-29","2014-10-29 10:05:19","2");
INSERT INTO t_carga VALUES("81","1913","4","69","EC01 085464 M","1120","7","NO","13325","100","TRAPOS DE PISO","NO","15","","0","","0","SI","2014-10-28","2014-10-28","2014-10-29","2014-10-29 10:11:36","2");
INSERT INTO t_carga VALUES("82","1914","4","70","EC01 085822 K","14","1","NO","9563","22","VINOS ESPUMANTES","NO","1","","0","","1","NO","2014-10-28","0000-00-00","2014-10-29","2014-10-29 10:07:02","2");
INSERT INTO t_carga VALUES("83","1915","4","70","EC01 085830 J","10","1","NO","8310","14","VINO","NO","1","","0","","1","NO","2014-10-28","0000-00-00","2014-10-29","2014-10-29 10:06:15","2");
INSERT INTO t_carga VALUES("84","1916","4","71","EC01 085598 U","4","1","SI","4422","10","FILM STRETCH","NO","1","","0","","0","NO","2014-10-28","0000-00-00","2014-10-29","2014-10-29 10:03:04","2");
INSERT INTO t_carga VALUES("85","1917","2","72","14001EC01086060F","1","1","NO","170,00","2","sanitarios","NO","2","","1","43156090","1","NO","2014-10-29","0000-00-00","2014-10-29","2014-10-29 14:07:17","2");
INSERT INTO t_carga VALUES("86","1918","4","75","14001EC01080725H","29","7","NO","1337,780","13","MUEBLES DE OFICINA","NO","1","","0","","0","NO","2014-10-29","0000-00-00","2014-10-29","2014-10-29 14:32:00","2");
INSERT INTO t_carga VALUES("87","1919","2","76","14001EC01086154-J","25","1","NO","12144,300","35","Pinturas y Barnices","SI","2","","0","","0","NO","2014-10-29","0000-00-00","2014-10-29","2014-10-29 14:38:08","2");
INSERT INTO t_carga VALUES("88","1920","8","77","14001EC01084050C","24","5","NO","160,800","1,50","medicamentos","NO","4","","0","","0","NO","0000-00-00","0000-00-00","2014-10-29","2014-10-29 15:45:21","2");
INSERT INTO t_carga VALUES("89","1921","2","78","14001EC01086288R","6","7","SI","320","2","jUGOS Y EXTRACTOS VEGETALES","NO","2","","0","","0","NO","2014-10-29","0000-00-00","2014-10-29","2014-10-29 15:57:43","2");
INSERT INTO t_carga VALUES("90","1922","2","79","EC03 019171 G","30","1","NO","13779"," CAMION COMPLETO","Kit aparato + aromatizador de ambte","NO","16","","3","","1","SI","2014-10-29","2014-10-29","2014-10-29","2014-10-29 16:52:46","2");



DROP TABLE t_carga_audit;

CREATE TABLE `t_carga_audit` (
  `id_carga_audit` int(11) NOT NULL AUTO_INCREMENT,
  `id_carga` int(11) DEFAULT NULL,
  `tally` int(11) DEFAULT NULL,
  `id_destino` int(11) DEFAULT NULL,
  `id_exportador` int(11) DEFAULT NULL,
  `permiso_embarque` varchar(50) DEFAULT NULL,
  `cantidad_bultos` varchar(20) DEFAULT NULL,
  `id_tipo_bulto` int(11) DEFAULT NULL,
  `pesaje` enum('SI','NO') DEFAULT 'NO',
  `peso` varchar(20) DEFAULT NULL,
  `m3` varchar(20) DEFAULT NULL,
  `contenido` varchar(100) DEFAULT '',
  `imo` enum('SI','NO') DEFAULT 'NO',
  `id_transportes` int(11) DEFAULT NULL,
  `observaciones` text,
  `id_despachantes` int(11) DEFAULT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  `id_canal` int(11) DEFAULT NULL,
  `salio` enum('SI','NO') DEFAULT 'NO',
  `fecha_ingreso` date DEFAULT NULL,
  `fecha_salida` date DEFAULT NULL,
  `date_added` date DEFAULT NULL,
  `last_update` datetime DEFAULT NULL,
  `id_user_last_update` int(11) DEFAULT NULL,
  `action` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_carga_audit`),
  KEY `idx_id_carga_audit` (`id_carga`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8;

INSERT INTO t_carga_audit VALUES("1","53","1889","2","49","EC01 084171 G","1","2","NO","2,160","0,5","IMPRESOS PUBLICITARIOS","NO","2","","0","","1","SI","2014-10-23","2014-10-24","2014-10-24","2014-10-27 09:20:32","2","MOD");
INSERT INTO t_carga_audit VALUES("2","32","1861","5","31","12114-38-2014","45","7","NO","","15","EQUIPAJE","NO","9","ADRIANA ZALDENVOREN","0","","4","NO","2014-10-21","2014-10-23","2014-10-22","2014-10-27 09:25:08","2","MOD");
INSERT INTO t_carga_audit VALUES("3","32","1861","5","31","12114-38-2014","45","7","NO","","15","EQUIPAJE","NO","9","ADRIANA ZALDENVOREN","0","","4","NO","2014-10-21","2014-10-23","2014-10-22","2014-10-27 09:25:15","2","MOD");
INSERT INTO t_carga_audit VALUES("4","32","1861","5","31","12114-38-2014","45","7","NO","","15","EQUIPAJE","NO","9","ADRIANA ZALDENVOREN","0","","4","NO","2014-10-21","2014-10-23","2014-10-22","2014-10-27 09:25:25","2","MOD");
INSERT INTO t_carga_audit VALUES("5","32","1861","5","31","12114-38-2014","45","7","NO","","15","EQUIPAJE","NO","9","ADRIANA ZALDENVOREN equipaje fede roveda","0","","4","NO","2014-10-21","2014-10-23","2014-10-22","2014-10-27 09:25:39","2","MOD");
INSERT INTO t_carga_audit VALUES("6","55","1891","4","50","EC01 084542 X","8","1","NO","1884","17","CALEFONES","NO","1","","0","","2","NO","2014-10-23","0000-00-00","2014-10-24","2014-10-27 09:28:11","2","MOD");
INSERT INTO t_carga_audit VALUES("7","16","1835","4","16","EC01 081946 N","3","1","SI","645,600","3","ESENCIAS","SI","1","","0","","1","NO","2014-10-15","0000-00-00","2014-10-22","2014-10-27 09:29:14","2","MOD");
INSERT INTO t_carga_audit VALUES("8","39","1875","4","37","EC01 083973 P","2","1","NO","1347","5","LIBROS","NO","1","","0","","4","NO","2014-10-22","0000-00-00","2014-10-22","2014-10-27 09:30:13","2","MOD");
INSERT INTO t_carga_audit VALUES("9","49","1885","2","46","EC01 084461 X","1","6","NO","180","2,5","CALENTADORES","NO","2","","0","","2","NO","2014-10-23","0000-00-00","2014-10-23","2014-10-27 09:31:12","2","MOD");
INSERT INTO t_carga_audit VALUES("10","49","1885","2","46","EC01 084461 X","1","6","NO","180","2,5","CALENTADORES","NO","2","","0","","1","NO","2014-10-23","0000-00-00","2014-10-23","2014-10-27 09:33:33","2","MOD");
INSERT INTO t_carga_audit VALUES("11","49","1885","2","46","EC01 084461 X","1","6","NO","180","2,5","CALENTADORES","NO","2","","0","","2","NO","2014-10-23","0000-00-00","2014-10-23","2014-10-27 09:33:38","2","MOD");
INSERT INTO t_carga_audit VALUES("12","50","1886","8","10","EC01 084555 M","10","1","NO","971,500","18","AUTOPARTES","NO","4","","0","","1","NO","2014-10-23","0000-00-00","2014-10-23","2014-10-27 09:34:42","2","MOD");
INSERT INTO t_carga_audit VALUES("13","62","1895","4","54","EC03 018978 U","2","1","NO","1772","3","ETIQUETAS ","NO","4","","0","","0","NO","2014-10-27","0000-00-00","2014-10-27","2014-10-27 10:18:53","2","INS");
INSERT INTO t_carga_audit VALUES("14","63","1896","2","55","EC01 084311 C","2","1","NO","722","2","CAJA FUERTE","NO","2","","0","","0","NO","2014-10-27","0000-00-00","2014-10-27","2014-10-27 10:25:49","2","INS");
INSERT INTO t_carga_audit VALUES("15","64","1897","4","56","EC01 085187 Y","4","1","SI","3100","6","CAUCHO","NO","1","","0","","0","NO","2014-10-27","0000-00-00","2014-10-27","2014-10-27 10:28:26","2","INS");
INSERT INTO t_carga_audit VALUES("16","65","1898","4","57","EC0 083933 L","1","1","NO","75","1","QUEMADOR","NO","1","","0","","0","NO","2014-10-27","0000-00-00","2014-10-27","2014-10-27 10:30:48","2","INS");
INSERT INTO t_carga_audit VALUES("17","66","1899","2","58","EC01 085315 H","4","1","SI","1398,500","8","FILM","NO","3","","0","","0","NO","2014-10-27","0000-00-00","2014-10-27","2014-10-27 10:34:31","2","INS");
INSERT INTO t_carga_audit VALUES("18","67","1900","2","59","EC01 085476 P","7","1","SI","4801,770","10","ESENCIAS","NO","2","","0","","0","NO","2014-10-27","0000-00-00","2014-10-27","2014-10-27 10:38:03","2","INS");
INSERT INTO t_carga_audit VALUES("19","49","1885","2","46","EC01 084461 X","1","6","NO","180","2,5","CALENTADORES","NO","2","","0","","4","NO","2014-10-23","0000-00-00","2014-10-23","2014-10-27 11:26:35","2","MOD");
INSERT INTO t_carga_audit VALUES("20","64","1897","4","56","EC01 085187 Y","4","1","SI","3100","6","CAUCHO","NO","1","","0","","2","NO","2014-10-27","0000-00-00","2014-10-27","2014-10-27 11:37:15","2","MOD");
INSERT INTO t_carga_audit VALUES("21","68","1901","4","61","EC01 084763 N","120","5","NO","460","5","ENVASES DE FLUIDOS","NO","1","","0","","0","NO","2014-10-27","0000-00-00","2014-10-27","2014-10-27 14:45:22","2","INS");
INSERT INTO t_carga_audit VALUES("22","68","1902","4","61","EC01 084763 N","120","5","NO","460","5","ENVASES DE FLUIDOS","NO","1","","0","","0","NO","2014-10-27","0000-00-00","2014-10-27","2014-10-27 14:46:13","2","MOD");
INSERT INTO t_carga_audit VALUES("23","69","1901","4","60","EC01 084862 N","14","7","NO","787,980","2","SUSTANCIAS ODOROFICAS","SI","1","","0","","0","NO","2014-10-27","0000-00-00","2014-10-27","2014-10-27 14:47:42","2","INS");
INSERT INTO t_carga_audit VALUES("24","70","1903","8","62","EC01 085316 X","4","7","NO","16380","100","MAQUINARIAS","NO","4","","0","","1","NO","2014-10-27","0000-00-00","2014-10-27","2014-10-27 15:25:51","2","INS");
INSERT INTO t_carga_audit VALUES("25","68","1902","4","61","EC01 084763 N","120","5","NO","460","5","ENVASES DE FLUIDOS","NO","1","","0","","3","NO","2014-10-27","0000-00-00","2014-10-27","2014-10-27 15:26:27","2","MOD");
INSERT INTO t_carga_audit VALUES("26","63","1896","2","55","EC01 084311 C","2","1","NO","722","2","CAJA FUERTE","NO","2","","0","","1","NO","2014-10-27","0000-00-00","2014-10-27","2014-10-27 15:26:43","2","MOD");
INSERT INTO t_carga_audit VALUES("27","62","1895","4","54","EC03 018978 U","2","1","NO","1772","3","ETIQUETAS ","NO","4","","0","","1","NO","2014-10-27","0000-00-00","2014-10-27","2014-10-27 15:27:08","2","MOD");
INSERT INTO t_carga_audit VALUES("28","65","1898","4","57","EC0 083933 L","1","1","NO","75","1","QUEMADOR","NO","1","","0","","1","NO","2014-10-27","0000-00-00","2014-10-27","2014-10-27 15:27:24","2","MOD");
INSERT INTO t_carga_audit VALUES("29","55","1891","4","50","EC01 084542 X","8","1","NO","1884","17","CALEFONES","NO","1","","0","","4","NO","2014-10-23","0000-00-00","2014-10-24","2014-10-27 15:28:44","2","MOD");
INSERT INTO t_carga_audit VALUES("30","42","1878","2","40","EC01 083875 Z","32","1","SI","19260","47","CLORO","SI","2","2127,500 KILOS DE DIFERENCIA DE MAS","0","","1","NO","2014-10-22","0000-00-00","2014-10-22","2014-10-27 15:29:07","2","MOD");
INSERT INTO t_carga_audit VALUES("31","66","1899","2","58","EC01 085315 H","4","1","SI","1398,500","8","FILM","NO","3","","0","","1","NO","2014-10-27","0000-00-00","2014-10-27","2014-10-27 15:39:50","2","MOD");
INSERT INTO t_carga_audit VALUES("32","71","1904","8","10","EC01 085454 L","14","1","NO","1434,100","30","AUTOPARTES","NO","4","","0","","1","NO","2014-10-27","0000-00-00","2014-10-27","2014-10-27 16:26:37","2","INS");
INSERT INTO t_carga_audit VALUES("33","72","1234","0","0","1234","1234","0","NO","1234","1234","","NO","0","1234","0","","0","NO","2014-10-08","0000-00-00","2014-10-27","2014-10-27 18:28:23","1","INS");
INSERT INTO t_carga_audit VALUES("34","72","12345","0","0","1234","1234","0","NO","1234","1234","","NO","0","1234","0","","0","NO","2014-10-08","0000-00-00","2014-10-27","2014-10-27 18:29:40","1","MOD");
INSERT INTO t_carga_audit VALUES("35","32","1861","5","31","12114-38-2014","45","7","NO","","15","EQUIPAJE","NO","9","ADRIANA ZALDENVOREN equipaje fede roveda","0","","4","SI","2014-10-21","2014-10-27","2014-10-22","2014-10-28 10:02:32","2","MOD");
INSERT INTO t_carga_audit VALUES("36","73","1905","4","63","EC01 085684 Z","2","3","NO","953,600","2,5","VARIADOR DE VELOCIDAD","NO","1","","0","","0","NO","2014-10-28","0000-00-00","2014-10-28","2014-10-28 10:05:27","2","INS");
INSERT INTO t_carga_audit VALUES("37","74","1906","3","64","EC03 019043 E","1","1","NO","1160","100","RODILLO PARA PAPELERA","NO","13","","0","","1","NO","2014-10-28","0000-00-00","2014-10-28","2014-10-28 10:26:11","2","INS");
INSERT INTO t_carga_audit VALUES("38","75","1907","3","64","EC02 000760 W","1","2","NO","498","100","CAJON","NO","13","CAJON ENVASE PARA TALLY 1906","0","","3","NO","2014-10-27","0000-00-00","2014-10-28","2014-10-28 10:27:35","2","INS");
INSERT INTO t_carga_audit VALUES("39","76","1908","4","10","EC01 085773 P","2","3","NO","92,200","2","AUTOPARTES","NO","1","","0","","0","NO","2014-10-28","0000-00-00","2014-10-28","2014-10-28 10:28:37","2","INS");
INSERT INTO t_carga_audit VALUES("40","64","1897","4","56","EC01 085187 Y","4","1","SI","3100","6","CAUCHO","NO","1","","0","","1","NO","2014-10-27","0000-00-00","2014-10-27","2014-10-28 11:38:19","2","MOD");
INSERT INTO t_carga_audit VALUES("41","77","1909","2","65","EC01 085443 J","11","7","NO","291","3","MAQUINARIAS","NO","2","","0","","0","NO","2014-10-28","0000-00-00","2014-10-28","2014-10-28 11:55:45","2","INS");
INSERT INTO t_carga_audit VALUES("42","77","1909","2","65","EC01 085443 J","11","7","NO","291","3","MAQUINARIAS","NO","2","MAQUINARIAS, VARIOS TIPOS DE BULTOS, INCLUYE CAÑOS","0","","0","NO","2014-10-28","0000-00-00","2014-10-28","2014-10-28 11:56:11","2","MOD");
INSERT INTO t_carga_audit VALUES("43","77","1909","2","65","EC01 085443 J","11","7","NO","291","3","MAQUINARIAS","NO","2","MAQUINARIAS, VARIOS TIPOS DE BULTOS, INCLUYE CAÑOS","0","","0","NO","2014-10-28","0000-00-00","2014-10-28","2014-10-28 11:56:24","2","MOD");
INSERT INTO t_carga_audit VALUES("44","78","1910","8","66","EC01 085861 N","172","5","NO","1790","17","IMPRESOS  ","NO","4","","0","","0","NO","2014-10-28","0000-00-00","2014-10-28","2014-10-28 11:59:00","2","INS");
INSERT INTO t_carga_audit VALUES("45","69","1901","4","60","EC01 084862 N","14","7","NO","787,980","2","SUSTANCIAS ODOROFICAS","SI","1","","0","","1","NO","2014-10-27","0000-00-00","2014-10-27","2014-10-28 11:59:43","2","MOD");
INSERT INTO t_carga_audit VALUES("46","67","1900","2","59","EC01 085476 P","7","1","SI","4801,770","10","ESENCIAS","NO","2","","0","","1","NO","2014-10-27","0000-00-00","2014-10-27","2014-10-28 12:00:18","2","MOD");
INSERT INTO t_carga_audit VALUES("47","76","1908","4","10","EC01 085773 P","2","3","NO","92,200","2","AUTOPARTES","NO","1","","0","","1","NO","2014-10-28","0000-00-00","2014-10-28","2014-10-28 12:00:42","2","MOD");
INSERT INTO t_carga_audit VALUES("48","2","1642","4","2","EC01 074272 H","4","1","SI","1671","8","CABLES","SI","1","DESPACHANTE RETIRA CARPETA PARA PRORROGA DE PERMISO","0","","1","NO","2014-10-01","","2014-10-15","2014-10-28 12:01:31","2","MOD");
INSERT INTO t_carga_audit VALUES("49","2","1642","4","2","EC01 074272 H","4","1","SI","1671","8","CABLES","SI","1","DESPACHANTE RETIRA CARPETA PARA PRORROGA DE PERMISO","0","","1","NO","2014-10-01","","2014-10-15","2014-10-28 12:09:05","2","MOD");
INSERT INTO t_carga_audit VALUES("50","79","1911","2","67","EC01 085869 V","1028","7","NO","2410","100","FLORES Y PLANTAS","NO","14","","0","","0","NO","2014-10-28","0000-00-00","2014-10-28","2014-10-28 12:12:09","2","INS");
INSERT INTO t_carga_audit VALUES("51","79","1911","2","67","EC01 085869 V","1028","7","NO","2410","100","FLORES Y PLANTAS","NO","14","","0","","2","SI","2014-10-28","2014-10-29","2014-10-28","2014-10-29 09:44:36","2","MOD");
INSERT INTO t_carga_audit VALUES("52","78","1910","8","66","EC01 085861 N","172","5","NO","1790","17","IMPRESOS  ","NO","4","","0","","2","NO","2014-10-28","0000-00-00","2014-10-28","2014-10-29 09:45:04","2","MOD");
INSERT INTO t_carga_audit VALUES("53","80","1912","4","68","EC03 019034 E","5","1","NO","10216.810","11","APARATOS PARA PULVERIZACION","NO","1","","0","","0","NO","2014-10-28","0000-00-00","2014-10-29","2014-10-29 09:52:35","2","INS");
INSERT INTO t_carga_audit VALUES("54","81","1913","4","69","EC01 085464 M","1120","7","NO","13325","100","TRAPOS DE PISO","NO","15","","0","","0","NO","2014-10-28","2014-10-28","2014-10-29","2014-10-29 09:56:43","2","INS");
INSERT INTO t_carga_audit VALUES("55","82","1914","4","70","EC01 085822 K","14","1","NO","9563","22","VINOS ESPUMANTES","NO","1","","0","","0","NO","2014-10-28","0000-00-00","2014-10-29","2014-10-29 09:59:02","2","INS");
INSERT INTO t_carga_audit VALUES("56","83","1915","4","70","EC01 085830 J","10","1","NO","8310","14","VINO","NO","1","","0","","0","NO","2014-10-28","0000-00-00","2014-10-29","2014-10-29 10:00:10","2","INS");
INSERT INTO t_carga_audit VALUES("57","84","1916","4","71","EC01 085598 U","4","1","SI","4422","10","FILM STRETCH","NO","1","","0","","0","NO","2014-10-28","0000-00-00","2014-10-29","2014-10-29 10:03:04","2","INS");
INSERT INTO t_carga_audit VALUES("58","77","1909","2","65","EC01 085443 J","11","7","NO","291","3","MAQUINARIAS","NO","2","MAQUINARIAS, VARIOS TIPOS DE BULTOS, INCLUYE CAÑOS","0","","2","NO","2014-10-28","0000-00-00","2014-10-28","2014-10-29 10:04:14","2","MOD");
INSERT INTO t_carga_audit VALUES("59","73","1905","4","63","EC01 085684 Z","2","3","NO","953,600","2,5","VARIADOR DE VELOCIDAD","NO","1","","0","","1","NO","2014-10-28","0000-00-00","2014-10-28","2014-10-29 10:04:50","2","MOD");
INSERT INTO t_carga_audit VALUES("60","80","1912","4","68","EC03 019034 E","5","1","NO","10216.810","11","APARATOS PARA PULVERIZACION","NO","1","","0","","1","NO","2014-10-28","0000-00-00","2014-10-29","2014-10-29 10:05:19","2","MOD");
INSERT INTO t_carga_audit VALUES("61","83","1915","4","70","EC01 085830 J","10","1","NO","8310","14","VINO","NO","1","","0","","1","NO","2014-10-28","0000-00-00","2014-10-29","2014-10-29 10:06:15","2","MOD");
INSERT INTO t_carga_audit VALUES("62","82","1914","4","70","EC01 085822 K","14","1","NO","9563","22","VINOS ESPUMANTES","NO","1","","0","","1","NO","2014-10-28","0000-00-00","2014-10-29","2014-10-29 10:06:50","2","MOD");
INSERT INTO t_carga_audit VALUES("63","82","1914","4","70","EC01 085822 K","14","1","NO","9563","22","VINOS ESPUMANTES","NO","1","","0","","1","NO","2014-10-28","0000-00-00","2014-10-29","2014-10-29 10:07:02","2","MOD");
INSERT INTO t_carga_audit VALUES("64","81","1913","4","69","EC01 085464 M","1120","7","NO","13325","100","TRAPOS DE PISO","NO","15","","0","","0","SI","2014-10-28","2014-10-28","2014-10-29","2014-10-29 10:11:36","2","MOD");
INSERT INTO t_carga_audit VALUES("65","19","1849","3","19","EC01 080461 E","4","1","NO","2054","7","MANUFACTURAS DE ALUMINIO","NO","5","","0","","1","SI","2014-10-20","2014-10-28","2014-10-22","2014-10-29 10:13:07","2","MOD");
INSERT INTO t_carga_audit VALUES("66","14","1823","3","14","EC01 081561 F","50","7","NO","665","4","MALLAS","NO","5","","0","","4","SI","2014-10-14","2014-10-28","2014-10-22","2014-10-29 10:13:40","2","MOD");
INSERT INTO t_carga_audit VALUES("67","36","1872","3","34","EC03 018681 L","7","1","NO","2695","7","BOBINAS DE PAPEL","NO","5","","0","","1","SI","2014-10-22","2014-10-28","2014-10-22","2014-10-29 10:14:16","2","MOD");
INSERT INTO t_carga_audit VALUES("68","26","1859","3","25","EC02 000740 U","2","1","NO","143","3","REFRIGERADORES","NO","5","","0","","4","SI","2014-10-20","2014-10-28","2014-10-22","2014-10-29 10:14:52","2","MOD");
INSERT INTO t_carga_audit VALUES("69","85","1917","2","72","14001EC01086060F","1","1","NO","170,00","2","sanitarios","NO","2","","1","43156090","1","NO","2014-10-29","0000-00-00","2014-10-29","2014-10-29 14:07:17","2","INS");
INSERT INTO t_carga_audit VALUES("70","86","1918","4","75","14001EC01080725H","29","7","NO","1337,780","11","MUEBLES DE OFICINA","NO","1","","0","","0","NO","2014-10-29","0000-00-00","2014-10-29","2014-10-29 14:30:53","2","INS");
INSERT INTO t_carga_audit VALUES("71","86","1918","4","75","14001EC01080725H","29","7","NO","1337,780","13","MUEBLES DE OFICINA","NO","1","","0","","0","NO","2014-10-29","0000-00-00","2014-10-29","2014-10-29 14:31:46","2","MOD");
INSERT INTO t_carga_audit VALUES("72","86","1918","4","75","14001EC01080725H","29","7","NO","1337,780","13","MUEBLES DE OFICINA","NO","1","","0","","0","NO","2014-10-29","0000-00-00","2014-10-29","2014-10-29 14:32:00","2","MOD");
INSERT INTO t_carga_audit VALUES("73","87","1919","2","76","14001EC01086154-J","25","1","NO","12144,300","35","Pinturas y Barnices","SI","2","","0","","0","NO","2014-10-29","0000-00-00","2014-10-29","2014-10-29 14:38:08","2","INS");
INSERT INTO t_carga_audit VALUES("74","88","1920","8","77","14001EC01084050C","24","5","NO","160,800","1,50","medicamentos","NO","4","","0","","0","NO","0000-00-00","0000-00-00","2014-10-29","2014-10-29 15:45:21","2","INS");
INSERT INTO t_carga_audit VALUES("75","89","1921","2","78","14001EC01086288R","6","7","SI","320","2","jUGOS Y EXTRACTOS VEGETALES","NO","2","","0","","0","NO","2014-10-29","0000-00-00","2014-10-29","2014-10-29 15:57:43","2","INS");
INSERT INTO t_carga_audit VALUES("76","90","1922","2","0","","30","1","NO",""," CAMION COMPLETO","Kit aparato + aromatizador de ambte","SI","16","","3","","1","NO","2014-10-29","0000-00-00","2014-10-29","2014-10-29 16:12:37","2","INS");
INSERT INTO t_carga_audit VALUES("77","90","1922","2","79","","30","1","NO",""," CAMION COMPLETO","Kit aparato + aromatizador de ambte","SI","16","","3","","1","SI","2014-10-29","2014-10-29","2014-10-29","2014-10-29 16:51:49","2","MOD");
INSERT INTO t_carga_audit VALUES("78","90","1922","2","79","EC03 019171 G","30","1","NO","13779"," CAMION COMPLETO","Kit aparato + aromatizador de ambte","SI","16","","3","","1","SI","2014-10-29","2014-10-29","2014-10-29","2014-10-29 16:52:28","2","MOD");
INSERT INTO t_carga_audit VALUES("79","90","1922","2","79","EC03 019171 G","30","1","NO","13779"," CAMION COMPLETO","Kit aparato + aromatizador de ambte","NO","16","","3","","1","SI","2014-10-29","2014-10-29","2014-10-29","2014-10-29 16:52:46","2","MOD");



DROP TABLE t_carga_fotos;

CREATE TABLE `t_carga_fotos` (
  `id_carga_fotos` int(11) NOT NULL AUTO_INCREMENT,
  `id_carga` int(11) DEFAULT NULL,
  `img` varchar(130) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `date_added` date DEFAULT NULL,
  `last_update` datetime DEFAULT NULL,
  `id_user_last_update` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_carga_fotos`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO t_carga_fotos VALUES("1","1","2991e780f2d1fe5234de9217a70f169c_1.jpg","","2014-10-14","2014-10-14 19:55:01","1");
INSERT INTO t_carga_fotos VALUES("2","2","df4d2bfb64e15538d3410bcbe9bf8edf_1.jpg","test","2014-10-16","2014-10-16 19:44:24","2");
INSERT INTO t_carga_fotos VALUES("3","2","df4d2bfb64e15538d3410bcbe9bf8edf_3.jpg","tttttttt","2014-10-16","2014-10-16 19:44:32","2");



DROP TABLE t_clientes;

CREATE TABLE `t_clientes` (
  `id_clientes` int(11) NOT NULL AUTO_INCREMENT,
  `id_clientes_tipos` int(11) DEFAULT '1',
  `id_clientes_estados` int(11) DEFAULT '1',
  `nombre` varchar(50) DEFAULT NULL,
  `razon_social` varchar(50) DEFAULT NULL,
  `cuit` varchar(50) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `ciudad` varchar(50) DEFAULT NULL,
  `provincia` varchar(50) DEFAULT NULL,
  `id_pais` int(11) DEFAULT '10',
  `date_added` date DEFAULT NULL,
  `last_update` datetime DEFAULT NULL,
  `id_user_last_update` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_clientes`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

INSERT INTO t_clientes VALUES("1","1","1","Networktech","Networktech Corporate Services SRL","30711283818","Bartolome Mitre 811 5H","Capital Federal","Buenos Aires","10","2014-10-30","2014-10-30 00:00:00","1");



DROP TABLE t_clientes_estados;

CREATE TABLE `t_clientes_estados` (
  `id_clientes_estados` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_clientes_estados`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO t_clientes_estados VALUES("1","Activo");
INSERT INTO t_clientes_estados VALUES("2","Pendiente");
INSERT INTO t_clientes_estados VALUES("3","Inactivo");
INSERT INTO t_clientes_estados VALUES("4","Baja");
INSERT INTO t_clientes_estados VALUES("5","Fraude");



DROP TABLE t_clientes_tipos;

CREATE TABLE `t_clientes_tipos` (
  `id_clientes_tipos` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_clientes_tipos`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO t_clientes_tipos VALUES("1","Pyme");
INSERT INTO t_clientes_tipos VALUES("2","Empresa grande");



DROP TABLE t_cotizacion;

CREATE TABLE `t_cotizacion` (
  `id_cotizacion` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_validez_hasta` date DEFAULT NULL,
  `id_empresas` int(11) DEFAULT NULL,
  `incoterm` varchar(50) DEFAULT NULL,
  `id_origen` int(11) DEFAULT NULL,
  `id_destino` int(11) DEFAULT NULL,
  `descripcion_mercaderia` text,
  `bultos` varchar(20) DEFAULT NULL,
  `id_tipo_bulto` int(11) DEFAULT NULL,
  `m3` varchar(50) DEFAULT NULL,
  `peso_bruto` varchar(50) DEFAULT NULL,
  `notas` text,
  `carga_imo` varchar(50) DEFAULT NULL,
  `valor_fob` varchar(50) DEFAULT NULL,
  `valor_seguro` varchar(50) DEFAULT NULL,
  `valor_flete` varchar(50) DEFAULT NULL,
  `date_added` date DEFAULT NULL,
  `last_udate` datetime DEFAULT NULL,
  `id_user_last_update` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_cotizacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




DROP TABLE t_cotizaciones;

CREATE TABLE `t_cotizaciones` (
  `id_cotizacion` int(11) NOT NULL AUTO_INCREMENT,
  `id_clientes` int(11) DEFAULT NULL,
  `origen` varchar(50) DEFAULT NULL,
  `destino` varchar(50) DEFAULT NULL,
  `m3` varchar(10) DEFAULT NULL,
  `peso` varchar(10) DEFAULT NULL,
  `apilable` enum('SI','NO') DEFAULT 'NO',
  `carga_imo` enum('SI','NO') DEFAULT 'NO',
  `valor_mercaderia` varchar(20) DEFAULT NULL,
  `condicion_venta` enum('FOB','CIF') DEFAULT 'FOB',
  `bonificacion_tipo` enum('Valor','Porcentaje') DEFAULT 'Porcentaje',
  `bonificacion` decimal(10,2) DEFAULT '0.00',
  `comision_tipo` enum('Valor','Porcentaje') DEFAULT 'Porcentaje',
  `comision` decimal(10,2) DEFAULT '0.00',
  `date_added` date DEFAULT NULL,
  `last_update` datetime DEFAULT NULL,
  `id_user_last_update` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_cotizacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




DROP TABLE t_despachantes;

CREATE TABLE `t_despachantes` (
  `id_despachantes` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `domicilio` varchar(100) DEFAULT NULL,
  `ciudad` varchar(50) DEFAULT NULL,
  `provincia` varchar(50) DEFAULT NULL,
  `id_pais` int(11) DEFAULT NULL,
  `codigo_postal` varchar(20) DEFAULT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  `radio` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `notas` text,
  `cuit` varchar(20) DEFAULT NULL,
  `date_added` date DEFAULT NULL,
  `last_update` datetime DEFAULT NULL,
  `id_user_last_update` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_despachantes`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO t_despachantes VALUES("1","SELLANES; Braulio Marcelo","Tucuman 141","CABA","Bs. As","0","1049","43156090","","","","20-07377715-2","2014-10-29","2014-10-29 14:06:30","2");
INSERT INTO t_despachantes VALUES("2","","","","","0","","","","","","","2014-10-29","2014-10-29 14:06:44","2");
INSERT INTO t_despachantes VALUES("3","BELLAVICH, PABLO ANDRES","","","","0","","","","","","20-22098824-5","2014-10-29","2014-10-29 16:12:07","2");



DROP TABLE t_destino;

CREATE TABLE `t_destino` (
  `id_destino` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `codigo` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`id_destino`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

INSERT INTO t_destino VALUES("1","Argentina","AR");
INSERT INTO t_destino VALUES("2","Uruguay","UY");
INSERT INTO t_destino VALUES("3","Chile","CL");
INSERT INTO t_destino VALUES("4","Bolivia","BO");
INSERT INTO t_destino VALUES("5","Estados Unidos","US");
INSERT INTO t_destino VALUES("6","Brasil","BR");
INSERT INTO t_destino VALUES("7","Mexico","Mex");
INSERT INTO t_destino VALUES("8","Paraguay","Py");
INSERT INTO t_destino VALUES("9","Italia","ITA");
INSERT INTO t_destino VALUES("10","PANAMA","PAN");
INSERT INTO t_destino VALUES("11","Paaguay","Py");



DROP TABLE t_empresas;

CREATE TABLE `t_empresas` (
  `id_empresas` int(11) NOT NULL AUTO_INCREMENT,
  `id_empresas_estados` int(11) DEFAULT NULL,
  `razon_social` varchar(50) DEFAULT NULL,
  `cuit` varchar(20) DEFAULT NULL,
  `domicilio` varchar(150) DEFAULT NULL,
  `ciudad` varchar(50) DEFAULT NULL,
  `provincia` varchar(50) DEFAULT NULL,
  `id_pais` int(11) DEFAULT NULL,
  `codigo_postal` varchar(20) DEFAULT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  `contacto_operativo` varchar(50) DEFAULT NULL,
  `email` varchar(130) DEFAULT NULL,
  `id_despachantes` int(11) DEFAULT NULL,
  `notas` text,
  `date_added` date DEFAULT NULL,
  `last_update` datetime DEFAULT NULL,
  `id_user_last_update` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_empresas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




DROP TABLE t_empresas_estados;

CREATE TABLE `t_empresas_estados` (
  `id_empresas_estados` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_empresas_estados`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO t_empresas_estados VALUES("1","Activo");
INSERT INTO t_empresas_estados VALUES("2","Inactivo");
INSERT INTO t_empresas_estados VALUES("3","Baja");



DROP TABLE t_exportador;

CREATE TABLE `t_exportador` (
  `id_exportador` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `razon_social` varchar(100) DEFAULT NULL,
  `cuit` varchar(20) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `localidad` varchar(50) DEFAULT NULL,
  `id_iva` int(11) DEFAULT NULL,
  `date_added` date DEFAULT NULL,
  `last_update` datetime DEFAULT NULL,
  `id_user_last_update` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_exportador`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8;

INSERT INTO t_exportador VALUES("1","Jose","","","","","","2014-10-14","2014-10-14 19:43:22","1");
INSERT INTO t_exportador VALUES("2","TYCO ELECTRONICS","TYCO ELECTRONICS ARGENTINA SA","30-52176579-4","","","","2014-10-15","2014-10-15 10:26:22","2");
INSERT INTO t_exportador VALUES("3","RAFAEL ENRIQUE ALONSO","RAFAEL ENRIQUE ALONSO","20-10083846-0","","","","2014-10-15","2014-10-15 10:32:31","2");
INSERT INTO t_exportador VALUES("4","PLASTICOS DISE SA","PLASTICOS DISE SA","30-57317742-4","","","","2014-10-15","2014-10-15 10:41:04","2");
INSERT INTO t_exportador VALUES("5","QUIMSUR SA","QUIMSUR SA","30-70941133-7","","","","2014-10-15","2014-10-15 10:48:45","2");
INSERT INTO t_exportador VALUES("6","QUIMSUR SA","QUIMSUR SA","30-70941133-7","","","","2014-10-15","2014-10-15 10:48:48","2");
INSERT INTO t_exportador VALUES("7","GIVAUDAN ARGENTINA SA","GIVAUDAN ARGENTINA SA","30-53619620-6","","","","2014-10-15","2014-10-15 10:53:01","2");
INSERT INTO t_exportador VALUES("8","FIVEMASA SA","FIVEMASA SA","33-71147902-9","","","","2014-10-15","2014-10-15 11:00:33","2");
INSERT INTO t_exportador VALUES("9","N FERRARIS SA","N FERRARIS SA","30-71020467-1","","","","2014-10-15","2014-10-15 11:22:27","2");
INSERT INTO t_exportador VALUES("10","TOYOTA ARGENTINA SA","TOYOTA ARGENTINA SA","33-67913936-9","","","","2014-10-15","2014-10-15 11:25:14","2");
INSERT INTO t_exportador VALUES("11","CORVEN SACIF","CORVEN SACIF","30-56799813-0","","","1","2014-10-15","2014-10-19 18:58:32","1");
INSERT INTO t_exportador VALUES("12","L.V. SPADA","L.V. SPADA SRL","30-59269928-8","CALLE 113 Nº 2538","SAN MARTIN - BUENOS AIRES","11","2014-10-22","2014-10-22 11:11:02","2");
INSERT INTO t_exportador VALUES("13","HOISTING SA","HOISTING SA","30-65547713-2","SANTIAGO DEL ESTERO 345 PISO 2","CIUDAD DE BUENOS AIRES","11","2014-10-22","2014-10-22 11:24:40","2");
INSERT INTO t_exportador VALUES("14","AGROFLOS SRL","AGROFLOS SRL","30-71458368-5","CAVASSA 3171","CASEROS - PCIA BUENOS AIRES","11","2014-10-22","2014-10-22 11:27:26","2");
INSERT INTO t_exportador VALUES("15","PHILIPS ARGENTINA SA","PHILIPS ARGENTINA SA","30-50052723-0","VEDIA 3892 ","CAPITAL FEDERAL","11","2014-10-22","2014-10-22 11:30:26","2");
INSERT INTO t_exportador VALUES("16","IFF SRL","IFF SRL","30-52995208-9","EINSTEIN 824","GARIN - PCIA DE BUENOS AIRES","11","2014-10-22","2014-10-22 11:32:54","2");
INSERT INTO t_exportador VALUES("17","INDUSTRIAS DELGADO SA","INDUSTRIAS DELGADO SA","30-55535584-6","FRAY M. DE TORRES 3400","LUJAN - PCIA DE BUENOS AIRES","11","2014-10-22","2014-10-22 11:35:06","2");
INSERT INTO t_exportador VALUES("18","CENTRO SA","CENTRO SA","30-57900711-3","ESMERALDA 740 OFICINA 601","CAPITAL FEDERAL","11","2014-10-22","2014-10-22 11:38:27","2");
INSERT INTO t_exportador VALUES("19","EL BIT SRL","EL BIT SRL","30-61627286-8","SOCRATES 724","CIUDADELA - PCIA BUENOS AIRES","11","2014-10-22","2014-10-22 11:42:20","2");
INSERT INTO t_exportador VALUES("20","ROTO FRANK LATINA SA","ROTO FRANK LATINA SA","30-71014397-4","AV ADER 3860","CARAPACHAY - PCIA BUENOS AIRES","11","2014-10-22","2014-10-22 11:44:50","2");
INSERT INTO t_exportador VALUES("21","LIPROT SRL","LIPROT SRL","30-71145438-8","CALLE ROUCO 980 ","VILLA LYNCH - SAN MARTIN . PCIA BUENOS AIRES","11","2014-10-22","2014-10-22 11:47:03","2");
INSERT INTO t_exportador VALUES("22","AUTOQUEM SA","AUTOQUEM SA","30-57767639-5","PANAMA 2344 ","MARTINEZ - PCIA DE BUENOS AIRES","11","2014-10-22","2014-10-22 11:49:24","2");
INSERT INTO t_exportador VALUES("23","PAPELERA BERAZATEGUI SAIC","PAPELERA BERAZATEGUI SAIC","30-50383874-1","LAVALLE 779","BERAZATEGUI - PCIA BUENOS AIRES","11","2014-10-22","2014-10-22 11:51:18","2");
INSERT INTO t_exportador VALUES("24","BIC ARGENTINA SA","BIC ARGENTINA SA","30-51577243-6","RUTA PANAMERICANA ACCESO NORTE 2121","BOULOGNE - PCIA BUENOS AIRES","11","2014-10-22","2014-10-22 11:53:18","2");
INSERT INTO t_exportador VALUES("25","IADEV SA","IADEV SA","30-70713289-9","RONDEAU 3429 ","CAPITAL FEDERAL","11","2014-10-22","2014-10-22 11:57:17","2");
INSERT INTO t_exportador VALUES("26","ENVASES JOHN SA","ENVASES JOHN SA","33-59702131-9","AV MITRE 5340","CASEROS - PCIA BUENOS AIRES","11","2014-10-22","2014-10-22 11:59:35","2");
INSERT INTO t_exportador VALUES("27","BRONAL SA","BRONAL SA","30-50472907-5","SIVORI 4861","MUNRO - PCIA DE BUENOS AIRES","11","2014-10-22","2014-10-22 12:03:30","2");
INSERT INTO t_exportador VALUES("28","BOLLAND Y CIA SA","BOLLAND Y CIA SA","30-53779210-4","SUIPACHA 238","CAPITAL FEDERAL","11","2014-10-22","2014-10-22 12:05:30","2");
INSERT INTO t_exportador VALUES("29","FRIO INGENIERIA SA","FRIO INGENIERIA SA","33-70953420-9","ZAPIOLA 1875","LUJAN - PCIA DE BUENOS AIRES","11","2014-10-22","2014-10-22 12:09:07","2");
INSERT INTO t_exportador VALUES("30","FLEXIBLES PLASTINOR SA","FLEXIBLES PLASTINOR SA","33-62689171-9","AV SAN MARTIN 2235","BELLAVISTA- PCIA DE BUENOS AIRES","11","2014-10-22","2014-10-22 12:12:17","2");
INSERT INTO t_exportador VALUES("31","NEYGI MOVING SRL","NEYGI MOVING SRL","30-71433070-1","JUNCAL 754 PISO 9 OF18","CIUDAD DE BUENOS AIRES","11","2014-10-22","2014-10-22 12:19:08","2");
INSERT INTO t_exportador VALUES("32","SANLUFILM SA","SANLUFILM SA","30-60851842-4","TRIUNVIRATO 5474 1º PISO","CIUDAD DE BUENOS AIRES","11","2014-10-22","2014-10-22 12:21:51","2");
INSERT INTO t_exportador VALUES("33","CINTOLO HNOS METALURGICA SAIC","CINTOLO HNOS METALURGICA SAIC","30-50077652-4","BRANDSEN 1165","ITUZAINGO - PCIA DE BUENOS AIRES","11","2014-10-22","2014-10-22 12:28:41","2");
INSERT INTO t_exportador VALUES("34","PAPELBRIL SACI","PAPELBRIL SACI","33-50030312-9","LARRAZABAL 2024","CIUDAD DE BUENOS AIRES","11","2014-10-22","2014-10-22 12:31:30","2");
INSERT INTO t_exportador VALUES("35","CASSIBA SA","CASSIBA SA","30-50289318-8","AV MITRE 3976","CASEROS - PCIA DE BUENOS AIRES","11","2014-10-22","2014-10-22 12:34:20","2");
INSERT INTO t_exportador VALUES("36","INOXPLA INGENIERIA SRL","INOXPLA INGENIERIA SRL","30-61121962-4","AV 197 Nº 522","LISANDRO OLMOS - PCIA DE BUENOS AIRES","11","2014-10-22","2014-10-22 12:36:27","2");
INSERT INTO t_exportador VALUES("37","ASOCIACION CASA EDITORA SUDAMERICANA","ASOCIACION CASA EDITORA SUDAMERICANA","30-50011757-1","AV SAN MARTIN 4555","FLORIDA - PCIA DE BUENOS AIRES","11","2014-10-22","2014-10-22 12:38:40","2");
INSERT INTO t_exportador VALUES("38","KOLORS KEVARKIAN SA","KOLORS KEVARKIAN SA","30-70818199-0","JOSE MARMOL 1839","CIUDAD DE BUENOS AIRES","11","2014-10-22","2014-10-22 12:41:24","2");
INSERT INTO t_exportador VALUES("39","PLASTICOS CASTRO HNOS SACIFIA","PLASTICOS CASTRO HNOS SACIFIA","30-50403903-6","SAN BLAS 3976","CIUDAD DE BUENOS AIRES","11","2014-10-22","2014-10-22 12:44:30","2");
INSERT INTO t_exportador VALUES("40","ARCH QUIMICA SRL","ARCH QUIMICA SRL","30-69229293-2","SEPTIEMBRE 151","ESCOBAR - PCIA DE BUENOS AIRES","11","2014-10-22","2014-10-22 15:02:07","2");
INSERT INTO t_exportador VALUES("41","FUNDEMAP SA","FUNDEMAP SA","30-56376760-0","RUTA PROV Nº 10 Y AUTOPISTA ROSARIO","SAN LORENZO SANTA FE","11","2014-10-23","2014-10-23 13:12:58","2");
INSERT INTO t_exportador VALUES("42","ARLA FOODS INGREDIENTS SA","ARLA FOODS INGREDIENTS SA","30-70726097-8","AV CORRIENTES 345 3º PISO","CAPITAL FEDERAL","11","2014-10-23","2014-10-23 13:17:17","2");
INSERT INTO t_exportador VALUES("43","UNITS SUDAMERICANA SA","UNITS SUDAMERICANA SA","30-69330492-6","SANTA MARIA DEL BUEN AYRE 362/4","CAPITAL FEDERAL","11","2014-10-23","2014-10-23 13:20:32","2");
INSERT INTO t_exportador VALUES("44","INDIOQUIMICA SA","INDIOQUIMICA SA","30-52214352-5","GUATAMBU 1780 - BURZACO","PCIA DE BUENOS AIRES","11","2014-10-23","2014-10-23 13:22:36","2");
INSERT INTO t_exportador VALUES("45","ELISEO GARCIA SA","ELISEO GARCIA SA","30-70940158-7","CATAMARCA 3556","SAN ANDRES - PCIA DE BUENOS AIRES","11","2014-10-23","2014-10-23 13:25:59","2");
INSERT INTO t_exportador VALUES("46","PROCEGRAF SRL","PROCEGRAF SRL","30-66370499-7","DR IGNACIO ARIETA 4042","SAN JUSTO - PCIA DE BUENOS AIRES","11","2014-10-23","2014-10-23 13:27:56","2");
INSERT INTO t_exportador VALUES("47","FRANCISCO JUAN RIO","FRANCISCO JUAN RIO","20-04206308-9","FRAY J STA MARIA DE ORO 1852 1º A","CIUDAD DE BUENOS AIRES","3","2014-10-24","2014-10-24 15:15:14","2");
INSERT INTO t_exportador VALUES("48","VETIFARMA SA","VETIFARMA SA","RUTA 2 Y 520","PARQUE IND LA PLATA","LA PLATA - PCIA DE BUENOS AIRES","11","2014-10-24","2014-10-24 15:18:19","2");
INSERT INTO t_exportador VALUES("49","WAICON VISION SA","WAICON VISION SA","30-51677561-7","ADOLFO ALSINA 1541","FLORIDA - PCIA DE BUENOS AIRES","11","2014-10-24","2014-10-24 15:30:01","2");
INSERT INTO t_exportador VALUES("50","ORBIS MERTIG SAIC","ORBIS MERTIG SAIC","20-50059755-7","RECONQUISTA 336","CAPITAL FEDERAL","11","2014-10-24","2014-10-24 15:33:48","2");
INSERT INTO t_exportador VALUES("51","CRISTACOL SA","CRISTACOL SA","30-64258045-7","PARANA 783 PISO 10","CIUDAD DE BUENOS AIRES","11","2014-10-24","2014-10-24 15:37:06","2");
INSERT INTO t_exportador VALUES("52","PEPSICO DE ARGENTINA SRL","PEPSICO DE ARGENTINA SRL","30-53764771-6","CALLE 8 ENTRE 3 Y 5","MAR DEL PLATA - PCIA DE BUENOS AIRES","11","2014-10-24","2014-10-24 15:40:16","2");
INSERT INTO t_exportador VALUES("53","MENOYO SA","MENOYO SA","30-56973541-2","AV MITRE 3116 - MUNRO","PCIA DE BUENOS AIRES","11","2014-10-24","2014-10-24 15:43:52","2");
INSERT INTO t_exportador VALUES("54","SAIGRA","SAIGRA","30-57498450-1","BERON DE ASTRADA 2440","CAPITAL FEDERAL","11","2014-10-27","2014-10-27 10:17:46","2");
INSERT INTO t_exportador VALUES("55","RUGGERO VACCARI Y ASOCIADOS SA","RUGGERO VACCARI Y ASOCIADOS SA","30-63840616-7","RECONQUISTA 715/19 3ºA-B","CAPITAL FEDERAL","11","2014-10-27","2014-10-27 10:23:18","2");
INSERT INTO t_exportador VALUES("56","MAPRIN SACI","MAPRIN SACI","30-53707231-4","AV GARCIA DEL RIO 3095","CAPITAL FEDERAL","11","2014-10-27","2014-10-27 10:27:18","2");
INSERT INTO t_exportador VALUES("57","PEISA","PEISA","30-57910316-3","AV LIBERTADOR 6655","CAPITAL FEDERAL","11","2014-10-27","2014-10-27 10:29:28","2");
INSERT INTO t_exportador VALUES("58","INDUVIAN SRL","INDUVIAN SRL","30-61009844-0","HIPOLITO IRIGOYEN 4552 - FLORIDA","PCIA DE BUENOS AIRES","11","2014-10-27","2014-10-27 10:32:23","2");
INSERT INTO t_exportador VALUES("59","SAPORITI SA","SAPORITI SA","30-53670643-3","BARTOLOME MITRE 2364/66","CAPITAL FEDERAL","11","2014-10-27","2014-10-27 10:37:04","2");
INSERT INTO t_exportador VALUES("60","SABORES Y FRAGANCIAS SA","SABORES Y FRAGANCIAS SA","30-57766117-7","BRANDZEN 883","SAN FERNANDO - PCIA DE BUENOS AIRES","11","2014-10-27","2014-10-27 14:43:01","2");
INSERT INTO t_exportador VALUES("61","J.C. MULLER SA","J.C. MULLER SA","30-71222979-5","REPUBLICA DEL LIBANO 1373","QUILMES OESTE - PCIA DE BUENOS AIRES","0","2014-10-27","2014-10-27 14:44:00","2");
INSERT INTO t_exportador VALUES("62","MAYEKAWA ARGENTINA SA","MAYEKAWA ARGENTINA SA","30-57311898-3","DR VALENTIN GOMEZ 151 UF 41-42","HAEDO - PTO MORON - PCIA DE BUENOS AIRES","11","2014-10-27","2014-10-27 15:24:50","2");
INSERT INTO t_exportador VALUES("63","GARRO FABRIL SA","GARRO FABRIL SA","30-53930138-8","COLON 1778 ","VENADO TUERTO - SANTA FE","11","2014-10-28","2014-10-28 10:04:14","2");
INSERT INTO t_exportador VALUES("64","XERIUM ARGENTINA SA","XERIUM ARGENTINA SA","30-54682779-4","CALLE 109 Nº 809","BERAZATEGUI - PCIA BUENOS AIRES","11","2014-10-28","2014-10-28 10:23:45","2");
INSERT INTO t_exportador VALUES("65","VERITEC SA","VERITEC SA","30-60727963-9","FGTA. SARMIENTO 892","CAPITAL FEDERAL","11","2014-10-28","2014-10-28 11:54:58","2");
INSERT INTO t_exportador VALUES("66","PANTYMED SA","PANTYMED SA","30-59163398-4","FGTA PRESIDENTE SARMIENTO 1569","CAPITAL FEDERAL","11","2014-10-28","2014-10-28 11:57:59","2");
INSERT INTO t_exportador VALUES("67","PLANTAS FAITFUL SA","PLANTAS FAITFUL SA","30-63263011-1","LOS TULIPANES 3050","BELEN DE ESCOBAR - PCIA DE BUENOS AIRES","11","2014-10-28","2014-10-28 12:10:54","2");
INSERT INTO t_exportador VALUES("68","VALVULAS FADEVA SA","VALVULAS FADEVA SA","30-58734124-3","SAN PEDRO 1795","LA TABLADA - PCIA DE BUENOS AIRES","11","2014-10-29","2014-10-29 09:50:56","2");
INSERT INTO t_exportador VALUES("69","ACORAZADO SA","ACORAZADO SA","30-62945282-2","RUTA 2 KM 55 PQUE INDUSTRIAL LA PLATA","LA PLATA - PCIA DE BUENOS AIRES","11","2014-10-29","2014-10-29 09:55:30","2");
INSERT INTO t_exportador VALUES("70","DIAGEO ARGENTINA SA","DIAGEO ARGENTINA SA","30-50370362-5","BOUCHARD 680 PISO 7","CAPITAL FEDERAL","11","2014-10-29","2014-10-29 09:58:08","2");
INSERT INTO t_exportador VALUES("71","MANULI PACKAGING ARGENTINA SA","MANULI PACKAGING ARGENTINA SA","30-69730926-4","RUTA 9 PANAMERICANA COLECTORA OESTE KM 52","ESCOBAR - PCIA DE BUENOS AIRES","11","2014-10-29","2014-10-29 10:02:11","2");
INSERT INTO t_exportador VALUES("72","TANQUES ARGENTINOS S.A.","","30-70705758-7","Talcahuano, 1101/03","florida, pcia Bs. As.","11","2014-10-29","2014-10-29 13:59:06","2");
INSERT INTO t_exportador VALUES("73","","","","","","0","2014-10-29","2014-10-29 13:59:15","2");
INSERT INTO t_exportador VALUES("74","","PRODMOBI S.A.","30-71006955-3","FERRE 2674","CAPITAL FEDERAL","11","2014-10-29","2014-10-29 14:20:43","2");
INSERT INTO t_exportador VALUES("75","PRODMOBI S.A.","","30-71006955-3","FERRE 2674","CAPITAL FEDERAL","11","2014-10-29","2014-10-29 14:27:33","2");
INSERT INTO t_exportador VALUES("76","QUIMICA DEL NORTE S.A.","","30-61496712-5","CIUDAD DE LA PAZ 2426- 6°","CAPITAL FEDERAL","11","2014-10-29","2014-10-29 14:35:01","2");
INSERT INTO t_exportador VALUES("77","FORTBENTON CO LABORATORIES S.A.","","30-50411342-2","ESCALADA 133","CAPITAL FEDERAL","11","2014-10-29","2014-10-29 15:44:15","2");
INSERT INTO t_exportador VALUES("78","KROMBERG FINE CHEMICAL SRL","","30-70961414-9","SETIEMBRE 151- UF2","ESCOBAR - PCIA DE BUENOS AIRES","11","2014-10-29","2014-10-29 15:57:00","2");
INSERT INTO t_exportador VALUES("79","QUERUCLOR SRL","QUERUCLOR SRL","30-69132357-5","CAMINO DE CINTURA Nº 8349","9 DE ABRIL - PCIA DE BUENOS AIRES","11","2014-10-29","2014-10-29 16:51:42","2");



DROP TABLE t_iva;

CREATE TABLE `t_iva` (
  `id_iva` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_iva`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

INSERT INTO t_iva VALUES("1","IVA Sujeto Exento");
INSERT INTO t_iva VALUES("2","Consumidor Final");
INSERT INTO t_iva VALUES("3","Responsable Monotributo");
INSERT INTO t_iva VALUES("4","Proveedor del Exterior");
INSERT INTO t_iva VALUES("5","Cliente del Exterior");
INSERT INTO t_iva VALUES("6","IVA Liberado - Ley Nº 19.640");
INSERT INTO t_iva VALUES("7","Pequeño Contribuyente Eventual");
INSERT INTO t_iva VALUES("8","Monotributista Social");
INSERT INTO t_iva VALUES("9","Pequeño Contribuyente Eventual Social");
INSERT INTO t_iva VALUES("10","IVA No Alcanzado");
INSERT INTO t_iva VALUES("11","IVA Responsable Inscripto");



DROP TABLE t_operacion;

CREATE TABLE `t_operacion` (
  `id_operacion` int(11) NOT NULL AUTO_INCREMENT,
  `id_cotizacion` int(11) DEFAULT NULL,
  `id_exportador` int(11) DEFAULT NULL,
  `id_exportador_despachantes` int(11) DEFAULT NULL,
  `id_importador` int(11) DEFAULT NULL,
  `id_importador_despachantes` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `id_operacion_estado` int(11) DEFAULT NULL,
  `lista_empaque` text,
  `factura` varchar(50) DEFAULT NULL,
  `permiso_embarque` varchar(50) DEFAULT NULL,
  `certificado_origen` varchar(50) DEFAULT NULL,
  `poliza` varchar(50) DEFAULT NULL,
  `manifiesto` varchar(50) DEFAULT NULL,
  `carta_porte` varchar(50) DEFAULT NULL,
  `varios` text,
  `id_factura` int(11) DEFAULT NULL,
  `date_added` date DEFAULT NULL,
  `last_update` datetime DEFAULT NULL,
  `id_user_last_update` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_operacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




DROP TABLE t_operacion_estado;

CREATE TABLE `t_operacion_estado` (
  `id_operacion_estado` int(11) NOT NULL AUTO_INCREMENT,
  `nombre>` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_operacion_estado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




DROP TABLE t_operacion_fotos;

CREATE TABLE `t_operacion_fotos` (
  `id_operacion_fotos` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL,
  `img_original` varchar(100) DEFAULT NULL,
  `date_added` date DEFAULT NULL,
  `last_update` datetime DEFAULT NULL,
  `id_user_last_update` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_operacion_fotos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




DROP TABLE t_pais;

CREATE TABLE `t_pais` (
  `id_pais` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(64) NOT NULL,
  `codigo` char(2) NOT NULL,
  PRIMARY KEY (`id_pais`),
  KEY `IDX_COUNTRIES_NAME` (`nombre`),
  KEY `pais_codigo` (`codigo`)
) ENGINE=MyISAM AUTO_INCREMENT=240 DEFAULT CHARSET=latin1;

INSERT INTO t_pais VALUES("1","Afghanistan","AF");
INSERT INTO t_pais VALUES("2","Albania","AL");
INSERT INTO t_pais VALUES("3","Algeria","DZ");
INSERT INTO t_pais VALUES("4","American Samoa","AS");
INSERT INTO t_pais VALUES("5","Andorra","AD");
INSERT INTO t_pais VALUES("6","Angola","AO");
INSERT INTO t_pais VALUES("7","Anguilla","AI");
INSERT INTO t_pais VALUES("8","Antarctica","AQ");
INSERT INTO t_pais VALUES("9","Antigua and Barbuda","AG");
INSERT INTO t_pais VALUES("10","Argentina","AR");
INSERT INTO t_pais VALUES("11","Armenia","AM");
INSERT INTO t_pais VALUES("12","Aruba","AW");
INSERT INTO t_pais VALUES("13","Australia","AU");
INSERT INTO t_pais VALUES("14","Austria","AT");
INSERT INTO t_pais VALUES("15","Azerbaijan","AZ");
INSERT INTO t_pais VALUES("16","Bahamas","BS");
INSERT INTO t_pais VALUES("17","Bahrain","BH");
INSERT INTO t_pais VALUES("18","Bangladesh","BD");
INSERT INTO t_pais VALUES("19","Barbados","BB");
INSERT INTO t_pais VALUES("20","Belarus","BY");
INSERT INTO t_pais VALUES("21","Belgium","BE");
INSERT INTO t_pais VALUES("22","Belize","BZ");
INSERT INTO t_pais VALUES("23","Benin","BJ");
INSERT INTO t_pais VALUES("24","Bermuda","BM");
INSERT INTO t_pais VALUES("25","Bhutan","BT");
INSERT INTO t_pais VALUES("26","Bolivia","BO");
INSERT INTO t_pais VALUES("27","Bosnia and Herzegowina","BA");
INSERT INTO t_pais VALUES("28","Botswana","BW");
INSERT INTO t_pais VALUES("29","Bouvet Island","BV");
INSERT INTO t_pais VALUES("30","Brazil","BR");
INSERT INTO t_pais VALUES("31","British Indian Ocean Territory","IO");
INSERT INTO t_pais VALUES("32","Brunei Darussalam","BN");
INSERT INTO t_pais VALUES("33","Bulgaria","BG");
INSERT INTO t_pais VALUES("34","Burkina Faso","BF");
INSERT INTO t_pais VALUES("35","Burundi","BI");
INSERT INTO t_pais VALUES("36","Cambodia","KH");
INSERT INTO t_pais VALUES("37","Cameroon","CM");
INSERT INTO t_pais VALUES("38","Canada","CA");
INSERT INTO t_pais VALUES("39","Cape Verde","CV");
INSERT INTO t_pais VALUES("40","Cayman Islands","KY");
INSERT INTO t_pais VALUES("41","Central African Republic","CF");
INSERT INTO t_pais VALUES("42","Chad","TD");
INSERT INTO t_pais VALUES("43","Chile","CL");
INSERT INTO t_pais VALUES("44","China","CN");
INSERT INTO t_pais VALUES("45","Christmas Island","CX");
INSERT INTO t_pais VALUES("46","Cocos (Keeling) Islands","CC");
INSERT INTO t_pais VALUES("47","Colombia","CO");
INSERT INTO t_pais VALUES("48","Comoros","KM");
INSERT INTO t_pais VALUES("49","Congo","CG");
INSERT INTO t_pais VALUES("50","Cook Islands","CK");
INSERT INTO t_pais VALUES("51","Costa Rica","CR");
INSERT INTO t_pais VALUES("52","Cote D\'Ivoire","CI");
INSERT INTO t_pais VALUES("53","Croatia","HR");
INSERT INTO t_pais VALUES("54","Cuba","CU");
INSERT INTO t_pais VALUES("55","Cyprus","CY");
INSERT INTO t_pais VALUES("56","Czech Republic","CZ");
INSERT INTO t_pais VALUES("57","Denmark","DK");
INSERT INTO t_pais VALUES("58","Djibouti","DJ");
INSERT INTO t_pais VALUES("59","Dominica","DM");
INSERT INTO t_pais VALUES("60","Dominican Republic","DO");
INSERT INTO t_pais VALUES("61","East Timor","TP");
INSERT INTO t_pais VALUES("62","Ecuador","EC");
INSERT INTO t_pais VALUES("63","Egypt","EG");
INSERT INTO t_pais VALUES("64","El Salvador","SV");
INSERT INTO t_pais VALUES("65","Equatorial Guinea","GQ");
INSERT INTO t_pais VALUES("66","Eritrea","ER");
INSERT INTO t_pais VALUES("67","Estonia","EE");
INSERT INTO t_pais VALUES("68","Ethiopia","ET");
INSERT INTO t_pais VALUES("69","Falkland Islands (Malvinas)","FK");
INSERT INTO t_pais VALUES("70","Faroe Islands","FO");
INSERT INTO t_pais VALUES("71","Fiji","FJ");
INSERT INTO t_pais VALUES("72","Finland","FI");
INSERT INTO t_pais VALUES("73","France","FR");
INSERT INTO t_pais VALUES("74","France, Metropolitan","FX");
INSERT INTO t_pais VALUES("75","French Guiana","GF");
INSERT INTO t_pais VALUES("76","French Polynesia","PF");
INSERT INTO t_pais VALUES("77","French Southern Territories","TF");
INSERT INTO t_pais VALUES("78","Gabon","GA");
INSERT INTO t_pais VALUES("79","Gambia","GM");
INSERT INTO t_pais VALUES("80","Georgia","GE");
INSERT INTO t_pais VALUES("81","Germany","DE");
INSERT INTO t_pais VALUES("82","Ghana","GH");
INSERT INTO t_pais VALUES("83","Gibraltar","GI");
INSERT INTO t_pais VALUES("84","Greece","GR");
INSERT INTO t_pais VALUES("85","Greenland","GL");
INSERT INTO t_pais VALUES("86","Grenada","GD");
INSERT INTO t_pais VALUES("87","Guadeloupe","GP");
INSERT INTO t_pais VALUES("88","Guam","GU");
INSERT INTO t_pais VALUES("89","Guatemala","GT");
INSERT INTO t_pais VALUES("90","Guinea","GN");
INSERT INTO t_pais VALUES("91","Guinea-bissau","GW");
INSERT INTO t_pais VALUES("92","Guyana","GY");
INSERT INTO t_pais VALUES("93","Haiti","HT");
INSERT INTO t_pais VALUES("94","Heard and Mc Donald Islands","HM");
INSERT INTO t_pais VALUES("95","Honduras","HN");
INSERT INTO t_pais VALUES("96","Hong Kong","HK");
INSERT INTO t_pais VALUES("97","Hungary","HU");
INSERT INTO t_pais VALUES("98","Iceland","IS");
INSERT INTO t_pais VALUES("99","India","IN");
INSERT INTO t_pais VALUES("100","Indonesia","ID");
INSERT INTO t_pais VALUES("101","Iran (Islamic Republic of)","IR");
INSERT INTO t_pais VALUES("102","Iraq","IQ");
INSERT INTO t_pais VALUES("103","Ireland","IE");
INSERT INTO t_pais VALUES("104","Israel","IL");
INSERT INTO t_pais VALUES("105","Italy","IT");
INSERT INTO t_pais VALUES("106","Jamaica","JM");
INSERT INTO t_pais VALUES("107","Japan","JP");
INSERT INTO t_pais VALUES("108","Jordan","JO");
INSERT INTO t_pais VALUES("109","Kazakhstan","KZ");
INSERT INTO t_pais VALUES("110","Kenya","KE");
INSERT INTO t_pais VALUES("111","Kiribati","KI");
INSERT INTO t_pais VALUES("112","Korea, Democratic","KP");
INSERT INTO t_pais VALUES("113","Korea, Republic of","KR");
INSERT INTO t_pais VALUES("114","Kuwait","KW");
INSERT INTO t_pais VALUES("115","Kyrgyzstan","KG");
INSERT INTO t_pais VALUES("116","Lao","LA");
INSERT INTO t_pais VALUES("117","Latvia","LV");
INSERT INTO t_pais VALUES("118","Lebanon","LB");
INSERT INTO t_pais VALUES("119","Lesotho","LS");
INSERT INTO t_pais VALUES("120","Liberia","LR");
INSERT INTO t_pais VALUES("121","Libyan Arab Jamahiriya","LY");
INSERT INTO t_pais VALUES("122","Liechtenstein","LI");
INSERT INTO t_pais VALUES("123","Lithuania","LT");
INSERT INTO t_pais VALUES("124","Luxembourg","LU");
INSERT INTO t_pais VALUES("125","Macau","MO");
INSERT INTO t_pais VALUES("126","Macedonia","MK");
INSERT INTO t_pais VALUES("127","Madagascar","MG");
INSERT INTO t_pais VALUES("128","Malawi","MW");
INSERT INTO t_pais VALUES("129","Malaysia","MY");
INSERT INTO t_pais VALUES("130","Maldives","MV");
INSERT INTO t_pais VALUES("131","Mali","ML");
INSERT INTO t_pais VALUES("132","Malta","MT");
INSERT INTO t_pais VALUES("133","Marshall Islands","MH");
INSERT INTO t_pais VALUES("134","Martinique","MQ");
INSERT INTO t_pais VALUES("135","Mauritania","MR");
INSERT INTO t_pais VALUES("136","Mauritius","MU");
INSERT INTO t_pais VALUES("137","Mayotte","YT");
INSERT INTO t_pais VALUES("138","Mexico","MX");
INSERT INTO t_pais VALUES("139","Micronesia","FM");
INSERT INTO t_pais VALUES("140","Moldova","MD");
INSERT INTO t_pais VALUES("141","Monaco","MC");
INSERT INTO t_pais VALUES("142","Mongolia","MN");
INSERT INTO t_pais VALUES("143","Montserrat","MS");
INSERT INTO t_pais VALUES("144","Morocco","MA");
INSERT INTO t_pais VALUES("145","Mozambique","MZ");
INSERT INTO t_pais VALUES("146","Myanmar","MM");
INSERT INTO t_pais VALUES("147","Namibia","NA");
INSERT INTO t_pais VALUES("148","Nauru","NR");
INSERT INTO t_pais VALUES("149","Nepal","NP");
INSERT INTO t_pais VALUES("150","Netherlands","NL");
INSERT INTO t_pais VALUES("151","Netherlands Antilles","AN");
INSERT INTO t_pais VALUES("152","New Caledonia","NC");
INSERT INTO t_pais VALUES("153","New Zealand","NZ");
INSERT INTO t_pais VALUES("154","Nicaragua","NI");
INSERT INTO t_pais VALUES("155","Niger","NE");
INSERT INTO t_pais VALUES("156","Nigeria","NG");
INSERT INTO t_pais VALUES("157","Niue","NU");
INSERT INTO t_pais VALUES("158","Norfolk Island","NF");
INSERT INTO t_pais VALUES("159","Northern Mariana Islands","MP");
INSERT INTO t_pais VALUES("160","Norway","NO");
INSERT INTO t_pais VALUES("161","Oman","OM");
INSERT INTO t_pais VALUES("162","Pakistan","PK");
INSERT INTO t_pais VALUES("163","Palau","PW");
INSERT INTO t_pais VALUES("164","Panama","PA");
INSERT INTO t_pais VALUES("165","Papua New Guinea","PG");
INSERT INTO t_pais VALUES("166","Paraguay","PY");
INSERT INTO t_pais VALUES("167","Peru","PE");
INSERT INTO t_pais VALUES("168","Philippines","PH");
INSERT INTO t_pais VALUES("169","Pitcairn","PN");
INSERT INTO t_pais VALUES("170","Poland","PL");
INSERT INTO t_pais VALUES("171","Portugal","PT");
INSERT INTO t_pais VALUES("172","Puerto Rico","PR");
INSERT INTO t_pais VALUES("173","Qatar","QA");
INSERT INTO t_pais VALUES("174","Reunion","RE");
INSERT INTO t_pais VALUES("175","Romania","RO");
INSERT INTO t_pais VALUES("176","Russian Federation","RU");
INSERT INTO t_pais VALUES("177","Rwanda","RW");
INSERT INTO t_pais VALUES("178","Saint Kitts and Nevis","KN");
INSERT INTO t_pais VALUES("179","Saint Lucia","LC");
INSERT INTO t_pais VALUES("180","Saint Vincent and the Grenadines","VC");
INSERT INTO t_pais VALUES("181","Samoa","WS");
INSERT INTO t_pais VALUES("182","San Marino","SM");
INSERT INTO t_pais VALUES("183","Sao Tome and Principe","ST");
INSERT INTO t_pais VALUES("184","Saudi Arabia","SA");
INSERT INTO t_pais VALUES("185","Senegal","SN");
INSERT INTO t_pais VALUES("186","Seychelles","SC");
INSERT INTO t_pais VALUES("187","Sierra Leone","SL");
INSERT INTO t_pais VALUES("188","Singapore","SG");
INSERT INTO t_pais VALUES("189","Slovakia","SK");
INSERT INTO t_pais VALUES("190","Slovenia","SI");
INSERT INTO t_pais VALUES("191","Solomon Islands","SB");
INSERT INTO t_pais VALUES("192","Somalia","SO");
INSERT INTO t_pais VALUES("193","South Africa","ZA");
INSERT INTO t_pais VALUES("194","South Georgia","GS");
INSERT INTO t_pais VALUES("195","Spain","ES");
INSERT INTO t_pais VALUES("196","Sri Lanka","LK");
INSERT INTO t_pais VALUES("197","St. Helena","SH");
INSERT INTO t_pais VALUES("198","St. Pierre and Miquelon","PM");
INSERT INTO t_pais VALUES("199","Sudan","SD");
INSERT INTO t_pais VALUES("200","Suriname","SR");
INSERT INTO t_pais VALUES("201","Svalbard and Jan Mayen Islands","SJ");
INSERT INTO t_pais VALUES("202","Swaziland","SZ");
INSERT INTO t_pais VALUES("203","Sweden","SE");
INSERT INTO t_pais VALUES("204","Switzerland","CH");
INSERT INTO t_pais VALUES("205","Syrian Arab Republic","SY");
INSERT INTO t_pais VALUES("206","Taiwan","TW");
INSERT INTO t_pais VALUES("207","Tajikistan","TJ");
INSERT INTO t_pais VALUES("208","Tanzania, United Republic of","TZ");
INSERT INTO t_pais VALUES("209","Thailand","TH");
INSERT INTO t_pais VALUES("210","Togo","TG");
INSERT INTO t_pais VALUES("211","Tokelau","TK");
INSERT INTO t_pais VALUES("212","Tonga","TO");
INSERT INTO t_pais VALUES("213","Trinidad and Tobago","TT");
INSERT INTO t_pais VALUES("214","Tunisia","TN");
INSERT INTO t_pais VALUES("215","Turkey","TR");
INSERT INTO t_pais VALUES("216","Turkmenistan","TM");
INSERT INTO t_pais VALUES("217","Turks and Caicos Islands","TC");
INSERT INTO t_pais VALUES("218","Tuvalu","TV");
INSERT INTO t_pais VALUES("219","Uganda","UG");
INSERT INTO t_pais VALUES("220","Ukraine","UA");
INSERT INTO t_pais VALUES("221","United Arab Emirates","AE");
INSERT INTO t_pais VALUES("222","United Kingdom","GB");
INSERT INTO t_pais VALUES("223","United States","US");
INSERT INTO t_pais VALUES("224","United States Minor Outlying Islands","UM");
INSERT INTO t_pais VALUES("225","Uruguay","UY");
INSERT INTO t_pais VALUES("226","Uzbekistan","UZ");
INSERT INTO t_pais VALUES("227","Vanuatu","VU");
INSERT INTO t_pais VALUES("228","Vatican City State (Holy See)","VA");
INSERT INTO t_pais VALUES("229","Venezuela","VE");
INSERT INTO t_pais VALUES("230","Viet Nam","VN");
INSERT INTO t_pais VALUES("231","Virgin Islands (British)","VG");
INSERT INTO t_pais VALUES("232","Virgin Islands (U.S.)","VI");
INSERT INTO t_pais VALUES("233","Wallis and Futuna Islands","WF");
INSERT INTO t_pais VALUES("234","Western Sahara","EH");
INSERT INTO t_pais VALUES("235","Yemen","YE");
INSERT INTO t_pais VALUES("236","Yugoslavia","YU");
INSERT INTO t_pais VALUES("237","Zaire","ZR");
INSERT INTO t_pais VALUES("238","Zambia","ZM");
INSERT INTO t_pais VALUES("239","Zimbabwe","ZW");



DROP TABLE t_planilla_carga;

CREATE TABLE `t_planilla_carga` (
  `id_planilla_carga` int(11) NOT NULL AUTO_INCREMENT,
  `id_transportes` int(11) DEFAULT NULL,
  `fecha_carga` date DEFAULT NULL,
  `patente_tractor` varchar(20) DEFAULT NULL,
  `patente_semi` varchar(20) DEFAULT NULL,
  `nombre_chofer` varchar(50) DEFAULT NULL,
  `dni_chofer` varchar(20) DEFAULT NULL,
  `manifiesto_carga` varchar(130) DEFAULT NULL,
  `date_added` date DEFAULT NULL,
  `last_update` datetime DEFAULT NULL,
  `id_user_last_update` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_planilla_carga`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;




DROP TABLE t_planilla_carga_detalle;

CREATE TABLE `t_planilla_carga_detalle` (
  `id_planilla_carga_detalle` int(11) NOT NULL AUTO_INCREMENT,
  `id_planilla_carga` int(11) DEFAULT NULL,
  `id_carga` int(11) DEFAULT NULL,
  `date_added` date DEFAULT NULL,
  `last_update` datetime DEFAULT NULL,
  `id_user_last_update` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_planilla_carga_detalle`),
  UNIQUE KEY `idx_unq_planilla_carga_carga` (`id_planilla_carga`,`id_carga`),
  KEY `fk_id_planilla_carga_detalle` (`id_planilla_carga`),
  KEY `fk_planilla_carga_detalle_id_carga` (`id_carga`),
  CONSTRAINT `fk_planilla_carga_detalle_id_carga` FOREIGN KEY (`id_carga`) REFERENCES `t_carga` (`id_carga`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_id_planilla_carga_detall` FOREIGN KEY (`id_planilla_carga`) REFERENCES `t_planilla_carga` (`id_planilla_carga`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;




DROP TABLE t_tipo_bulto;

CREATE TABLE `t_tipo_bulto` (
  `id_tipo_bulto` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_tipo_bulto`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

INSERT INTO t_tipo_bulto VALUES("1","PALLET");
INSERT INTO t_tipo_bulto VALUES("2","CAJA");
INSERT INTO t_tipo_bulto VALUES("3","CAJON");
INSERT INTO t_tipo_bulto VALUES("4","BOLSAS");
INSERT INTO t_tipo_bulto VALUES("5","CAJAS");
INSERT INTO t_tipo_bulto VALUES("6","ESQUELETO");
INSERT INTO t_tipo_bulto VALUES("7","VARIOS");



DROP TABLE t_transportes;

CREATE TABLE `t_transportes` (
  `id_transportes` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `razon_social` varchar(100) DEFAULT NULL,
  `cuit` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `date_added` date DEFAULT NULL,
  `last_update` datetime DEFAULT NULL,
  `id_user_last_update` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_transportes`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

INSERT INTO t_transportes VALUES("1","EL PEREGRINO","","","","","","","");
INSERT INTO t_transportes VALUES("2","TAVEN SA","","","","","","","");
INSERT INTO t_transportes VALUES("3","ZP","","","","","","","");
INSERT INTO t_transportes VALUES("4","SILTRANS","SILTRANS","","","","","2014-10-29 10:17:03","2");
INSERT INTO t_transportes VALUES("5","TUNICI","","","","","","","");
INSERT INTO t_transportes VALUES("6","CARGAS Y SERVICIOS","","","","","","","");
INSERT INTO t_transportes VALUES("7","ROLANDO SA","ROLANDO SA","30-23232323-2","","","2014-10-16","2014-10-19 19:11:30","1");
INSERT INTO t_transportes VALUES("8","RIVAROLA","","","","","2014-10-22","2014-10-22 12:07:08","2");
INSERT INTO t_transportes VALUES("9","MARITIMO","","","","","2014-10-22","2014-10-22 12:20:04","2");
INSERT INTO t_transportes VALUES("10","ABC","","","","","2014-10-22","2014-10-22 12:45:07","2");
INSERT INTO t_transportes VALUES("11","TRANSWORLD LOG.","TRANSWORLD LOG.","","","","2014-10-23","2014-10-23 13:19:12","2");
INSERT INTO t_transportes VALUES("12","ONSALMA ","ONSALMA","","","","2014-10-24","2014-10-24 15:41:03","2");
INSERT INTO t_transportes VALUES("13","MONDEL","","","","","2014-10-28","2014-10-28 10:24:55","2");
INSERT INTO t_transportes VALUES("14","PROPIOS MEDIOS","","","","","2014-10-28","2014-10-28 12:11:59","2");
INSERT INTO t_transportes VALUES("15","TRANSPORTES BOLIVIA SA","TRANSPORTES BOLIVIA SA","","","","2014-10-29","2014-10-29 09:56:30","2");
INSERT INTO t_transportes VALUES("16","BERRO","","","","","2014-10-29","2014-10-29 16:05:15","2");



DROP TABLE t_user;

CREATE TABLE `t_user` (
  `id_user` int(10) NOT NULL AUTO_INCREMENT,
  `id_userprofiles` int(10) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `lastname` varchar(20) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  `pass` varchar(32) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `img` varchar(50) DEFAULT NULL,
  `lang_def` varchar(5) DEFAULT 'es',
  `sex` enum('M','F') DEFAULT 'M',
  `id_rel` int(11) DEFAULT '0',
  `active` int(1) DEFAULT NULL,
  `date_added` date DEFAULT NULL,
  `last_update` datetime DEFAULT NULL,
  `id_user_last_update` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_user`),
  KEY `idx_user_user` (`user`),
  KEY `idx_user_id_profiles` (`id_userprofiles`),
  KEY `idx_user_email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

INSERT INTO t_user VALUES("1","1","Christian","Grant","cgrant","7b1d2d4ab58c47ad181efc7edf69e0f0","45654-4564","chtgrant@gmail.com","file_1_80.jpg","es","M","0","1","2014-01-01","2014-10-23 13:11:37","1");
INSERT INTO t_user VALUES("2","1","Damian","Matsumoto","dmatsumoto","61b53a9dd00d89e344b3804ecdbc1c2f","","damian@beneagency.com","","es","M","0","1","","","1");
INSERT INTO t_user VALUES("3","3","El peregrino","","elperegrino","8fc4dd9985087632f596f2b80eda4ee2","","cgrant@networktech.com.ar","","es","M","1","1","","","1");
INSERT INTO t_user VALUES("4","3","Taven SA","","tavensa","0083789b54ded57bb0c0a4f8ec12952b","","","","es","M","2","1","","2014-10-30 12:09:53","2");
INSERT INTO t_user VALUES("5","1","Depósitos","Corvalan","pcorvalan","684639c90613d5ba3bb6bb9c2ecde0b1","","","","es","M","0","1","","","");
INSERT INTO t_user VALUES("6","3","Tunici","","tunici","fcecba2bd9cdce89ba60ba4be9f4c539","","","","es","M","5","1","","","");
INSERT INTO t_user VALUES("7","3","Rivarola","","rivarola","1946d38ee278316c6fa74ec866c337f8","","","","es","M","8","1","","","");
INSERT INTO t_user VALUES("8","1","Leonardo","Saravia","lsaravia","076554d62e7ada8ea0d0729c4f6a9d9f","","saravialeonardo@gmail.com","","es","M","0","1","","","");
INSERT INTO t_user VALUES("9","3","SILTRANS","MARCELO","siltrans","8d2439e3b848555ae2b81fe57d7694ed","","gerardobertarini@siltrans.com.ar","_1.","","M","4","1","2014-10-27","2014-10-29 11:13:36","2");
INSERT INTO t_user VALUES("10","1","Juan Jose","Patiño","jpatino","e47624261653eea068fb7fb38efa0119","","","_1.","","M","0","1","2014-10-30","2014-10-30 11:59:57","2");



DROP TABLE t_useractive;

CREATE TABLE `t_useractive` (
  `id_useractive` int(10) NOT NULL AUTO_INCREMENT,
  `user` varchar(20) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `id_user` int(10) DEFAULT NULL,
  `ip` varchar(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` varchar(5) DEFAULT NULL,
  `profile` varchar(20) DEFAULT NULL,
  `id_userprofiles` int(10) DEFAULT NULL,
  `uniqueid` varchar(32) DEFAULT NULL,
  `last_activity` datetime DEFAULT NULL,
  PRIMARY KEY (`id_useractive`),
  KEY `fx_useractive_id_user` (`id_user`),
  KEY `fx_useractive_user` (`user`),
  KEY `idx_useractive_uniqueid` (`uniqueid`)
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8;

INSERT INTO t_useractive VALUES("136","elperegrino","cgrant@networktech.com.ar","3","201.250.19.31","2014-10-29","14:03","","","8b133089a67f1dc50008c6ae40a8b41a","");
INSERT INTO t_useractive VALUES("137","siltrans","gerardobertarini@siltrans.com.ar","9","200.61.183.153","2014-10-29","14:56","","","762dd5db1ef6797261d0c4b1d79c1742","");
INSERT INTO t_useractive VALUES("149","cgrant","chtgrant@gmail.com","1","190.191.234.18","2014-10-31","00:09","","","7ce2b1153a6533b42859626787b87337","");



DROP TABLE t_useraudit;

CREATE TABLE `t_useraudit` (
  `id_useraudit` int(11) NOT NULL AUTO_INCREMENT,
  `table_name` varchar(50) DEFAULT NULL,
  `active` int(1) DEFAULT '1',
  `date_added` date DEFAULT NULL,
  `last_update` datetime DEFAULT NULL,
  `id_user_last_update` int(255) DEFAULT NULL,
  PRIMARY KEY (`id_useraudit`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO t_useraudit VALUES("3","Seleccione","1","2014-10-26","2014-10-26 02:13:11","1");



DROP TABLE t_userbackup;

CREATE TABLE `t_userbackup` (
  `id_userbackup` int(11) NOT NULL AUTO_INCREMENT,
  `description` text,
  `file` varchar(130) DEFAULT NULL,
  `date_added` date DEFAULT NULL,
  `last_update` datetime DEFAULT NULL,
  `id_user_last_update` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_userbackup`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




DROP TABLE t_userbanned;

CREATE TABLE `t_userbanned` (
  `id_userbanned` int(10) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `ip` varchar(20) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `active` int(1) DEFAULT '1',
  `date_added` date DEFAULT NULL,
  `last_update` datetime DEFAULT NULL,
  `id_user_last_update` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_userbanned`),
  KEY `idx_banned_id_user` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




DROP TABLE t_userlang;

CREATE TABLE `t_userlang` (
  `id_userLang` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(3) DEFAULT NULL,
  `lang_name` varchar(20) DEFAULT NULL,
  `default` int(1) DEFAULT '0',
  `date_added` date DEFAULT NULL,
  `last_update` datetime DEFAULT NULL,
  `id_user_last_update` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_userLang`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO t_userlang VALUES("1","es","Español","1","","","");
INSERT INTO t_userlang VALUES("2","us","English","0","","","");
INSERT INTO t_userlang VALUES("3","de","German","0","","","");



DROP TABLE t_userlogs;

CREATE TABLE `t_userlogs` (
  `id_userlogs` int(10) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) DEFAULT NULL,
  `profile` varchar(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `ip` varchar(20) DEFAULT NULL,
  `description` longtext,
  `uniqueid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id_userlogs`),
  KEY `fx_userlog_id_user` (`id_user`),
  CONSTRAINT `t_userlogs_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `t_user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=252 DEFAULT CHARSET=utf8;

INSERT INTO t_userlogs VALUES("2","1","","2014-10-14","19:26:00","190.192.31.122","{[19:26]LOGIN}/\n/","ecb32bee6b4a73fa767e9ab4f0a8bd7e");
INSERT INTO t_userlogs VALUES("3","1","","2014-10-14","19:26:00","190.192.31.122","{[19:26]LOGIN}/\n/","ecb32bee6b4a73fa767e9ab4f0a8bd7e");
INSERT INTO t_userlogs VALUES("4","1","","2014-10-14","19:27:00","190.192.31.122","{[19:27]LOGIN}/\n/","ecb32bee6b4a73fa767e9ab4f0a8bd7e");
INSERT INTO t_userlogs VALUES("5","1","","2014-10-14","19:28:00","190.192.31.122","{[19:28]LOGIN}/\n/","ecb32bee6b4a73fa767e9ab4f0a8bd7e");
INSERT INTO t_userlogs VALUES("6","1","","2014-10-14","19:29:00","190.192.31.122","{[19:29]LOGIN}/\n/","ecb32bee6b4a73fa767e9ab4f0a8bd7e");
INSERT INTO t_userlogs VALUES("7","1","","2014-10-14","19:29:00","190.192.31.122","{[19:29]LOGIN}/\n/","ecb32bee6b4a73fa767e9ab4f0a8bd7e");
INSERT INTO t_userlogs VALUES("8","1","","2014-10-14","19:30:00","190.192.31.122","{[19:30]LOGIN}/\n/","ecb32bee6b4a73fa767e9ab4f0a8bd7e");
INSERT INTO t_userlogs VALUES("9","1","","2014-10-14","19:31:00","190.192.31.122","{[19:31]LOGIN}/\n/","ecb32bee6b4a73fa767e9ab4f0a8bd7e");
INSERT INTO t_userlogs VALUES("10","1","","2014-10-14","19:32:00","190.192.31.122","{[19:32]LOGIN}/\n/","ecb32bee6b4a73fa767e9ab4f0a8bd7e");
INSERT INTO t_userlogs VALUES("11","1","","2014-10-14","19:32:00","190.192.31.122","{[19:32]LOGIN}/\n/","ecb32bee6b4a73fa767e9ab4f0a8bd7e");
INSERT INTO t_userlogs VALUES("12","1","","2014-10-14","19:32:00","190.192.31.122","{[19:32]LOGIN}/\n/","ecb32bee6b4a73fa767e9ab4f0a8bd7e");
INSERT INTO t_userlogs VALUES("13","1","","2014-10-14","19:33:00","190.192.31.122","{[19:33]LOGIN}/\n/","ecb32bee6b4a73fa767e9ab4f0a8bd7e");
INSERT INTO t_userlogs VALUES("14","1","","2014-10-14","19:33:00","190.192.31.122","{[19:33]LOGIN}/\n/","ecb32bee6b4a73fa767e9ab4f0a8bd7e");
INSERT INTO t_userlogs VALUES("15","1","","2014-10-14","19:34:00","190.192.31.122","{[19:34]LOGIN}/\n/","ecb32bee6b4a73fa767e9ab4f0a8bd7e");
INSERT INTO t_userlogs VALUES("16","1","","2014-10-14","19:35:00","190.192.31.122","{[19:35]LOGIN}/\n/","ecb32bee6b4a73fa767e9ab4f0a8bd7e");
INSERT INTO t_userlogs VALUES("17","1","","2014-10-14","19:37:00","190.192.31.122","{[19:37]LOGIN}/\n/","ecb32bee6b4a73fa767e9ab4f0a8bd7e");
INSERT INTO t_userlogs VALUES("18","1","","2014-10-14","19:37:00","190.192.31.122","{[19:37]LOGIN}/\n/","ecb32bee6b4a73fa767e9ab4f0a8bd7e");
INSERT INTO t_userlogs VALUES("19","1","","2014-10-14","19:38:00","190.192.31.122","{[19:38]LOGIN}/\n/","ecb32bee6b4a73fa767e9ab4f0a8bd7e");
INSERT INTO t_userlogs VALUES("20","1","","2014-10-14","19:38:00","190.192.31.122","{[19:38]LOGIN}/\n/","ecb32bee6b4a73fa767e9ab4f0a8bd7e");
INSERT INTO t_userlogs VALUES("21","1","","2014-10-14","19:57:00","190.192.31.122","LOGOFF","");
INSERT INTO t_userlogs VALUES("22","2","","2014-10-14","19:57:00","190.192.31.122","{[19:57]LOGIN}/\n/","6934c0c03306c38c3b830710424122fc");
INSERT INTO t_userlogs VALUES("23","2","","2014-10-14","19:58:00","190.192.31.122","{[19:58]LOGIN}/\n/","ba8fb2f00ebded1b0cbbdf91a6981167");
INSERT INTO t_userlogs VALUES("24","1","","2014-10-16","23:53:00","190.191.234.18","{[23:53]LOGIN}/\n/","f10ae2e70a893d5c0588a3b978d104fa");
INSERT INTO t_userlogs VALUES("25","1","","2014-10-16","23:56:00","190.191.234.18","{[23:56]LOGIN}/\n/","f10ae2e70a893d5c0588a3b978d104fa");
INSERT INTO t_userlogs VALUES("26","1","","2014-10-16","23:57:00","190.191.234.18","{[23:57]LOGIN}/\n/","f10ae2e70a893d5c0588a3b978d104fa");
INSERT INTO t_userlogs VALUES("27","2","","2014-10-17","14:13:00","190.3.47.160","{[14:13]LOGIN}/\n/","7456912a4ef7b53e4ed81ee8b92701c3");
INSERT INTO t_userlogs VALUES("28","2","","2014-10-17","14:15:00","201.250.40.4","{[14:15]LOGIN}/\n/","ea79e57c36124fdd996e6957d63f2c81");
INSERT INTO t_userlogs VALUES("29","2","","2014-10-17","14:19:00","201.250.40.4","{[14:19]LOGIN}/\n/","286c34601ee0c15d4839be74c79989de");
INSERT INTO t_userlogs VALUES("30","1","","2014-10-17","18:52:00","190.192.31.122","{[18:52]LOGIN}/\n/","f4f956e48ca276fe92aa1662fbb640f7");
INSERT INTO t_userlogs VALUES("31","1","","2014-10-18","02:09:00","190.191.234.18","{[02:09]LOGIN}/\n/","f731a07d1dbe837eda076f1cc7dc9f0b");
INSERT INTO t_userlogs VALUES("32","2","","2014-10-20","10:17:00","190.3.47.160","{[10:17]LOGIN}/\n/","9da0bc2f5ecacaed1c72f97a7568beb7");
INSERT INTO t_userlogs VALUES("33","2","","2014-10-20","15:29:00","190.3.47.160","{[15:29]LOGIN}/\n/","d5aa34075b4e9f1631017ef4afd79888");
INSERT INTO t_userlogs VALUES("34","1","","2014-10-20","16:07:00","190.192.31.122","{[16:07]LOGIN}/\n/","8b7906bf1c3ada412f800fb0a001bbff");
INSERT INTO t_userlogs VALUES("35","1","","2014-10-21","13:08:00","190.191.234.18","LOGOFF","");
INSERT INTO t_userlogs VALUES("36","3","","2014-10-21","13:08:00","190.191.234.18","{[13:08]LOGIN}/\n/","ee43f1086fe57993adb010c9093d6017");
INSERT INTO t_userlogs VALUES("37","3","","2014-10-21","13:32:00","190.191.234.18","{[13:32]LOGIN}/\n/","ee43f1086fe57993adb010c9093d6017");
INSERT INTO t_userlogs VALUES("38","1","","2014-10-21","17:27:00","190.192.31.122","{[17:27]LOGIN}/\n/","35b5752be5d9145d05728cfcfbf7d98c");
INSERT INTO t_userlogs VALUES("39","1","","2014-10-21","17:28:00","190.192.31.122","{[17:28]LOGIN}/\n/","35b5752be5d9145d05728cfcfbf7d98c");
INSERT INTO t_userlogs VALUES("40","1","","2014-10-21","17:55:00","190.192.31.122","{[17:55]LOGIN}/\n/","35b5752be5d9145d05728cfcfbf7d98c");
INSERT INTO t_userlogs VALUES("41","2","","2014-10-21","18:24:00","190.192.31.122","{[18:24]LOGIN}/\n/","7d36464b5736e555f8400fa2ba4cc585");
INSERT INTO t_userlogs VALUES("42","1","","2014-10-21","18:24:00","190.192.31.122","LOGOFF","");
INSERT INTO t_userlogs VALUES("43","1","","2014-10-21","18:27:00","190.192.31.122","{[18:27]LOGIN}/\n/","e95032b3b5a0150a9f6245c2e08f7d9c");
INSERT INTO t_userlogs VALUES("44","1","","2014-10-21","18:27:00","190.192.31.122","LOGOFF","");
INSERT INTO t_userlogs VALUES("45","3","","2014-10-21","18:28:00","190.192.31.122","{[18:28]LOGIN}/\n/","4f7a37c38744bc6f86b50a4e5c8c16ee");
INSERT INTO t_userlogs VALUES("46","3","","2014-10-21","18:52:00","190.192.31.122","LOGOFF","");
INSERT INTO t_userlogs VALUES("47","1","","2014-10-21","18:52:00","190.192.31.122","{[18:52]LOGIN}/\n/","3a0a5301114c258d1e591843db8a303a");
INSERT INTO t_userlogs VALUES("48","1","","2014-10-21","18:59:00","190.192.31.122","LOGOFF","");
INSERT INTO t_userlogs VALUES("49","3","","2014-10-21","18:59:00","190.192.31.122","{[18:59]LOGIN}/\n/","cf32b22b621c87e400803cedade744bb");
INSERT INTO t_userlogs VALUES("50","2","","2014-10-21","19:41:00","190.192.31.122","{[19:41]LOGIN}/\n/","48aa013e1f6a07c17ac0c483a5e6c61f");
INSERT INTO t_userlogs VALUES("51","3","","2014-10-21","19:45:00","190.192.31.122","LOGOFF","");
INSERT INTO t_userlogs VALUES("52","1","","2014-10-21","19:45:00","190.192.31.122","{[19:45]LOGIN}/\n/","44bf849abf36aaa92cbcfc3c49a038c6");
INSERT INTO t_userlogs VALUES("53","2","","2014-10-21","20:19:00","190.192.31.122","LOGOFF","");
INSERT INTO t_userlogs VALUES("54","3","","2014-10-21","20:19:00","190.192.31.122","{[20:19]LOGIN}/\n/","507594686128f5b9b5317301dc91aabd");
INSERT INTO t_userlogs VALUES("55","3","","2014-10-21","20:34:00","190.192.31.122","LOGOFF","");
INSERT INTO t_userlogs VALUES("56","2","","2014-10-21","20:34:00","190.192.31.122","{[20:34]LOGIN}/\n/","75244406470059185ae1f03ed89f0a59");
INSERT INTO t_userlogs VALUES("57","3","","2014-10-21","22:03:00","190.191.234.18","{[22:03]LOGIN}/\n/","3253c009e5d8ed5094742c660d6627dd");
INSERT INTO t_userlogs VALUES("58","3","","2014-10-22","00:46:00","190.191.234.18","LOGOFF","");
INSERT INTO t_userlogs VALUES("59","1","","2014-10-22","00:46:00","190.191.234.18","{[00:46]LOGIN}/\n/","a902fbed18ebeed8cc69ebd3d3226b08");
INSERT INTO t_userlogs VALUES("60","1","","2014-10-22","10:31:00","190.191.234.18","LOGOFF","");
INSERT INTO t_userlogs VALUES("61","1","","2014-10-22","10:31:00","190.191.234.18","{[10:31]LOGIN}/\n/","3dd827935ce3dec150d613a864fa4a6e");
INSERT INTO t_userlogs VALUES("62","2","","2014-10-22","10:55:00","190.3.47.160","{[10:55]LOGIN}/\n/","caab453036ed412d8e4cea2ebb2f8981");
INSERT INTO t_userlogs VALUES("63","1","","2014-10-22","11:57:00","190.191.234.18","{[11:57]LOGIN}/\n/","38af6446d61153cf0e92921a0f55b527");
INSERT INTO t_userlogs VALUES("64","2","","2014-10-22","12:46:00","190.3.47.160","LOGOFF","");
INSERT INTO t_userlogs VALUES("65","4","","2014-10-22","12:46:00","190.3.47.160","{[12:46]LOGIN}/\n/","a872c34552842e902c7080ed5931bf7d");
INSERT INTO t_userlogs VALUES("66","4","","2014-10-22","12:47:00","190.3.47.160","LOGOFF","");
INSERT INTO t_userlogs VALUES("67","3","","2014-10-22","12:47:00","190.3.47.160","{[12:47]LOGIN}/\n/","d5cc9cfa35ff47764a6450f7272cb26a");
INSERT INTO t_userlogs VALUES("68","3","","2014-10-22","12:50:00","190.3.47.160","LOGOFF","");
INSERT INTO t_userlogs VALUES("69","4","","2014-10-22","12:51:00","190.3.47.160","{[12:51]LOGIN}/\n/","cacab1a508fc12bb57a6aa4ec46d5811");
INSERT INTO t_userlogs VALUES("70","4","","2014-10-22","12:51:00","190.3.47.160","LOGOFF","");
INSERT INTO t_userlogs VALUES("71","2","","2014-10-22","12:51:00","190.3.47.160","{[12:51]LOGIN}/\n/","a8aeb1a2cb56d2e6aae7923e8bfbc1cc");
INSERT INTO t_userlogs VALUES("73","3","","2014-10-22","13:16:00","190.192.31.122","{[13:16]LOGIN}/\n/","7f01dee8d29b08650ebd5d0430d38a25");
INSERT INTO t_userlogs VALUES("74","3","","2014-10-22","13:17:00","190.192.31.122","LOGOFF","");
INSERT INTO t_userlogs VALUES("75","4","","2014-10-22","13:17:00","190.192.31.122","{[13:17]LOGIN}/\n/","6ebe7b98140c714e43c67c3ca8474db7");
INSERT INTO t_userlogs VALUES("76","4","","2014-10-22","13:30:00","190.192.31.122","{[13:30]LOGIN}/\n/","6ebe7b98140c714e43c67c3ca8474db7");
INSERT INTO t_userlogs VALUES("77","4","","2014-10-22","13:31:00","190.192.31.122","{[13:31]LOGIN}/\n/","6ebe7b98140c714e43c67c3ca8474db7");
INSERT INTO t_userlogs VALUES("78","4","","2014-10-22","13:50:00","190.192.31.122","LOGOFF","");
INSERT INTO t_userlogs VALUES("79","4","","2014-10-22","13:50:00","190.192.31.122","{[13:50]LOGIN}/\n/","cda7dece71366af91313e9dc06a302e3");
INSERT INTO t_userlogs VALUES("80","2","","2014-10-22","14:18:00","190.3.47.160","LOGOFF","");
INSERT INTO t_userlogs VALUES("81","4","","2014-10-22","14:19:00","190.3.47.160","{[14:19]LOGIN}/\n/","5295816151ab30c67bdd7dac1ee84bb9");
INSERT INTO t_userlogs VALUES("82","4","","2014-10-22","14:20:00","190.3.47.160","LOGOFF","");
INSERT INTO t_userlogs VALUES("83","3","","2014-10-22","14:20:00","190.3.47.160","{[14:20]LOGIN}/\n/","3cdd6388c9afa1727ac306dacbc41707");
INSERT INTO t_userlogs VALUES("84","3","","2014-10-22","14:21:00","190.3.47.160","LOGOFF","");
INSERT INTO t_userlogs VALUES("85","2","","2014-10-22","14:22:00","190.3.47.160","{[14:22]LOGIN}/\n/","e632f473ce4a0e8dc4ebf76952a9ed0b");
INSERT INTO t_userlogs VALUES("86","2","","2014-10-22","14:24:00","201.250.12.250","{[14:24]LOGIN}/\n/","66a81a6d22a88fd92d4886fc4ee834af");
INSERT INTO t_userlogs VALUES("87","2","","2014-10-22","14:25:00","201.250.12.250","LOGOFF","");
INSERT INTO t_userlogs VALUES("88","2","","2014-10-22","14:25:00","201.250.12.250","{[14:25]LOGIN}/\n/","337111c474c314fd34b95af57baacee7");
INSERT INTO t_userlogs VALUES("89","4","","2014-10-22","14:28:00","190.192.31.122","LOGOFF","");
INSERT INTO t_userlogs VALUES("90","1","","2014-10-22","14:28:00","190.192.31.122","{[14:28]LOGIN}/\n/","781e5632ad90403f24b851468a1a1118");
INSERT INTO t_userlogs VALUES("91","2","","2014-10-22","14:34:00","190.3.47.160","LOGOFF","");
INSERT INTO t_userlogs VALUES("92","2","","2014-10-22","14:34:00","190.3.47.160","{[14:34]LOGIN}/\n/","7822041fd54f4520bbe18e16562834f9");
INSERT INTO t_userlogs VALUES("93","2","","2014-10-22","14:35:00","190.3.47.160","LOGOFF","");
INSERT INTO t_userlogs VALUES("94","4","","2014-10-22","14:35:00","190.3.47.160","{[14:35]LOGIN}/\n/","312c21ab701ff30909f088e8b429795e");
INSERT INTO t_userlogs VALUES("95","4","","2014-10-22","14:35:00","190.3.47.160","LOGOFF","");
INSERT INTO t_userlogs VALUES("96","3","","2014-10-22","14:35:00","190.3.47.160","{[14:35]LOGIN}/\n/","87aaa9688eed879c68f604fd0d2f4ab5");
INSERT INTO t_userlogs VALUES("97","3","","2014-10-22","14:37:00","190.3.47.160","LOGOFF","");
INSERT INTO t_userlogs VALUES("98","4","","2014-10-22","14:38:00","190.3.47.160","{[14:38]LOGIN}/\n/","ab88d37390045e4124c339929457c3c3");
INSERT INTO t_userlogs VALUES("99","4","","2014-10-22","14:38:00","190.3.47.160","LOGOFF","");
INSERT INTO t_userlogs VALUES("100","4","","2014-10-22","14:42:00","201.250.28.121","{[14:42]LOGIN}/\n/","958ebe25ec80576b1b80f2a991d37414");
INSERT INTO t_userlogs VALUES("101","2","","2014-10-22","14:49:00","201.250.12.250","{[14:49]LOGIN}/\n/","4d8f059fe0aeeb7efa835fdb29e38e86");
INSERT INTO t_userlogs VALUES("102","2","","2014-10-22","14:51:00","201.250.12.250","LOGOFF","");
INSERT INTO t_userlogs VALUES("103","2","","2014-10-22","14:51:00","201.250.12.250","{[14:51]LOGIN}/\n/","c0379251eeaf1fe9150e63a12a5dd2b2");
INSERT INTO t_userlogs VALUES("104","3","","2014-10-22","14:51:00","201.250.50.183","{[14:51]LOGIN}/\n/","0d806ca4fd20ab65dcf01e9b87be2c16");
INSERT INTO t_userlogs VALUES("105","2","","2014-10-22","14:57:00","201.250.12.250","LOGOFF","");
INSERT INTO t_userlogs VALUES("106","6","","2014-10-22","14:57:00","201.250.12.250","{[14:57]LOGIN}/\n/","939ab723b0ad468aa0a5a262da684b71");
INSERT INTO t_userlogs VALUES("107","6","","2014-10-22","15:00:00","201.250.12.250","LOGOFF","");
INSERT INTO t_userlogs VALUES("108","2","","2014-10-22","15:00:00","201.250.12.250","{[15:00]LOGIN}/\n/","aad02f0ce120e5555e4819b900744d61");
INSERT INTO t_userlogs VALUES("110","5","","2014-10-22","15:04:00","201.250.12.250","{[15:04]LOGIN}/\n/","63535cc2b481637022467611c9ef113e");
INSERT INTO t_userlogs VALUES("111","3","","2014-10-22","15:19:00","201.250.50.183","{[15:19]LOGIN}/\n/","886b11b6c0007a9745d659ef0f49fe00");
INSERT INTO t_userlogs VALUES("112","1","","2014-10-22","15:42:00","190.192.31.122","{[15:42]LOGIN}/\n/","c7c6da2bba49e79ae621a7a90e18cf40");
INSERT INTO t_userlogs VALUES("113","2","","2014-10-22","15:50:00","201.250.12.250","LOGOFF","");
INSERT INTO t_userlogs VALUES("114","3","","2014-10-22","15:50:00","201.250.12.250","{[15:50]LOGIN}/\n/","7a3efc61fccf4bf51dfe82d12195c9f2");
INSERT INTO t_userlogs VALUES("115","3","","2014-10-22","15:51:00","201.250.12.250","LOGOFF","");
INSERT INTO t_userlogs VALUES("116","2","","2014-10-22","15:51:00","201.250.12.250","{[15:51]LOGIN}/\n/","3c0d2915710a95d3630ab34e984f03ee");
INSERT INTO t_userlogs VALUES("117","2","","2014-10-22","15:57:00","201.250.12.250","LOGOFF","");
INSERT INTO t_userlogs VALUES("118","3","","2014-10-22","15:57:00","201.250.12.250","{[15:57]LOGIN}/\n/","a421c5d18411d983b02336ab5c33369e");
INSERT INTO t_userlogs VALUES("119","3","","2014-10-22","15:58:00","201.250.12.250","LOGOFF","");
INSERT INTO t_userlogs VALUES("120","2","","2014-10-22","15:59:00","201.250.12.250","{[15:59]LOGIN}/\n/","9d25647f944f5bc5854438458c4fc9ed");
INSERT INTO t_userlogs VALUES("121","3","","2014-10-22","16:34:00","201.250.50.183","{[16:34]LOGIN}/\n/","675dd1d1b891211c0bf64067e3a79780");
INSERT INTO t_userlogs VALUES("122","3","","2014-10-22","17:13:00","201.250.50.183","{[17:13]LOGIN}/\n/","6e492c4269644f0f0efbe754d4270424");
INSERT INTO t_userlogs VALUES("123","1","","2014-10-22","21:15:00","190.191.234.18","{[21:15]LOGIN}/\n/","677a12f01a1ff567a88313f7bda71389");
INSERT INTO t_userlogs VALUES("124","3","","2014-10-23","08:40:00","201.250.50.183","{[08:40]LOGIN}/\n/","8855b72b1cb7870ae190a274120c1420");
INSERT INTO t_userlogs VALUES("125","2","","2014-10-23","10:43:00","190.3.47.160","{[10:43]LOGIN}/\n/","7b67f14f87d5dfbe2b43d74f8ca9f12e");
INSERT INTO t_userlogs VALUES("126","3","","2014-10-23","11:40:00","201.250.50.183","{[11:40]LOGIN}/\n/","bd031b4eb6746458ca73831520cab858");
INSERT INTO t_userlogs VALUES("127","1","","2014-10-23","12:07:00","190.191.234.18","{[12:07]LOGIN}/\n/","94ebdc9ca8be48690e1f394bc26ce647");
INSERT INTO t_userlogs VALUES("128","1","","2014-10-23","12:09:00","190.191.234.18","{[12:09]LOGIN}/\n/","94ebdc9ca8be48690e1f394bc26ce647");
INSERT INTO t_userlogs VALUES("129","3","","2014-10-23","13:08:00","201.250.50.183","{[13:08]LOGIN}/\n/","89f6ed16ad59d39a17aaa63bb179b253");
INSERT INTO t_userlogs VALUES("130","2","","2014-10-23","13:10:00","190.3.47.160","{[13:10]LOGIN}/\n/","359cbb9c03fbcddf601a05ad4614ddfe");
INSERT INTO t_userlogs VALUES("131","1","","2014-10-23","13:10:00","190.191.234.18","LOGOFF","");
INSERT INTO t_userlogs VALUES("132","1","","2014-10-23","13:11:00","190.191.234.18","{[13:11]LOGIN}/\n/","b52f2c8a9224d67238058fd1a14a8816");
INSERT INTO t_userlogs VALUES("133","2","","2014-10-23","13:46:00","190.3.47.160","LOGOFF","");
INSERT INTO t_userlogs VALUES("134","3","","2014-10-23","13:46:00","190.3.47.160","{[13:46]LOGIN}/\n/","2c380f989da1e273fdf8d6b2b3cc0d35");
INSERT INTO t_userlogs VALUES("135","3","","2014-10-23","14:21:00","190.3.47.160","LOGOFF","");
INSERT INTO t_userlogs VALUES("136","2","","2014-10-23","14:21:00","190.3.47.160","{[14:21]LOGIN}/\n/","948d18ce63a941fab11f0b284faee80a");
INSERT INTO t_userlogs VALUES("137","3","","2014-10-23","15:55:00","201.250.50.183","{[15:55]LOGIN}/\n/","0bedbbcd70a19f68819ed014bac4cae3");
INSERT INTO t_userlogs VALUES("138","1","","2014-10-23","16:09:00","190.192.31.122","{[16:09]LOGIN}/\n/","201cc49bb7e66aaebd5d81341bbf5616");
INSERT INTO t_userlogs VALUES("139","3","","2014-10-24","10:47:00","201.250.60.28","{[10:47]LOGIN}/\n/","8ebfcef662da20803f74be4e5c35fc2c");
INSERT INTO t_userlogs VALUES("140","2","","2014-10-24","15:13:00","201.250.12.250","{[15:13]LOGIN}/\n/","b7606bac98fd59f709244e968c2c28f9");
INSERT INTO t_userlogs VALUES("141","1","","2014-10-24","19:41:00","190.192.31.122","{[19:41]LOGIN}/\n/","6aad600e1958d870a888d3eb70ac7d70");
INSERT INTO t_userlogs VALUES("142","1","","2014-10-24","21:05:00","190.191.234.18","{[21:05]LOGIN}/\n/","df24235f65fa682db64e238e6540d6ac");
INSERT INTO t_userlogs VALUES("143","2","","2014-10-25","13:29:00","186.138.66.132","{[13:29]LOGIN}/\n/","f72676c3522d2713335a7a22ecef5c68");
INSERT INTO t_userlogs VALUES("144","2","","2014-10-25","14:26:00","186.138.66.132","LOGOFF","");
INSERT INTO t_userlogs VALUES("145","3","","2014-10-25","14:26:00","186.138.66.132","{[14:26]LOGIN}/\n/","91d119f318f5040f43c01e4471ad4663");
INSERT INTO t_userlogs VALUES("146","1","","2014-10-25","19:17:00","190.191.234.18","{[19:17]LOGIN}/\n/","cb5ebafec7e8478264124d0121807c12");
INSERT INTO t_userlogs VALUES("147","1","","2014-10-25","19:27:00","190.191.234.18","{[19:27]LOGIN}/\n/","cb5ebafec7e8478264124d0121807c12");
INSERT INTO t_userlogs VALUES("148","3","","2014-10-27","08:11:00","201.250.60.28","{[08:11]LOGIN}/\n/","18feb173aa56a13effbb0e3c62ca3013");
INSERT INTO t_userlogs VALUES("149","2","","2014-10-27","09:17:00","190.3.47.160","{[09:17]LOGIN}/\n/","ee695b0a3f8bb92f9be30ab03f8adfa9");
INSERT INTO t_userlogs VALUES("150","2","","2014-10-27","09:46:00","201.250.27.253","LOGOFF","");
INSERT INTO t_userlogs VALUES("151","3","","2014-10-27","09:46:00","201.250.27.253","{[09:46]LOGIN}/\n/","757da78d58163efd6fc510ab84d42f2a");
INSERT INTO t_userlogs VALUES("152","3","","2014-10-27","10:03:00","201.250.27.253","LOGOFF","");
INSERT INTO t_userlogs VALUES("153","2","","2014-10-27","10:11:00","201.250.27.253","{[10:11]LOGIN}/\n/","d57fcbdc3a14361a7c678bbbcf488a43");
INSERT INTO t_userlogs VALUES("154","3","","2014-10-27","10:28:00","201.250.60.28","{[10:28]LOGIN}/\n/","59475ec57cc74ad78d2ce8af28b84851");
INSERT INTO t_userlogs VALUES("155","3","","2014-10-27","11:53:00","201.250.60.28","{[11:53]LOGIN}/\n/","57d40b0ee29047f08883936ac60c314a");
INSERT INTO t_userlogs VALUES("156","3","","2014-10-27","14:19:00","201.250.60.28","{[14:19]LOGIN}/\n/","66238a7a49e68354160d0f41d71659a2");
INSERT INTO t_userlogs VALUES("157","2","","2014-10-27","14:47:00","200.89.155.210","{[14:47]LOGIN}/\n/","513b581f017c3c38df4521b6e2c9fd3d");
INSERT INTO t_userlogs VALUES("158","2","","2014-10-27","16:28:00","190.3.47.160","LOGOFF","");
INSERT INTO t_userlogs VALUES("159","9","","2014-10-27","16:29:00","190.3.47.160","{[16:29]LOGIN}/\n/","5368981d282b35f8776d9729051222bd");
INSERT INTO t_userlogs VALUES("160","9","","2014-10-27","16:29:00","190.3.47.160","LOGOFF","");
INSERT INTO t_userlogs VALUES("161","2","","2014-10-27","16:29:00","190.3.47.160","{[16:29]LOGIN}/\n/","ce5e88ae59145bdf53160a44d35464a3");
INSERT INTO t_userlogs VALUES("162","1","","2014-10-27","18:21:00","190.192.31.122","{[18:21]LOGIN}/\n/","b407f5423ecdff11d75b32e82cc78bab");
INSERT INTO t_userlogs VALUES("163","1","","2014-10-27","18:26:00","190.192.31.122","LOGOFF","");
INSERT INTO t_userlogs VALUES("164","8","","2014-10-27","18:26:00","190.192.31.122","{[18:26]LOGIN}/\n/","de936e10c63fa83afad0a76d332761ab");
INSERT INTO t_userlogs VALUES("165","8","","2014-10-27","18:27:00","190.192.31.122","LOGOFF","");
INSERT INTO t_userlogs VALUES("166","1","","2014-10-27","18:27:00","190.192.31.122","{[18:27]LOGIN}/\n/","eb53841a1837582aaaf432c4275e00fe");
INSERT INTO t_userlogs VALUES("168","3","","2014-10-27","19:34:00","190.192.31.122","{[19:34]LOGIN}/\n/","b5085ddbe6d59ae7b2ff65173f2200ed");
INSERT INTO t_userlogs VALUES("169","1","","2014-10-28","01:35:00","190.191.234.18","{[01:35]LOGIN}/\n/","1c05112d45cf852b6238659fe567ec82");
INSERT INTO t_userlogs VALUES("170","1","","2014-10-28","01:35:00","190.191.234.18","LOGOFF","");
INSERT INTO t_userlogs VALUES("171","3","","2014-10-28","08:48:00","201.250.19.31","{[08:48]LOGIN}/\n/","6b6cdbcb163599efd7905a935061afbc");
INSERT INTO t_userlogs VALUES("172","2","","2014-10-28","09:29:00","201.250.27.253","{[09:29]LOGIN}/\n/","2f856a3db4e55ed3cd951be82d37b8c0");
INSERT INTO t_userlogs VALUES("173","2","","2014-10-28","09:59:00","201.250.52.33","LOGOFF","");
INSERT INTO t_userlogs VALUES("174","9","","2014-10-28","10:00:00","201.250.52.33","{[10:00]LOGIN}/\n/","dc2a171162c4634cc56096727bfd1aba");
INSERT INTO t_userlogs VALUES("175","9","","2014-10-28","10:00:00","201.250.52.33","LOGOFF","");
INSERT INTO t_userlogs VALUES("176","9","","2014-10-28","10:00:00","201.250.52.33","{[10:00]LOGIN}/\n/","4694325c89354a87f60e9590e3760f9f");
INSERT INTO t_userlogs VALUES("177","9","","2014-10-28","10:00:00","201.250.52.33","LOGOFF","");
INSERT INTO t_userlogs VALUES("178","2","","2014-10-28","10:00:00","201.250.52.33","{[10:00]LOGIN}/\n/","8d44db9433af82705e78c3e9da6d90d5");
INSERT INTO t_userlogs VALUES("179","2","","2014-10-28","11:48:00","201.250.52.33","{[11:48]LOGIN}/\n/","324fde806daadd361e1f6e7cb00b7e2d");
INSERT INTO t_userlogs VALUES("180","3","","2014-10-28","13:05:00","201.250.19.31","{[13:05]LOGIN}/\n/","72ecc542cbdf05c091713b57c5b02484");
INSERT INTO t_userlogs VALUES("181","2","","2014-10-28","13:48:00","201.250.52.33","{[13:48]LOGIN}/\n/","c661cdafd73efd31d7bc5aa5ade11944");
INSERT INTO t_userlogs VALUES("182","3","","2014-10-28","13:56:00","201.250.19.31","{[13:56]LOGIN}/\n/","e5c77af97eb1fb7107c49e0914b134e9");
INSERT INTO t_userlogs VALUES("183","3","","2014-10-28","14:26:00","201.250.19.31","{[14:26]LOGIN}/\n/","df97053c2ed05422ab75a195ab521d51");
INSERT INTO t_userlogs VALUES("184","3","","2014-10-29","08:44:00","201.250.19.31","{[08:44]LOGIN}/\n/","bb2b05fbece0aa4e9bc11f6e74349d1c");
INSERT INTO t_userlogs VALUES("185","2","","2014-10-29","09:39:00","190.3.47.160","{[09:39]LOGIN}/\n/","b53cec80f6099f7ed548882a8653f359");
INSERT INTO t_userlogs VALUES("186","5","","2014-10-29","09:55:00","190.3.47.160","{[09:55]LOGIN}/\n/","92d16af0a835c8c30912bad603cef942");
INSERT INTO t_userlogs VALUES("187","2","","2014-10-29","10:19:00","190.3.47.160","LOGOFF","");
INSERT INTO t_userlogs VALUES("188","9","","2014-10-29","10:20:00","190.3.47.160","{[10:20]INVALID PASSWORD}/\n/","");
INSERT INTO t_userlogs VALUES("189","9","","2014-10-29","10:20:00","190.3.47.160","{[10:20]INVALID PASSWORD}/\n/","");
INSERT INTO t_userlogs VALUES("190","9","","2014-10-29","10:20:00","190.3.47.160","{[10:20]INVALID PASSWORD}/\n/","");
INSERT INTO t_userlogs VALUES("191","2","","2014-10-29","10:21:00","190.3.47.160","{[10:21]LOGIN}/\n/","7dc72caca7d1c4563075039c7953c87f");
INSERT INTO t_userlogs VALUES("192","2","","2014-10-29","10:23:00","190.3.47.160","LOGOFF","");
INSERT INTO t_userlogs VALUES("193","9","","2014-10-29","10:23:00","190.3.47.160","{[10:23]INVALID PASSWORD}/\n/","");
INSERT INTO t_userlogs VALUES("194","3","","2014-10-29","10:23:00","190.3.47.160","{[10:23]LOGIN}/\n/","72898d0a52f7d0a7bd932f2b2461ba5a");
INSERT INTO t_userlogs VALUES("195","3","","2014-10-29","10:24:00","190.3.47.160","LOGOFF","");
INSERT INTO t_userlogs VALUES("196","9","","2014-10-29","10:24:00","190.3.47.160","{[10:24]INVALID PASSWORD}/\n/","");
INSERT INTO t_userlogs VALUES("197","9","","2014-10-29","10:24:00","190.3.47.160","{[10:24]INVALID PASSWORD}/\n/","");
INSERT INTO t_userlogs VALUES("198","4","","2014-10-29","10:25:00","190.3.47.160","{[10:25]INVALID PASSWORD}/\n/","");
INSERT INTO t_userlogs VALUES("199","4","","2014-10-29","10:25:00","190.3.47.160","{[10:25]INVALID PASSWORD}/\n/","");
INSERT INTO t_userlogs VALUES("200","2","","2014-10-29","10:26:00","190.3.47.160","LOGOFF","");
INSERT INTO t_userlogs VALUES("201","9","","2014-10-29","10:26:00","190.3.47.160","{[10:26]LOGIN}/\n/","c97db7cab49b212575124e00db08d498");
INSERT INTO t_userlogs VALUES("202","9","","2014-10-29","10:27:00","190.3.47.160","LOGOFF","");
INSERT INTO t_userlogs VALUES("203","9","","2014-10-29","10:27:00","190.3.47.160","{[10:27]INVALID PASSWORD}/\n/","");
INSERT INTO t_userlogs VALUES("204","2","","2014-10-29","10:27:00","190.3.47.160","{[10:27]LOGIN}/\n/","32dfe8a1352431e1be1f30c5c1a58b84");
INSERT INTO t_userlogs VALUES("205","2","","2014-10-29","10:34:00","190.3.47.160","LOGOFF","");
INSERT INTO t_userlogs VALUES("206","9","","2014-10-29","10:34:00","190.3.47.160","{[10:34]LOGIN}/\n/","abf037492a0c57ae52e160825992e48c");
INSERT INTO t_userlogs VALUES("207","9","","2014-10-29","10:34:00","190.3.47.160","LOGOFF","");
INSERT INTO t_userlogs VALUES("208","2","","2014-10-29","10:34:00","190.3.47.160","{[10:34]LOGIN}/\n/","24dd6fc5741fde8150a8d4dc1873c35e");
INSERT INTO t_userlogs VALUES("209","2","","2014-10-29","11:01:00","190.3.47.160","LOGOFF","");
INSERT INTO t_userlogs VALUES("210","9","","2014-10-29","11:01:00","190.3.47.160","{[11:01]LOGIN}/\n/","ab1fe9b6dfdd5da325b6b10d490a9d47");
INSERT INTO t_userlogs VALUES("211","9","","2014-10-29","11:02:00","190.3.47.160","LOGOFF","");
INSERT INTO t_userlogs VALUES("212","2","","2014-10-29","11:02:00","190.3.47.160","{[11:02]LOGIN}/\n/","83e62c83d4df7ff60fd8bb5dbf69cb74");
INSERT INTO t_userlogs VALUES("213","1","","2014-10-29","11:06:00","190.191.234.18","{[11:06]LOGIN}/\n/","550cb08325beb2cdcab79ada08c1921a");
INSERT INTO t_userlogs VALUES("214","2","","2014-10-29","11:09:00","190.3.47.160","LOGOFF","");
INSERT INTO t_userlogs VALUES("215","9","","2014-10-29","11:11:00","190.3.47.160","{[11:11]INVALID PASSWORD}/\n/","");
INSERT INTO t_userlogs VALUES("216","9","","2014-10-29","11:11:00","190.3.47.160","{[11:11]INVALID PASSWORD}/\n/","");
INSERT INTO t_userlogs VALUES("217","9","","2014-10-29","11:11:00","190.3.47.160","{[11:11]INVALID PASSWORD}/\n/","");
INSERT INTO t_userlogs VALUES("218","9","","2014-10-29","11:12:00","190.3.47.160","{[11:12]INVALID PASSWORD}/\n/","");
INSERT INTO t_userlogs VALUES("219","9","","2014-10-29","11:12:00","190.3.47.160","{[11:12]INVALID PASSWORD}/\n/","");
INSERT INTO t_userlogs VALUES("220","2","","2014-10-29","11:12:00","190.3.47.160","{[11:12]LOGIN}/\n/","2f1c9cfc9f52722c05714e6bc6293433");
INSERT INTO t_userlogs VALUES("221","2","","2014-10-29","11:13:00","190.3.47.160","LOGOFF","");
INSERT INTO t_userlogs VALUES("222","9","","2014-10-29","11:13:00","190.3.47.160","{[11:13]LOGIN}/\n/","aa5ec680a295db030363948d5da81e2b");
INSERT INTO t_userlogs VALUES("223","9","","2014-10-29","11:16:00","190.3.47.160","LOGOFF","");
INSERT INTO t_userlogs VALUES("224","2","","2014-10-29","11:16:00","190.3.47.160","{[11:16]LOGIN}/\n/","0776f880fbd130ef1c804762a8a2b379");
INSERT INTO t_userlogs VALUES("225","2","","2014-10-29","11:22:00","190.3.47.160","{[11:22]LOGIN}/\n/","9a4628617e3017e17c433aa38893407a");
INSERT INTO t_userlogs VALUES("226","2","","2014-10-29","11:48:00","190.3.47.160","{[11:48]LOGIN}/\n/","0b6582aa1f0f4bdcbd42b7e33f32aa0a");
INSERT INTO t_userlogs VALUES("227","2","","2014-10-29","12:48:00","190.3.47.160","LOGOFF","");
INSERT INTO t_userlogs VALUES("228","2","","2014-10-29","12:49:00","190.3.47.160","{[12:49]LOGIN}/\n/","57373dcc64ed07aa71caaed97f6fee43");
INSERT INTO t_userlogs VALUES("229","5","","2014-10-29","13:52:00","190.3.47.160","{[13:52]LOGIN}/\n/","bcb3ab30a5aab775faa91fa9450e431b");
INSERT INTO t_userlogs VALUES("230","3","","2014-10-29","14:03:00","201.250.19.31","{[14:03]LOGIN}/\n/","8b133089a67f1dc50008c6ae40a8b41a");
INSERT INTO t_userlogs VALUES("231","9","","2014-10-29","14:56:00","200.61.183.153","{[14:56]LOGIN}/\n/","762dd5db1ef6797261d0c4b1d79c1742");
INSERT INTO t_userlogs VALUES("232","5","","2014-10-29","16:01:00","190.3.47.160","{[16:01]LOGIN}/\n/","34ca90c4737e605dfde3f19091bb3739");
INSERT INTO t_userlogs VALUES("233","2","","2014-10-29","16:44:00","190.3.47.160","{[16:44]LOGIN}/\n/","0f397e6b77ba961ba1a7b8a53c87eb3e");
INSERT INTO t_userlogs VALUES("234","1","","2014-10-29","21:53:00","190.191.234.18","{[21:53]LOGIN}/\n/","4117057d412cd0cd6bbf3bc9598470fd");
INSERT INTO t_userlogs VALUES("235","2","","2014-10-30","13:52:00","190.3.47.160","{[13:52]LOGIN}/\n/","610e4824c27fae27b12d1abf62f44924");
INSERT INTO t_userlogs VALUES("236","2","","2014-10-30","13:53:00","190.3.47.160","{[13:53]LOGIN}/\n/","9cc79dd2f42c678a83bde5af87390c6c");
INSERT INTO t_userlogs VALUES("237","5","","2014-10-30","13:53:00","190.3.47.160","{[13:53]LOGIN}/\n/","137b6b168bbcc91aff6430134b28c6ee");
INSERT INTO t_userlogs VALUES("239","2","","2014-10-30","14:54:00","190.3.47.160","{[14:54]LOGIN}/\n/","25b318c2babb6f630b5df91f44f68d68");
INSERT INTO t_userlogs VALUES("240","10","","2014-10-30","14:57:00","190.3.47.160","{[14:57]LOGIN}/\n/","64ff6e0dc6cadc0b9e5f5b4b5cc2c5cc");
INSERT INTO t_userlogs VALUES("241","10","","2014-10-30","14:58:00","190.3.47.160","LOGOFF","");
INSERT INTO t_userlogs VALUES("242","10","","2014-10-30","14:59:00","190.3.47.160","{[14:59]INVALID PASSWORD}/\n/","");
INSERT INTO t_userlogs VALUES("243","10","","2014-10-30","14:59:00","190.3.47.160","{[14:59]INVALID PASSWORD}/\n/","");
INSERT INTO t_userlogs VALUES("244","10","","2014-10-30","15:00:00","190.3.47.160","{[15:00]LOGIN}/\n/","59f7118778fa20ec18edbbf728bebec1");
INSERT INTO t_userlogs VALUES("245","4","","2014-10-30","15:08:00","201.250.16.155","{[15:08]INVALID PASSWORD}/\n/","");
INSERT INTO t_userlogs VALUES("246","4","","2014-10-30","15:09:00","201.250.16.155","{[15:09]INVALID PASSWORD}/\n/","");
INSERT INTO t_userlogs VALUES("247","2","","2014-10-30","15:09:00","201.250.16.155","{[15:09]LOGIN}/\n/","2926c68bb59d6f056a8c6499c7f406d0");
INSERT INTO t_userlogs VALUES("248","2","","2014-10-30","15:10:00","201.250.16.155","LOGOFF","");
INSERT INTO t_userlogs VALUES("249","4","","2014-10-30","15:10:00","201.250.16.155","{[15:10]LOGIN}/\n/","ab2c0b7afc80168c16f35b58862974ec");
INSERT INTO t_userlogs VALUES("251","1","","2014-10-31","00:09:00","190.191.234.18","{[00:09]LOGIN}/\n/","7ce2b1153a6533b42859626787b87337");



DROP TABLE t_usernav;

CREATE TABLE `t_usernav` (
  `id_usernav` int(11) NOT NULL AUTO_INCREMENT,
  `id_userprofiles` int(11) DEFAULT '1',
  `parent_id` int(11) DEFAULT NULL,
  `master` int(2) DEFAULT '0',
  `body` varchar(50) DEFAULT NULL,
  `section` varchar(50) DEFAULT 'list',
  `section_name` varchar(30) DEFAULT NULL,
  `section_icon` varchar(20) DEFAULT 'fa-file',
  `section_order` int(5) DEFAULT '0',
  `date_added` date DEFAULT NULL,
  `last_update` datetime DEFAULT NULL,
  `id_user_last_update` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_usernav`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

INSERT INTO t_usernav VALUES("11","1","0","1","carga","list","Cargas","fa-archive ","1","","","");
INSERT INTO t_usernav VALUES("12","1","11","0","carga","list","Todas","fa-database","1","","","");
INSERT INTO t_usernav VALUES("13","1","11","0","existencia","list","Existencia","fa-database","2","","","");
INSERT INTO t_usernav VALUES("14","1","0","1","contactos","list","Contactos","fa-user","2","","","");
INSERT INTO t_usernav VALUES("15","1","14","0","transportes","list","Transportes","fa-truck","1","","","");
INSERT INTO t_usernav VALUES("16","1","14","0","despachantes","list","Despachantes","fa-paper-plane","2","","","");
INSERT INTO t_usernav VALUES("17","1","14","0","exportador","list","Exportadores","fa-globe","3","","","");
INSERT INTO t_usernav VALUES("18","1","0","1","herramientas","list","Herramientas","fa-wrench","4","","","");
INSERT INTO t_usernav VALUES("19","1","18","1","alertas","list","Alertas","fa-bell-o","1","","","");
INSERT INTO t_usernav VALUES("20","1","18","0","soporte","list","Help desk","fa-support","2","","","");
INSERT INTO t_usernav VALUES("21","1","19","0","alertas_txt","list","Templates","fa-envelope","3","","","");
INSERT INTO t_usernav VALUES("22","1","19","0","alertas_tipos","list","Tipos","fa-flask","2","","","");
INSERT INTO t_usernav VALUES("23","1","19","0","alertas_users","list","Asignadas","fa-user","1","","","");
INSERT INTO t_usernav VALUES("24","1","30","0","user","list","Usuarios","fa-user","1","","","");
INSERT INTO t_usernav VALUES("25","1","11","0","planilla_carga","list","Planilla","fa-list-alt","3","","","");
INSERT INTO t_usernav VALUES("26","3","0","1","existencia","list","Existencia","fa-truck","1","","","");
INSERT INTO t_usernav VALUES("27","3","0","1","solicitud_carga","list","Solicitud de Carga","fa-list-alt","2","","","");
INSERT INTO t_usernav VALUES("28","1","11","0","solicitud_carga","list","Solicitud de Carga","fa-truck","3","","","");
INSERT INTO t_usernav VALUES("29","1","32","0","destino","list","Destinos","fa-globe","1","","","");
INSERT INTO t_usernav VALUES("30","1","0","1","security","list","Seguridad","fa-key","6","","","");
INSERT INTO t_usernav VALUES("31","1","0","1","config","list","Configuración","fa-gears","5","","","");
INSERT INTO t_usernav VALUES("32","1","0","1","","list","Datos","fa-database","3","","","");
INSERT INTO t_usernav VALUES("33","1","30","0","userprofiles","list","Perfiles","fa-tags","2","","","");
INSERT INTO t_usernav VALUES("34","1","30","0","userbanned","list","Bloqueados","fa-ban","3","","","");
INSERT INTO t_usernav VALUES("35","1","30","0","useractive","list","Usuarios activos","fa-check-circle","4","","","");
INSERT INTO t_usernav VALUES("36","1","30","0","usernav","list","Navegación","fa-list","5","","","");
INSERT INTO t_usernav VALUES("37","1","30","0","userlang","list","Idiomas","fa-language","6","","","");
INSERT INTO t_usernav VALUES("38","1","30","0","userlogs","list","Logs","fa-clock-o","7","","","");
INSERT INTO t_usernav VALUES("40","1","30","0","userprofiles_perms","list","Permisos","fa-lock","2","2014-10-23","2014-10-23 01:29:45","1");
INSERT INTO t_usernav VALUES("41","1","31","0","useraudit","list","Auditar tablas","fa-eye","1","","2014-10-26 01:08:00","1");
INSERT INTO t_usernav VALUES("42","1","31","0","import","list","Importar datos","fa-upload","2","","","");
INSERT INTO t_usernav VALUES("43","1","31","0","userbackup","list","Realizar backup","fa-database","3","","2014-10-31 01:31:41","1");
INSERT INTO t_usernav VALUES("44","1","0","1","clientes","list","Clientes","fa-user","3","2014-10-30","2014-10-30 21:26:48","1");
INSERT INTO t_usernav VALUES("45","1","44","0","clientes","list","Listar clientes","fa-user","1","2014-10-30","2014-10-30 21:27:42","1");
INSERT INTO t_usernav VALUES("46","1","32","0","clientes_tipos","list","Tipos de cliente","fa-file","2","2014-10-30","2014-10-30 21:30:35","1");
INSERT INTO t_usernav VALUES("47","1","32","0","clientes_estados","list","Clientes estados","fa-file","3","2014-10-30","2014-10-30 21:29:36","1");
INSERT INTO t_usernav VALUES("48","1","44","0","cotizaciones","list","Cotizaciones","fa-edit","2","2014-10-30","2014-10-30 22:29:46","1");



DROP TABLE t_userprofiles;

CREATE TABLE `t_userprofiles` (
  `id_userprofiles` int(11) NOT NULL AUTO_INCREMENT,
  `code` int(5) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `longname` varchar(200) DEFAULT NULL,
  `rel_table` varchar(20) DEFAULT NULL,
  `rel_col` varchar(20) DEFAULT NULL,
  `tpl_fol` varchar(20) DEFAULT NULL,
  `section_default` varchar(50) DEFAULT NULL,
  `active` int(1) DEFAULT '1',
  `date_added` date DEFAULT NULL,
  `last_update` datetime DEFAULT NULL,
  `id_user_last_update` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_userprofiles`),
  KEY `idx_cms_profiles_name` (`name`),
  KEY `idx_cms_profiles_code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO t_userprofiles VALUES("1","0","Full Admin","Full Administrator","","","","","1","","","");
INSERT INTO t_userprofiles VALUES("2","1","Admin","Administrador","","","","","1","","","");
INSERT INTO t_userprofiles VALUES("3","2","Transporte","Transporte","t_transportes","id_transportes","","","1","","","");
INSERT INTO t_userprofiles VALUES("5","3","Seguimiento","","","","","","1","","","");



DROP TABLE t_userprofiles_perms;

CREATE TABLE `t_userprofiles_perms` (
  `id_userprofiles_perms` int(11) NOT NULL AUTO_INCREMENT,
  `id_userprofiles` int(11) DEFAULT '1',
  `id_user` int(11) DEFAULT '0',
  `all_perms` int(1) DEFAULT '0',
  `table_perms` varchar(50) DEFAULT NULL,
  `section` varchar(40) DEFAULT NULL,
  `insert_perms` int(1) DEFAULT '0',
  `update_perms` int(1) DEFAULT '0',
  `delete_perms` int(11) DEFAULT '0',
  `view_perms` int(1) DEFAULT '0',
  `export_perms` int(1) DEFAULT NULL,
  `update_fields` text,
  `view_fields` text,
  `export_fields` text,
  `update_fields_deny` text,
  `view_fields_deny` text,
  `active` int(1) DEFAULT NULL COMMENT '1',
  `date_added` date DEFAULT NULL,
  `last_update` datetime DEFAULT NULL,
  `id_user_last_update` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_userprofiles_perms`),
  KEY `idx_userprofiles_perms_id_profile` (`id_userprofiles`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

INSERT INTO t_userprofiles_perms VALUES("1","1","0","1","t_carga","","0","0","0","0","","","","","","","1","","","");
INSERT INTO t_userprofiles_perms VALUES("2","1","0","1","t_transportes","","0","0","0","0","","","","","","","1","","","");
INSERT INTO t_userprofiles_perms VALUES("3","1","0","1","t_exportador","","0","0","0","0","","","","","","","1","","","");
INSERT INTO t_userprofiles_perms VALUES("4","1","0","1","t_despachantes","","0","0","0","0","","","","","","","1","","","");
INSERT INTO t_userprofiles_perms VALUES("5","1","0","1","t_user","","0","0","0","0","","","","","","","1","","","");
INSERT INTO t_userprofiles_perms VALUES("6","3","0","0","t_planilla_carga","","1","1","0","1","","","","","","","1","","","");
INSERT INTO t_userprofiles_perms VALUES("7","3","0","0","t_carga","","0","0","0","0","","","","","","fecha_salida","1","","","");
INSERT INTO t_userprofiles_perms VALUES("8","1","0","1","t_planilla_carga","","0","0","0","0","","","","","","","1","","","");
INSERT INTO t_userprofiles_perms VALUES("9","1","0","1","t_planilla_carga_detalle","","0","0","0","0","","","","","","","1","","","");
INSERT INTO t_userprofiles_perms VALUES("18","1","0","1","t_destino","","0","0","0","0","","","","","","","1","","","");
INSERT INTO t_userprofiles_perms VALUES("21","1","0","1","t_userlang","","0","0","0","0","","","","","","","1","","","");
INSERT INTO t_userprofiles_perms VALUES("22","1","0","1","t_usernav","","0","0","0","0","","","","","","","1","","","");
INSERT INTO t_userprofiles_perms VALUES("23","1","0","1","t_userprofiles_perms","","0","0","0","0","","","","","","","1","","","");
INSERT INTO t_userprofiles_perms VALUES("24","1","0","1","t_useraudit","","0","0","0","0","0","","","","","","1","2014-10-26","2014-10-26 01:19:32","1");
INSERT INTO t_userprofiles_perms VALUES("25","1","0","1","t_clientes","","0","0","0","0","0","","","","","","1","2014-10-30","2014-10-30 22:30:45","1");



