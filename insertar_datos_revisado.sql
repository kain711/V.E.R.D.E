INSERT INTO usuario (id_usuario,nom_usuario,correo,pass,rol,estado_activo) VALUES(1,"A001","adminis@example.com","77777","Administrador",1);
INSERT INTO usuario (id_usuario,nom_usuario,correo,pass,rol,estado_activo) VALUES(2,"A002","adminis2@example.com","77777","Administrador",1);
INSERT INTO usuario (id_usuario,nom_usuario,correo,pass,rol,estado_activo) VALUES(3,"A003","adminis3@example.com","77777","Administrador",1);
INSERT INTO usuario (id_usuario,nom_usuario,correo,pass,rol,estado_activo) VALUES(4,"U001","juan.K3@example.com","77777","User",1);
INSERT INTO usuario (id_usuario,nom_usuario,correo,pass,rol,estado_activo) VALUES(5,"U002","irene78_13@example.com","77777","User",1);
INSERT INTO usuario (id_usuario,nom_usuario,correo,pass,rol,estado_activo) VALUES(6,"U003","maria78.@example.com","77777","User",1);


--Insertar familias de las plantas

INSERT INTO familia (nombre_familia,descripcion,fecha_creacion,id_usuario) VALUES("Solanaceae","Incluye una amplia gama de formas de vida, sus hojas por lo general son simples alternas y sin estipulas. Sus flores suelen ser bisexuales.A menudo tienen 5 cepalos y 5 petalos que estan soldados formando una corola de diversas formas, ademas tienen 5 estambres insertos en el tubo de la corola.Sus frutos son tipicamente una baya(como el tomate o la papa) o una capsula(como el tabaco). Son una de las familias mas importantes  para la alimentacion del ser humano","2025/06/22",1);
INSERT INTO familia (nombre_familia,descripcion,fecha_creacion,id_usuario) VALUES("Bromeliaceae","Conocida comunmente como Bromelias, es un grupo de plantas monocotiledoneas originarias de America.La mayoria de ellas son epifitas(creecen sobre otras plantas).Un rasgo distintivo de ellas son sus hojas en forma de roseta basal(La especie más conocida y de mayor importancia económica es la piña.). Sus hojas suelen ser duras y cubiertas de una especie de 'pelo' llamado tricoma, los cuales ayudan a proteger la planta de la deshidratacion.Las flores de las bromelias se agrupan en una inflorescencia muy llamativa, a menudo con brácteas (hojas modificadas que acompañan a las flores) de colores brillantes que atraen a los polinizadores como colibríes.El agua que acumulan en sus rosetas sirve como hogar para insectos, ranas y otros pequeños animales, convirtiéndolas en puntos vitales de biodiversidad en los bosques.","2025/06/22",1);
INSERT INTO familia (nombre_familia,descripcion,fecha_creacion,id_usuario) VALUES("Fabaceae","Conocida como la familia de las leguminosas, es la tercera familia mas grande de plantas terrestres. Esta familia es increiblemente diversa incluyendo hierbas,arbustos,arboles y enredaderas. Las hojas suelen ser compuesas en forma de 'folios' y tienen una base hinchada llamada plvinulo. El fruto caracteristico de esta familia es la legumbre o vaina,ejemplo de legumbres son las alverjas,frijoles y lentejas","2025/06/22",1);

INSERT INTO familia (nombre_familia,descripcion,fecha_creacion,id_usuario) VALUES("Lamiaceae","Esta familia es conocida por sus plantas aromaticas y por tener tallos de seccion cuadrada. Sus hojas suelen crecer de forma opuesta. Incluye hierbas usadas en la cocina y la medicina, como la menta, el oregano,la albahaca, el romero y el torongil","2025/06/22",1);
INSERT INTO familia (nombre_familia,descripcion,fecha_creacion,id_usuario) VALUES("Asteraceae","Es una de las familias mas grandes del mundo. Su carcaterisitica principal es que lo que parece una sola flor en realidad es un conjunto de cientos de pequeñas flores agrupadas en una cabeza. La familia incluye al girasol,la margarita,la lechuga y el altamiso","2025/06/22",2);
INSERT INTO familia (nombre_familia,descripcion,fecha_creacion,id_usuario) VALUES("Rutaceae","Esta familia es famosa por el fuerte aroma de sus hojas y de sus frutos, que se debe a la prescencia de aceites escenciales. Sus especies mas conocidas son los citricos, como la naranja,el limon y la mandarina, pero tambien incluye la ruda","2025/06/22",2);
INSERT INTO familia (nombre_familia,descripcion,fecha_creacion,id_usuario) VALUES("Cucurbitaceae","Se compone principalmente de plantas rastreras o trepadoras que crecen rapidamente. Sus frutos a menudo grandes y con cascara dura, son muy diversos en forma y tamaño. Incluye vegetales populares como el pepino, la calabaza, la sandia, el melon y la achogcha","2025/06/22",2);
INSERT INTO familia (nombre_familia,descripcion,fecha_creacion,id_usuario) VALUES("Verbenaceae","Es un grupo de plantas que incluye hierbas, arbustos y algunos arboles. Aunque no es tan grande como otras familias, esta presente en zonas tropicales y templadas.Sus hojas son opuestas al tallo y sus flores son pequeñas y se agrupan en inflorecencias. Incluye plantas de gran importancia economoca como el arbol de teca y porsupuesto el cederon","2025/06/22",2);

--Insertar el nombre de las plantas, este es un nombre general, en variedad se agregaran los diferentes tipos de esta planta 
INSERT INTO planta (nombre_cientifico,nombre_comun,tipo,fecha_registro,id_usuario,id_familia) VALUES("Cyclanthera pedata","Achojcha","enredadera","2025/07/26",1,7);
INSERT INTO planta (nombre_cientifico,nombre_comun,tipo,fecha_registro,id_usuario,id_familia) VALUES("Ambrosia arborescens","Altamiso","arbusto","2025/07/26",1,5);
INSERT INTO planta (nombre_cientifico,nombre_comun,tipo,fecha_registro,id_usuario,id_familia) VALUES("Aloysia citriodora","Cedrón","arbusto leñoso","2025/07/26",2,8);
INSERT INTO planta (nombre_cientifico,nombre_comun,tipo,fecha_registro,id_usuario,id_familia) VALUES("Physalis peruviana","Pushasha(Uvilla)","arbusto herbáceo","2025/07/26",2,1);
INSERT INTO planta (nombre_cientifico,nombre_comun,tipo,fecha_registro,id_usuario,id_familia) VALUES("Rosmarinus officinalis","Romero","arbusto leñoso perenne","2025/07/26",3,4);
INSERT INTO planta (nombre_cientifico,nombre_comun,tipo,fecha_registro,id_usuario,id_familia) VALUES("Ruta graveolens","Ruda","subarbusto perenne","2025/07/26",3,6);
INSERT INTO planta (nombre_cientifico,nombre_comun,tipo,fecha_registro,id_usuario,id_familia) VALUES("Solanum betaceum","Tomate de árbol","arbusto leñoso","2025/07/26",3,1);
INSERT INTO planta (nombre_cientifico,nombre_comun,tipo,fecha_registro,id_usuario,id_familia) VALUES("Melissa officinalis","Torongil","arbusto ","2025/07/26",3,1);

--Insertar origen de las plantas

INSERT INTO origen("region_origen","descripcion") VALUES("Región Andina de Sudamérica","Se caracteriza por la cordillera de los Andes, la mas larga del mundo, reconocida por su gran variedad de ecosistemas.Se conoce como un centro de domesticacion de plantas donde se originaron varios de los cultivos mas importantes del mundo(como la papa,la quinua entre otras");
INSERT INTO origen("region_origen","descripcion") VALUES("Región Mediterranea","Esta region esta constituida alrededor del mar mediterráneo. Abarca el sur de Europa,norte de África y parte occidental de Asia.Goza de un clima caluroso y seco en verano e inviernos suaves y húmedos, es el lugar de origen de muchas hierbas medicinales y aromaticas");
INSERT INTO origen("region_origen","descripcion") VALUES("Regiones templadas de Sudamérica","Estas regiones se caracterizan por sus variados paisajes que van desde los valles fertiles, pasando por la pampa hasta llegar a la costas.El clima es mas templado que en las zonas tropicales, lo que ha permitido el desarrollo de especies adaptadas a estas condiciones");
INSERT INTO origen("region_origen","descripcion") VALUES("Sur de Europa y Asia menor","Regiones que tienen veranos calurosos y secos, e inviernos suaves y húmedos. Sus paisajes están definidos por costas, colinas rocosas y valles fértiles. Históricamente, esta región es la cuna de grandes civilizaciones, y su agricultura se ha adaptado a su clima, dando lugar a cultivos icónicos como la uva, el olivo y el trigo.");

--Insertar la variedad de cada planta
INSERT INTO variedad("id_planta","id_origen","nombre","descripcion","fecha_creacion_variedad","estado") VALUES (1,1,"Achojcha común","Es la variedad más típica de la achogcha, la que se encuentra con mayor frecuencia en los mercados y huertos. Su fruto es de tamaño mediano y sabor suave, ideal para preparaciones cotidianas.","2025/07/25","activo");
INSERT INTO variedad("id_planta","id_origen","nombre","descripcion","fecha_creacion_variedad","estado") VALUES (2,1,"Altamiso común"," Representa la forma estándar del altamiso. Es un arbusto perenne de aroma intenso, ampliamente conocido y utilizado en la medicina tradicional andina por sus propiedades curativas","2025/07/25","activo");
INSERT INTO variedad("id_planta","id_origen","nombre","descripcion","fecha_creacion_variedad","estado") VALUES (3,3,"Cedron común"," Representa la forma estándar del altamiso. Es un arbusto perenne de aroma intenso, ampliamente conocido y utilizado en la medicina tradicional andina por sus propiedades curativas","2025/07/25","activo");
INSERT INTO variedad("id_planta","id_origen","nombre","descripcion","fecha_creacion_variedad","estado") VALUES (6,1,"Ruda macho","Este es un nombre popular para una variedad de ruda que se distingue por su aroma aún más penetrante y su crecimiento más robusto. Se considera que tiene propiedades más potentes, tanto aromáticas como medicinales.","2025/07/25","activo");
INSERT INTO variedad("id_planta","id_origen","nombre","descripcion","fecha_creacion_variedad","estado") VALUES (5,2,"Romero macho","Se trata de una denominación local para una variedad de romero que se percibe con un aroma más fuerte y una estructura más vigorosa que el romero común. Es preferido en ocasiones por sus cualidades aromáticas más intensas.","2025/07/25","activo");
INSERT INTO variedad("id_planta","id_origen","nombre","descripcion","fecha_creacion_variedad","estado") VALUES (4,1,"Pushasha común(Uvilla)"," Es la variedad estándar de la uvilla, la que produce el fruto redondo y dulce con un sabor distintivo y una cáscara protectora. Es la forma más conocida y consumida de esta planta andina.","2025/07/25","activo");
INSERT INTO variedad("id_planta","id_origen","nombre","descripcion","fecha_creacion_variedad","estado") VALUES (7,1,"Tomate de árbol","La variedad más extendida y cultivada de este árbol frutal. Produce el fruto de forma ovalada, con un color que varía entre el rojo y el naranja, y es la base de jugos, mermeladas y salsas.","2025/07/25","activo");
INSERT INTO variedad("id_planta","id_origen","nombre","descripcion","fecha_creacion_variedad","estado") VALUES (8,2,"Torongil común","La variedad más tradicional del toronjil, reconocible por su fragancia fresca, similar al limón. Es la que se cultiva con mayor regularidad en los hogares para infusiones calmantes","2025/07/25","activo");

--Ingresar datos en tipo_suelo
INSERT INTO tipo_suelo (id_tipo_suelo, tipo_suelo, descripcion) VALUES (1, "Andosoloes", "Suelos derivados de cenizas volcánicas, fértiles y bien drenados.");
INSERT INTO tipo_suelo (id_tipo_suelo, tipo_suelo, descripcion) VALUES (2, "Inceptisoles", "Suelos jóvenes con desarrollo de horizontes incipientes.");
INSERT INTO tipo_suelo (id_tipo_suelo, tipo_suelo, descripcion) VALUES (3, "Entisoles", "Suelos muy jóvenes, sin desarrollo de horizontes.");
INSERT INTO tipo_suelo (id_tipo_suelo, tipo_suelo, descripcion) VALUES (4, "Molisoles", "Suelos de praderas, ricos en materia orgánica y nutrientes.");
INSERT INTO tipo_suelo (id_tipo_suelo, tipo_suelo, descripcion) VALUES (5, "Ultisoles", "Suelos ácidos y lixiviados, comunes en regiones húmedas.");
INSERT INTO tipo_suelo (id_tipo_suelo, tipo_suelo, descripcion) VALUES (6, "Alfisoles", "Suelos con acumulación de arcilla en el subsuelo, fértiles.");

--===========Ingresar datos en temporada=======================

INSERT INTO temporada (id_temporada, tipo, nombre, mes_inicio, mes_fin) VALUES (1, "Floración", "Primavera-Verano", 3, 8);
INSERT INTO temporada (id_temporada, tipo, nombre, mes_inicio, mes_fin) VALUES (2, "Cosecha", "Verano-Otoño", 6, 11);
INSERT INTO temporada (id_temporada, tipo, nombre, mes_inicio, mes_fin) VALUES (3, "Siembra", "Primavera", 3, 5);

--===============Insertar datos en ubicacion_geografica=======================
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (1, -2.893953, -78.994228, 2417, "SIERRA", "Huaynacapac", "Cuenca", "Azuay", "UbicaciÃ³n simulada #1 para mapa de calor");
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (2, -2.909386, -79.009269, 2480, "SIERRA", "Huaynacapac", "Cuenca", "Azuay", "UbicaciÃ³n simulada #2 para mapa de calor");
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (3, -.289758, -79.007918, 2658, "SIERRA", "Totoracocha", "Cuenca", "Azuay", "UbicaciÃ³n simulada #3 para mapa de calor");
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (4, -2.893394, -7.899445, 2594, "SIERRA", "Huaynacapac", "Cuenca", "Azuay", "UbicaciÃ³n simulada #4 para mapa de calor");
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (5, -2.900075, -79.008685, 2542, "SIERRA", "Bellavista", "Cuenca", "Azuay", "UbicaciÃ³n simulada #5 para mapa de calor");
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (6, -2.909522, -78.997214, 2431, "SIERRA", "Narancay", "Cuenca", "Azuay", "UbicaciÃ³n simulada #6 para mapa de calor");
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (7, -2.905388, -79.004346, 2424, "SIERRA", "El Valle", "Cuenca", "Azuay", "UbicaciÃ³n simulada #7 para mapa de calor");
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (8, -2.891912, -7.899284, 2595, "SIERRA", "El Valle", "Cuenca", "Azuay", "UbicaciÃ³n simulada #8 para mapa de calor");
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (9, -2.903966, -7.900494, 2548, "SIERRA", "Huaynacapac", "Cuenca", "Azuay", "UbicaciÃ³n simulada #9 para mapa de calor");
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (10, -2.909055, -79.005613, 2672, "SIERRA", "Narancay", "Cuenca", "Azuay", "UbicaciÃ³n simulada #10 para mapa de calor");
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (11, -2.902731, -78.995605, 2570, "SIERRA", "Bellavista", "Cuenca", "Azuay", "UbicaciÃ³n simulada #11 para mapa de calor");
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (12, -2.903585, -79.008714, 2590, "SIERRA", "Yanuncay", "Cuenca", "Azuay", "UbicaciÃ³n simulada #12 para mapa de calor");
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (13, -2.905278, -78.993437, 2415, "SIERRA", "El Valle", "Cuenca", "Azuay", "UbicaciÃ³n simulada #13 para mapa de calor");
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (14, -2.890457, -79.008405, 2408, "SIERRA", "Totoracocha", "Cuenca", "Azuay", "UbicaciÃ³n simulada #14 para mapa de calor");
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (15, -.289225, -79.004789, 2450, "SIERRA", "El Valle", "Cuenca", "Azuay", "UbicaciÃ³n simulada #15 para mapa de calor");
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (16, -2.890501, -78.996909, 2449, "SIERRA", "El Valle", "Cuenca", "Azuay", "UbicaciÃ³n simulada #16 para mapa de calor");
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (17, -2.902216, -78.991422, 2641, "SIERRA", "Yanuncay", "Cuenca", "Azuay", "UbicaciÃ³n simulada #17 para mapa de calor");
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (18, -2.892274, -79.002106, 2650, "SIERRA", "Totoracocha", "Cuenca", "Azuay", "UbicaciÃ³n simulada #18 para mapa de calor");
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (19, -.289291, -78.990023, 2685, "SIERRA", "Bellavista", "Cuenca", "Azuay", "UbicaciÃ³n simulada #19 para mapa de calor");
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (20, -2.896102, -79.000161, 2456, "SIERRA", "Huaynacapac", "Cuenca", "Azuay", "UbicaciÃ³n simulada #20 para mapa de calor");
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (21, -2.903298, -79.009242, 2609, "SIERRA", "El Valle", "Cuenca", "Azuay", "UbicaciÃ³n simulada #21 para mapa de calor");
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (22, -2.903046, -78.992054, 2649, "SIERRA", "Narancay", "Cuenca", "Azuay", "UbicaciÃ³n simulada #22 para mapa de calor");
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (23, -2.907784, -7.900588, 2524, "SIERRA", "Yanuncay", "Cuenca", "Azuay", "UbicaciÃ³n simulada #23 para mapa de calor");
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (24, -2.898517, -78.994701, 2625, "SIERRA", "Yanuncay", "Cuenca", "Azuay", "UbicaciÃ³n simulada #24 para mapa de calor");
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (25, -.289123, -78.991959, 2459, "SIERRA", "Huaynacapac", "Cuenca", "Azuay", "UbicaciÃ³n simulada #25 para mapa de calor");
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (26, -2.891921, -78.996326, 2613, "SIERRA", "Yanuncay", "Cuenca", "Azuay", "UbicaciÃ³n simulada #26 para mapa de calor");
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (27, -2.893993, -78.991182, 2656, "SIERRA", "Yanuncay", "Cuenca", "Azuay", "UbicaciÃ³n simulada #27 para mapa de calor");
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (28, -2.892473, -79.009338, 2436, "SIERRA", "Huaynacapac", "Cuenca", "Azuay", "UbicaciÃ³n simulada #28 para mapa de calor");
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (29, -2.902973, -79.007817, 2467, "SIERRA", "Narancay", "Cuenca", "Azuay", "UbicaciÃ³n simulada #29 para mapa de calor");
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (30, -2.894368, -78.991209, 2677, "SIERRA", "Totoracocha", "Cuenca", "Azuay", "UbicaciÃ³n simulada #30 para mapa de calor");
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (31, -2.896018, -79.005438, 2551, "SIERRA", "Totoracocha", "Cuenca", "Azuay", "UbicaciÃ³n simulada #31 para mapa de calor");
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (32, -2.903962, -79.001343, 2532, "SIERRA", "Narancay", "Cuenca", "Azuay", "UbicaciÃ³n simulada #32 para mapa de calor");
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (33, -2.904169, -78.994718, 2541, "SIERRA", "Huaynacapac", "Cuenca", "Azuay", "UbicaciÃ³n simulada #33 para mapa de calor");
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (34, -2.894233, -79.007814, 2439, "SIERRA", "Narancay", "Cuenca", "Azuay", "UbicaciÃ³n simulada #34 para mapa de calor");
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (35, -2.903639, -78.992919, 2495, "SIERRA", "Narancay", "Cuenca", "Azuay", "UbicaciÃ³n simulada #35 para mapa de calor");
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (36, -2.904346, -78.993292, 2651, "SIERRA", "Totoracocha", "Cuenca", "Azuay", "UbicaciÃ³n simulada #36 para mapa de calor");
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (37, -2.908286, -79.003211, 2407, "SIERRA", "Bellavista", "Cuenca", "Azuay", "UbicaciÃ³n simulada #37 para mapa de calor");
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (38, -2.905865, -79.003854, 2502, "SIERRA", "Huaynacapac", "Cuenca", "Azuay", "UbicaciÃ³n simulada #38 para mapa de calor");
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (39, -2.896728, -7.899556, 2646, "SIERRA", "Totoracocha", "Cuenca", "Azuay", "UbicaciÃ³n simulada #39 para mapa de calor");
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (40, -2.892849, -7.900244, 2510, "SIERRA", "Totoracocha", "Cuenca", "Azuay", "UbicaciÃ³n simulada #40 para mapa de calor");
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (41, -2.891169, -79.002109, 2654, "SIERRA", "Bellavista", "Cuenca", "Azuay", "UbicaciÃ³n simulada #41 para mapa de calor");
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (42, -2.891886, -79.002939, 2579, "SIERRA", "Bellavista", "Cuenca", "Azuay", "UbicaciÃ³n simulada #42 para mapa de calor");
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (43, -2.909752, -79.000955, 2401, "SIERRA", "Totoracocha", "Cuenca", "Azuay", "UbicaciÃ³n simulada #43 para mapa de calor");
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (44, -2.903829, -78.998111, 2476, "SIERRA", "Huaynacapac", "Cuenca", "Azuay", "UbicaciÃ³n simulada #44 para mapa de calor");
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (45, -2.891834, -78.998333, 2698, "SIERRA", "Huaynacapac", "Cuenca", "Azuay", "UbicaciÃ³n simulada #45 para mapa de calor");
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (46, -2.891951, -79.009127, 2476, "SIERRA", "Huaynacapac", "Cuenca", "Azuay", "UbicaciÃ³n simulada #46 para mapa de calor");
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (47, -2.905082, -78.991488, 2586, "SIERRA", "Yanuncay", "Cuenca", "Azuay", "UbicaciÃ³n simulada #47 para mapa de calor");
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (48, -2.904028, -79.000049, 2414, "SIERRA", "Totoracocha", "Cuenca", "Azuay", "UbicaciÃ³n simulada #48 para mapa de calor");
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (49, -2.896052, -78.999555, 2529, "SIERRA", "Bellavista", "Cuenca", "Azuay", "UbicaciÃ³n simulada #49 para mapa de calor");
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (50, -2.904171, -79.009354, 2480, "SIERRA", "El Valle", "Cuenca", "Azuay", "UbicaciÃ³n simulada #50 para mapa de calor");
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (51, -2.893767, -79.006588, 2581, "SIERRA", "Totoracocha", "Cuenca", "Azuay", "UbicaciÃ³n simulada #51 para mapa de calor");
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (52, -2.899949, -.790063, 2460, "SIERRA", "Huaynacapac", "Cuenca", "Azuay", "UbicaciÃ³n simulada #52 para mapa de calor");
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (53, -2.897505, -79.007423, 2653, "SIERRA", "Totoracocha", "Cuenca", "Azuay", "UbicaciÃ³n simulada #53 para mapa de calor");
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (54, -2.898506, -78.999211, 2691, "SIERRA", "Huaynacapac", "Cuenca", "Azuay", "UbicaciÃ³n simulada #54 para mapa de calor");
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (55, -.290174, -79.004211, 2692, "SIERRA", "Totoracocha", "Cuenca", "Azuay", "UbicaciÃ³n simulada #55 para mapa de calor");
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (56, -2.900508, -78.994804, 2648, "SIERRA", "Narancay", "Cuenca", "Azuay", "UbicaciÃ³n simulada #56 para mapa de calor");
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (57, -2.901453, -78.997197, 2589, "SIERRA", "Narancay", "Cuenca", "Azuay", "UbicaciÃ³n simulada #57 para mapa de calor");
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (58, -2.903626, -79.008561, 2524, "SIERRA", "El Valle", "Cuenca", "Azuay", "UbicaciÃ³n simulada #58 para mapa de calor");
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (59, -2.902514, -78.996184, 2680, "SIERRA", "Yanuncay", "Cuenca", "Azuay", "UbicaciÃ³n simulada #59 para mapa de calor");
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (60, -2.901662, -78.990846, 2523, "SIERRA", "Huaynacapac", "Cuenca", "Azuay", "UbicaciÃ³n simulada #60 para mapa de calor");
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (61, -2.901988, -79.009872, 2679, "SIERRA", "Huaynacapac", "Cuenca", "Azuay", "UbicaciÃ³n simulada #61 para mapa de calor");
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (62, -2.902161, -78.990994, 2541, "SIERRA", "Huaynacapac", "Cuenca", "Azuay", "UbicaciÃ³n simulada #62 para mapa de calor");
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (63, -2.895707, -7.899982, 2511, "SIERRA", "El Valle", "Cuenca", "Azuay", "UbicaciÃ³n simulada #63 para mapa de calor");
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (64, -2.901484, -78.991263, 2686, "SIERRA", "Huaynacapac", "Cuenca", "Azuay", "UbicaciÃ³n simulada #64 para mapa de calor");
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (65, -.290443, -78.990476, 2537, "SIERRA", "Narancay", "Cuenca", "Azuay", "UbicaciÃ³n simulada #65 para mapa de calor");
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (66, -2.906571, -79.006254, 2586, "SIERRA", "Bellavista", "Cuenca", "Azuay", "UbicaciÃ³n simulada #66 para mapa de calor");
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (67, -.290603, -78.994564, 2626, "SIERRA", "Totoracocha", "Cuenca", "Azuay", "UbicaciÃ³n simulada #67 para mapa de calor");
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (68, -2.897681, -78.996662, 2638, "SIERRA", "Bellavista", "Cuenca", "Azuay", "UbicaciÃ³n simulada #68 para mapa de calor");
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (69, -2.909724, -79.001289, 2444, "SIERRA", "Huaynacapac", "Cuenca", "Azuay", "UbicaciÃ³n simulada #69 para mapa de calor");
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (70, -2.906962, -78.991428, 2452, "SIERRA", "Yanuncay", "Cuenca", "Azuay", "UbicaciÃ³n simulada #70 para mapa de calor");
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (71, -2.908306, -79.005068, 2687, "SIERRA", "El Valle", "Cuenca", "Azuay", "UbicaciÃ³n simulada #71 para mapa de calor");
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (72, -2.901667, -78.991087, 2572, "SIERRA", "Totoracocha", "Cuenca", "Azuay", "UbicaciÃ³n simulada #72 para mapa de calor");
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (73, -2.895151, -79.004492, 2492, "SIERRA", "Huaynacapac", "Cuenca", "Azuay", "UbicaciÃ³n simulada #73 para mapa de calor");
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (74, -2.906429, -79.008068, 2426, "SIERRA", "Totoracocha", "Cuenca", "Azuay", "UbicaciÃ³n simulada #74 para mapa de calor");
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (75, -2.898315, -79.006773, 2418, "SIERRA", "Totoracocha", "Cuenca", "Azuay", "UbicaciÃ³n simulada #75 para mapa de calor");
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (76, -2.892077, -78.993234, 2633, "SIERRA", "Totoracocha", "Cuenca", "Azuay", "UbicaciÃ³n simulada #76 para mapa de calor");
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (77, -2.899357, -79.005423, 2424, "SIERRA", "Bellavista", "Cuenca", "Azuay", "UbicaciÃ³n simulada #77 para mapa de calor");
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (78, -2.894818, -79.006659, 2496, "SIERRA", "Yanuncay", "Cuenca", "Azuay", "UbicaciÃ³n simulada #78 para mapa de calor");
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (79, -2.890634, -78.997858, 2418, "SIERRA", "El Valle", "Cuenca", "Azuay", "UbicaciÃ³n simulada #79 para mapa de calor");
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (80, -2.901453, -78.995218, 2480, "SIERRA", "El Valle", "Cuenca", "Azuay", "UbicaciÃ³n simulada #80 para mapa de calor");


--==============Insertar datos en variedad_ubicacion==================================
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (1, 1, "Jardín comunitario", "Baja", "Observación automática #1", "2025-05-04");
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (1, 2, "Macetas", "Baja", "Observación automática #2", "2025-05-27");
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (1, 3, "Huerto urbano", "Alta", "Observación automática #3", "2025-05-15");
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (1, 4, "Macetas", "Media", "Observación automática #4", "2025-05-04");
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (1, 5, "Huerto urbano", "Media", "Observación automática #5", "2025-06-15");
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (1, 6, "Macetas", "Alta", "Observación automática #6", "2025-07-08");
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (1, 7, "Macetas", "Alta", "Observación automática #7", "2025-05-03");
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (1, 8, "Macetas", "Media", "Observación automática #8", "2025-06-26");
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (1, 9, "Parque", "Media", "Observación automática #9", "2025-05-15");
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (1, 10, "Parque", "Baja", "Observación automática #10", "2025-06-06");
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (2, 11, "Terreno baldío", "Media", "Observación automática #1", "2025-05-10");
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (2, 12, "Parque", "Media", "Observación automática #2", "2025-06-21");
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (2, 13, "Jardín comunitario", "Media", "Observación automática #3", "2025-05-09");
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (2, 14, "Orilla de río", "Baja", "Observación automática #4", "2025-06-21");
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (2, 15, "Terreno baldío", "Baja", "Observación automática #5", "2025-06-28");
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (2, 16, "Orilla de río", "Alta", "Observación automática #6", "2025-06-20");
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (2, 17, "Terreno baldío", "Baja", "Observación automática #7", "2025-05-17");
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (2, 18, "Macetas", "Baja", "Observación automática #8", "2025-05-18");
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (2, 19, "Terreno baldío", "Baja", "Observación automática #9", "2025-07-22");
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (2, 20, "Orilla de río", "Media", "Observación automática #10", "2025-05-19");
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (3, 21, "Macetas", "Baja", "Observación automática #1", "2025-05-26");
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (3, 22, "Parque", "Media", "Observación automática #2", "2025-04-27");
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (3, 23, "Macetas", "Baja", "Observación automática #3", "2025-07-08");
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (3, 24, "Jardín comunitario", "Baja", "Observación automática #4", "2025-06-09");
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (3, 25, "Macetas", "Alta", "Observación automática #5", "2025-04-30");
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (3, 26, "Jardín comunitario", "Media", "Observación automática #6", "2025-06-25");
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (3, 27, "Parque", "Baja", "Observación automática #7", "2025-06-11");
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (3, 28, "Parque", "Media", "Observación automática #8", "2025-04-27");
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (3, 29, "Jardín comunitario", "Baja", "Observación automática #9", "2025-05-09");
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (3, 30, "Parque", "Alta", "Observación automática #10", "2025-07-22");
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (4, 31, "Terreno baldío", "Alta", "Observación automática #1", "2025-04-26");
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (4, 32, "Huerto urbano", "Alta", "Observación automática #2", "2025-07-09");
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (4, 33, "Jardín comunitario", "Alta", "Observación automática #3", "2025-04-26");
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (4, 34, "Jardín comunitario", "Alta", "Observación automática #4", "2025-05-31");
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (4, 35, "Huerto urbano", "Baja", "Observación automática #5", "2025-05-11");
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (4, 36, "Terreno baldío", "Alta", "Observación automática #6", "2025-05-17");
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (4, 37, "Huerto urbano", "Media", "Observación automática #7", "2025-05-03");
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (4, 38, "Parque", "Media", "Observación automática #8", "2025-07-01");
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (4, 39, "Orilla de río", "Media", "Observación automática #9", "2025-04-25");
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (4, 40, "Huerto urbano", "Baja", "Observación automática #10", "2025-07-07");
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (5, 41, "Orilla de río", "Media", "Observación automática #1", "2025-07-19");
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (5, 42, "Macetas", "Media", "Observación automática #2", "2025-06-02");
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (5, 43, "Terreno baldío", "Alta", "Observación automática #3", "2025-07-18");
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (5, 44, "Parque", "Alta", "Observación automática #4", "2025-06-07");
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (5, 45, "Macetas", "Media", "Observación automática #5", "2025-06-08");
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (5, 46, "Parque", "Baja", "Observación automática #6", "2025-06-19");
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (5, 47, "Jardín comunitario", "Alta", "Observación automática #7", "2025-07-07");
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (5, 48, "Orilla de río", "Alta", "Observación automática #8", "2025-05-18");
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (5, 49, "Terreno baldío", "Baja", "Observación automática #9", "2025-07-05");
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (5, 50, "Orilla de río", "Media", "Observación automática #10", "2025-05-31");
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (6, 51, "Macetas", "Media", "Observación automática #1", "2025-06-30");
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (6, 52, "Macetas", "Media", "Observación automática #2", "2025-06-07");
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (6, 53, "Jardín comunitario", "Media", "Observación automática #3", "2025-06-23");
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (6, 54, "Parque", "Media", "Observación automática #4", "2025-06-12");
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (6, 55, "Orilla de río", "Alta", "Observación automática #5", "2025-07-08");
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (6, 56, "Macetas", "Alta", "Observación automática #6", "2025-06-18");
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (6, 57, "Orilla de río", "Baja", "Observación automática #7", "2025-05-03");
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (6, 58, "Huerto urbano", "Alta", "Observación automática #8", "2025-07-01");
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (6, 59, "Parque", "Alta", "Observación automática #9", "2025-06-02");
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (6, 60, "Macetas", "Media", "Observación automática #10", "2025-07-15");
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (7, 61, "Parque", "Media", "Observación automática #1", "2025-06-27");
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (7, 62, "Orilla de río", "Alta", "Observación automática #2", "2025-06-16");
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (7, 63, "Orilla de río", "Media", "Observación automática #3", "2025-05-30");
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (7, 64, "Orilla de río", "Media", "Observación automática #4", "2025-07-07");
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (7, 65, "Orilla de río", "Baja", "Observación automática #5", "2025-07-02");
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (7, 66, "Jardín comunitario", "Baja", "Observación automática #6", "2025-05-21");
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (7, 67, "Orilla de río", "Alta", "Observación automática #7", "2025-07-07");
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (7, 68, "Terreno baldío", "Alta", "Observación automática #8", "2025-07-20");
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (7, 69, "Jardín comunitario", "Alta", "Observación automática #9", "2025-05-20");
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (7, 70, "Terreno baldío", "Baja", "Observación automática #10", "2025-06-16");
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (8, 71, "Macetas", "Alta", "Observación automática #1", "2025-06-13");
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (8, 72, "Macetas", "Baja", "Observación automática #2", "2025-07-08");
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (8, 73, "Parque", "Media", "Observación automática #3", "2025-07-03");
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (8, 74, "Terreno baldío", "Media", "Observación automática #4", "2025-05-19");
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (8, 75, "Terreno baldío", "Baja", "Observación automática #5", "2025-05-30");
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (8, 76, "Terreno baldío", "Media", "Observación automática #6", "2025-05-23");
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (8, 77, "Terreno baldío", "Baja", "Observación automática #7", "2025-06-15");
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (8, 78, "Orilla de río", "Baja", "Observación automática #8", "2025-04-24");
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (8, 79, "Jardín comunitario", "Alta", "Observación automática #9", "2025-04-27");
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (8, 80, "Orilla de río", "Alta", "Observación automática #10", "2025-06-04");


--=================Insertar datos generales de los usos
INSERT INTO uso (nombre, descripcion, enlace) VALUES
("Medicinal", "Utilizado para aliviar o tratar enfermedades, malestares y afecciones.", "https://www.youtube.com/watch?v=ejemplo_medicinal"),
("Alimenticio", "Consumido como parte de la dieta diaria, ya sea en comidas, bebidas o infusiones.", "https://www.youtube.com/watch?v=ejemplo_alimenticio"),
("Ornamental", "Usado con fines decorativos en jardines, interiores o arreglos florales.", "https://www.youtube.com/watch?v=ejemplo_ornamental"),
("Aromático", "Apreciado por su fragancia, utilizado en infusiones, sahumerios o aceites esenciales.", "https://www.youtube.com/watch?v=ejemplo_aromatico"),
("Ritual/Tradicional", "Empleado en prácticas culturales, religiosas o espirituales.", "https://www.youtube.com/watch?v=ejemplo_ritual");


--=============Ingresar datos de usos(generales y luego se relacionan con cada planta ya que pueden tener los mismos usos)====


-- Usos típicos en la gastronomía y medicina popular ecuatoriana
-- Tomate de árbol común
INSERT INTO variedad_uso (id_variedad, id_uso, enlace) VALUES (7, 1, "https://www.youtube.com/watch?v=RmRoThMbpB0"),(7, 2, "https://www.laylita.com/recetas/aji-de-tomate-de-arbol/");--aji de tomate de arbol

-- Romero hembra
INSERT INTO variedad_uso (id_variedad, id_uso, enlace) VALUES
  (5, 1, "https://www.youtube.com/shorts/OmesnR7JlJU"),--tonico de romero
  (5, 5, "https://www.tuasaude.com/es/te-de-romero/");--te de romero

-- Uvilla silvestre
INSERT INTO variedad_uso (id_variedad, id_uso, enlace) VALUES
  (6, 2, "https://www.youtube.com/watch?v=GJd2gBOfOi8");

-- Cedrón común
INSERT INTO variedad_uso (id_variedad, id_uso, enlace) VALUES
  (3, 4, "https://www.youtube.com/watch?v=6s4t3JW1Jvg"),--infusion de cedron
  (3, 5, "https://elhorticultor.org/propiedades-del-cedron-o-hierba-luisa/");

-- Achocha común
INSERT INTO variedad_uso (id_variedad, id_uso, enlace) VALUES
  (1, 1, "https://www.youtube.com/shorts/CbPZhAycjIQ");

-- Torongil grande
INSERT INTO variedad_uso (id_variedad, id_uso, enlace) VALUES
  (8, 4, "https://www.pharmascalabis.com/es/artigo/beneficios-del-te-de-toronjil-propiedades-y-usos/");

-- Altamizo
INSERT INTO variedad_uso (id_variedad, id_uso, enlace) VALUES
  (2, 1, "https://youtube.com/shorts/MRdwGwIkZrs?feature=share");--limpias con altamizo

-- Ruda macho
INSERT INTO variedad_uso (id_variedad, id_uso, enlace) VALUES
  (4, 5, "https://blog.germigarden.com/jardineria/ruda-planta-aromatica-culinaria/"),
  (4, 1, "https://etnobotanica.ec/ruda-contra-dolores")
 
--=======Insertar catalogo de riesgos
--=========================insertar datos en tipo_riesgo
INSERT INTO tipo_riesgo (nombre) VALUES
  ( "Manipulación" ),   -- 1  Espinas, pelusa, látex irritante…
  ( "Consumo"      ),   -- 2  Reacciones digestivas o tóxicas
  ( "Inhalación"   );   -- 3  Alergias, aceites esenciales fuertes

--======Insertar datos de riesgo a cada planta
INSERT INTO variedad_riesgo (id_variedad, id_riesgo, nivel, descripcion) VALUES
  (1, 2, 1, "Fruto verde puede ser irritante para estómago sensible"),
  (2, 1, 1, "Hojas rígidas pueden causar pequeña irritación cutánea"),
  (2, 3, 2, "Aceite esencial fuerte, posible alergia en asmáticos"),
  (3, 2, 1, "Fruto verde es laxante; consuma maduro"),
  (4, 3, 2, "Aroma potente puede causar estornudos"),
  (5, 2, 1, "Semillas crudas son amargas, cocer antes"),
  (6, 3, 1, "Aroma cítrico, baja incidencia de alergia"),
  (7, 1, 3, "Pelusilla de hoja produce urticaria al tacto"),
  (7, 2, 2, "Infusión concentrada puede ser emenagoga"),
  (8, 1, 3, "Savia irritante, dermatitis por contacto"),
  (8, 2, 3, "Alto riesgo en consumo excesivo; potencial abortivo");
  
--================Catalogo de temporadas
INSERT INTO temporada (tipo, nombre, mes_inicio, mes_fin) VALUES
  ("siembra",  "Invierno-siembra", 10, 12),  -- id 1
  ("siembra",  "Verano-siembra",   3,  4),   -- id 2
  ("cosecha",  "Invierno-cosecha", 2,  4),   -- id 3
  ("cosecha",  "Verano-cosecha",   7,  9);   -- id 4



--===========Insertar datos en variedad temporada
INSERT INTO variedad_temporada (id_variedad, id_temporada, es_principal, condiciones) VALUES
  -- Tomate de árbol común
  (1, 1, TRUE , "Siembra principal en época de lluvias"),
  (1, 3, TRUE , "Cosecha principal a finales de verano andino"),

  -- Romero hembra (perenne, se propaga por esquejes)
  (2, 2, TRUE , "Siembra por estacas en época seca"),

  -- Uvilla silvestre
  (3, 1, TRUE , "Siembra en almácigo cubierto"),
  (3, 3, TRUE , "Cosecha de frutos maduros"),

  -- Cedrón común
  (4, 2, TRUE , "Siembra por esqueje o semilla"),
  (4, 4, TRUE , "Cosecha de hojas tiernas"),

  -- Achocha común
  (5, 2, TRUE , "Siembra directa en surcos"),
  (5, 4, TRUE , "Cosecha de frutos tiernos"),

  -- Torongil grande
  (6, 2, TRUE , "Siembra en almácigo sombreado"),
  (6, 4, TRUE , "Cosecha de hojas cada 2 meses"),

  -- Altamizo
  (7, 1, TRUE , "Siembra por división de mata"),
  (7, 3, TRUE , "Cosecha de hojas medicinales"),

  -- Ruda macho (cosecha todo el año, solo registramos siembra)
  (8, 2, TRUE , "Siembra en maceta o bancal bien drenado");
--==================Insertar datos en caracteristica_ambiental
INSERT INTO caracteristica_ambiental
 (ph_min, ph_max, temp_min, temp_max, humedad_optima,
  altitud_min, altitud_max, id_tipo_suelo)
VALUES
  (5.5, 6.8, 15, 22, 60, 2200, 3000, 1),  -- id_caract = 1
  (6.0, 7.5, 12, 25, 55, 2500, 3200, 1),  -- id_caract = 2
  (5.8, 7.0, 13, 23, 65, 2000, 2800, 2),  -- id_caract = 3
  (6.2, 7.4, 14, 24, 60, 2300, 3100, 2),  -- id_caract = 4
  (5.0, 6.5, 18, 26, 70, 1800, 2400, 3),  -- id_caract = 5
  (5.7, 7.2, 16, 24, 60, 2100, 2900, 4),  -- id_caract = 6
  (4.8, 6.0, 17, 25, 75, 2000, 2600, 5),  -- id_caract = 7
  (6.0, 7.5, 15, 23, 55, 2200, 3000, 6);  -- id_caract = 8

--===============Relacionar con variedad
INSERT INTO variedad_ambiente (id_variedad, id_caract) VALUES
  (1, 1),
  (2, 2),
  (3, 3),
  (4, 4),
  (5, 5),
  (6, 6),
  (7, 7),
  (8, 8);

--===========Papel_cadena=======================
INSERT INTO papel_cadena (nombre_papel, descripcion) VALUES
  ("agricultor", "Persona que cultiva y cosecha las plantas"),
  ("comerciante", "Persona que vende directamente en mercados"),
  ("proveedor", "Persona o entidad que distribuye productos a comerciantes"),
  ("intermediario", "Interviene entre productor y vendedor final"),
  ("transformador", "Persona que procesa el producto para venta secundaria");

--================insertar asociaciones 
INSERT INTO asociacion (nombre, tipo, descripcion, id_usuario, fecha_creacion) VALUES
  ("APA",  "PRODUCTOR",   "Asociación de Productores Agroecológicos",1, CURRENT_DATE),
  ("COFELIC", "COMERCIANTE", "Comerciantes Feria Libre de Cuenca",1, CURRENT_DATE);

--Insertar mercados
INSERT INTO mercado (nombre, direccion, latitud, longitud,     
                     horario_apertura, horario_cierre, imagen_url, id_usuario, fecha_creacion)
VALUES
  ("Mercado 3 de Noviembre", "C. Mariscal Lamar 12-86, Cuenca", -2.89329408, -79.0105249, "06:00", "18:00", "img/mercados/3nov.jpg", 1, CURRENT_DATE),
  ("Mercado 12 de Abril",    "Av. Guapondelig y Saras", -2.90267338, -78.9923685, "06:00", "18:00", "img/mercados/12abril.jpg", 1, CURRENT_DATE),
  ("Plataforma Miraflores",  "Av. Miraflores y del Pasillo", -2.8843, -79.0045, "06:00", "18:00", "img/mercados/miraflores.jpg", 1, CURRENT_DATE),
  ("Mercado el Arenal",       "Av. de las Américas 7, Cuenca 010202",-2.8973406,-79.02685, "06:00", "18:00", "img/mercados/narancay.jpg", 1, CURRENT_DATE);

--====Insertar productores
INSERT INTO productor (nombre, apellido, ced, telefono, direccion, tipo,
                       contacto, fecha_creacion, id_asociacion, id_usuario)
VALUES
  ("Luis",   "Quinde", "0102030405", "099111222", "El Valle, Cuenca", "agricultor",
   "luisq@gmail.com", CURRENT_DATE, 1, 1), -- id_productor = 1

  ("Nancy",  "Pérez",  "0102030410", "098222333", "Totoracocha Alta", "agricultor",
   "nancy.agro@yahoo.com", CURRENT_DATE, 1, 1), -- id_productor = 2

  ("Carlos", "Jara",   "0102030415", "097333444", "La Dolorosa", "comerciante",
   "carlosjara@ferias.com", CURRENT_DATE, 2, 1), -- id_productor = 3

  ("Rosa",   "Vega",   "0102030420", "096444555", "Baños, Cuenca", "mixto",
   "rosavega@ventas.com", CURRENT_DATE, 2, 1);   -- id_productor = 4

--insertar datos en productor_papel
INSERT INTO productor_papel (id_productor, id_papel, fecha_asignacion) VALUES
  (1, 1, "2024-03-01"),  -- Luis  → agricultor
  (2, 1, "2024-03-05"),  -- Nancy → agricultora
  (3, 2, "2024-03-07"),  -- Carlos→ comerciante
  (3, 4, "2024-03-07"),  -- Carlos→ intermediario
  (4, 1, "2024-03-10"),  -- Rosa  → agricultora
  (4, 2, "2024-03-10");  -- Rosa  → comerciante

--======datos en asociacion_mercado
INSERT INTO asociacion_mercado (id_asociacion, id_mercado, dias_atencion, observaciones) VALUES
  (1, 1, "Lun-Mié-Vie", "Puestos agroecológicos APA"),
  (1, 3, "Sábado",      "Feria itinerante de Miraflores"),
  (2, 2, "Mar-Jue-Sab", "Comerciantes COFELIC zona carnes"),
  (2, 4, "Domingo",     "Sección hortalizas");

--=====ventas de las 8 clases de plantas
INSERT INTO registro_venta
  (id_variedad, id_mercado, id_productor, fecha,
   cantidad, unidad, precio_unitario, es_productor, calificacion)
VALUES
  (1, 1, 1, "2025-07-15", 10, "kg",     1.20, TRUE, 5),
  (2, 2, 2, "2025-07-16", 30, "manojo", 0.40, TRUE, 5),
  (3, 3, 1, "2025-07-17",  8, "kg",     2.50, TRUE, 4),
  (4, 1, 2, "2025-07-18", 25, "manojo", 0.35, TRUE, 5),
  (5, 4, 1, "2025-07-19", 15, "kg",     1.10, TRUE, 4),
  (6, 3, 2, "2025-07-20", 20, "manojo", 0.30, TRUE, 5),
  (7, 2, 3, "2025-07-20", 18, "manojo", 0.60, FALSE,4),
  (8, 1, 4, "2025-07-21", 12, "manojo", 0.50, TRUE, 5);

--DELETE FROM variedad_uso;
--colocar el contador de ubicacion en 81 para aceptar nuevas ubicaciones geograficas
UPDATE sqlite_sequence SET seq=81 WHERE name="ubicacion_geografica";
