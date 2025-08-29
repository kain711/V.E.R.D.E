-- Inicia una transacción para una inserción masiva y eficiente.
BEGIN TRANSACTION;

-- ===================================================================
-- Tabla: tipo_suelo
-- ===================================================================
INSERT INTO tipo_suelo (id_tipo_suelo, tipo_suelo, descripcion) VALUES (1, 'Andosoloes', 'Suelos derivados de cenizas volcánicas, fértiles y bien drenados.');
INSERT INTO tipo_suelo (id_tipo_suelo, tipo_suelo, descripcion) VALUES (2, 'Inceptisoles', 'Suelos jóvenes con desarrollo de horizontes incipientes.');
INSERT INTO tipo_suelo (id_tipo_suelo, tipo_suelo, descripcion) VALUES (3, 'Entisoles', 'Suelos muy jóvenes, sin desarrollo de horizontes.');
INSERT INTO tipo_suelo (id_tipo_suelo, tipo_suelo, descripcion) VALUES (4, 'Molisoles', 'Suelos de praderas, ricos en materia orgánica y nutrientes.');
INSERT INTO tipo_suelo (id_tipo_suelo, tipo_suelo, descripcion) VALUES (5, 'Ultisoles', 'Suelos ácidos y lixiviados, comunes en regiones húmedas.');
INSERT INTO tipo_suelo (id_tipo_suelo, tipo_suelo, descripcion) VALUES (6, 'Alfisoles', 'Suelos con acumulación de arcilla en el subsuelo, fértiles.');

-- ===================================================================
-- Tabla: temporada
-- ===================================================================
INSERT INTO temporada (id_temporada, tipo, nombre, mes_inicio, mes_fin) VALUES (1, 'Floración', 'Primavera-Verano', 3, 8);
INSERT INTO temporada (id_temporada, tipo, nombre, mes_inicio, mes_fin) VALUES (2, 'Cosecha', 'Verano-Otoño', 6, 11);
INSERT INTO temporada (id_temporada, tipo, nombre, mes_inicio, mes_fin) VALUES (3, 'Siembra', 'Primavera', 3, 5);

-- ===================================================================
-- Tabla: ubicacion_geografica (Texto corregido)
-- ===================================================================
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (1, -2.893953, -78.994228, 2417, 'SIERRA', 'Huaynacapac', 'Cuenca', 'Azuay', 'Ubicación simulada #1 para mapa de calor');
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (2, -2.909386, -79.009269, 2480, 'SIERRA', 'Huaynacapac', 'Cuenca', 'Azuay', 'Ubicación simulada #2 para mapa de calor');
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (3, -0.289758, -79.007918, 2658, 'SIERRA', 'Totoracocha', 'Cuenca', 'Azuay', 'Ubicación simulada #3 para mapa de calor');
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (4, -2.893394, -7.899445, 2594, 'SIERRA', 'Huaynacapac', 'Cuenca', 'Azuay', 'Ubicación simulada #4 para mapa de calor');
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (5, -2.900075, -79.008685, 2542, 'SIERRA', 'Bellavista', 'Cuenca', 'Azuay', 'Ubicación simulada #5 para mapa de calor');
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (6, -2.909522, -78.997214, 2431, 'SIERRA', 'Narancay', 'Cuenca', 'Azuay', 'Ubicación simulada #6 para mapa de calor');
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (7, -2.905388, -79.004346, 2424, 'SIERRA', 'El Valle', 'Cuenca', 'Azuay', 'Ubicación simulada #7 para mapa de calor');
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (8, -2.891912, -7.899284, 2595, 'SIERRA', 'El Valle', 'Cuenca', 'Azuay', 'Ubicación simulada #8 para mapa de calor');
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (9, -2.903966, -7.900494, 2548, 'SIERRA', 'Huaynacapac', 'Cuenca', 'Azuay', 'Ubicación simulada #9 para mapa de calor');
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (10, -2.909055, -79.005613, 2672, 'SIERRA', 'Narancay', 'Cuenca', 'Azuay', 'Ubicación simulada #10 para mapa de calor');
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (11, -2.902731, -78.995605, 2570, 'SIERRA', 'Bellavista', 'Cuenca', 'Azuay', 'Ubicación simulada #11 para mapa de calor');
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (12, -2.903585, -79.008714, 2590, 'SIERRA', 'Yanuncay', 'Cuenca', 'Azuay', 'Ubicación simulada #12 para mapa de calor');
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (13, -2.905278, -78.993437, 2415, 'SIERRA', 'El Valle', 'Cuenca', 'Azuay', 'Ubicación simulada #13 para mapa de calor');
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (14, -2.890457, -79.008405, 2408, 'SIERRA', 'Totoracocha', 'Cuenca', 'Azuay', 'Ubicación simulada #14 para mapa de calor');
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (15, -0.289225, -79.004789, 2450, 'SIERRA', 'El Valle', 'Cuenca', 'Azuay', 'Ubicación simulada #15 para mapa de calor');
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (16, -2.890501, -78.996909, 2449, 'SIERRA', 'El Valle', 'Cuenca', 'Azuay', 'Ubicación simulada #16 para mapa de calor');
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (17, -2.902216, -78.991422, 2641, 'SIERRA', 'Yanuncay', 'Cuenca', 'Azuay', 'Ubicación simulada #17 para mapa de calor');
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (18, -2.892274, -79.002106, 2650, 'SIERRA', 'Totoracocha', 'Cuenca', 'Azuay', 'Ubicación simulada #18 para mapa de calor');
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (19, -0.289291, -78.990023, 2685, 'SIERRA', 'Bellavista', 'Cuenca', 'Azuay', 'Ubicación simulada #19 para mapa de calor');
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (20, -2.896102, -79.000161, 2456, 'SIERRA', 'Huaynacapac', 'Cuenca', 'Azuay', 'Ubicación simulada #20 para mapa de calor');
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (21, -2.903298, -79.009242, 2609, 'SIERRA', 'El Valle', 'Cuenca', 'Azuay', 'Ubicación simulada #21 para mapa de calor');
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (22, -2.903046, -78.992054, 2649, 'SIERRA', 'Narancay', 'Cuenca', 'Azuay', 'Ubicación simulada #22 para mapa de calor');
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (23, -2.907784, -7.900588, 2524, 'SIERRA', 'Yanuncay', 'Cuenca', 'Azuay', 'Ubicación simulada #23 para mapa de calor');
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (24, -2.898517, -78.994701, 2625, 'SIERRA', 'Yanuncay', 'Cuenca', 'Azuay', 'Ubicación simulada #24 para mapa de calor');
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (25, -0.289123, -78.991959, 2459, 'SIERRA', 'Huaynacapac', 'Cuenca', 'Azuay', 'Ubicación simulada #25 para mapa de calor');
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (26, -2.891921, -78.996326, 2613, 'SIERRA', 'Yanuncay', 'Cuenca', 'Azuay', 'Ubicación simulada #26 para mapa de calor');
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (27, -2.893993, -78.991182, 2656, 'SIERRA', 'Yanuncay', 'Cuenca', 'Azuay', 'Ubicación simulada #27 para mapa de calor');
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (28, -2.892473, -79.009338, 2436, 'SIERRA', 'Huaynacapac', 'Cuenca', 'Azuay', 'Ubicación simulada #28 para mapa de calor');
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (29, -2.902973, -79.007817, 2467, 'SIERRA', 'Narancay', 'Cuenca', 'Azuay', 'Ubicación simulada #29 para mapa de calor');
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (30, -2.894368, -78.991209, 2677, 'SIERRA', 'Totoracocha', 'Cuenca', 'Azuay', 'Ubicación simulada #30 para mapa de calor');
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (31, -2.896018, -79.005438, 2551, 'SIERRA', 'Totoracocha', 'Cuenca', 'Azuay', 'Ubicación simulada #31 para mapa de calor');
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (32, -2.903962, -79.001343, 2532, 'SIERRA', 'Narancay', 'Cuenca', 'Azuay', 'Ubicación simulada #32 para mapa de calor');
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (33, -2.904169, -78.994718, 2541, 'SIERRA', 'Huaynacapac', 'Cuenca', 'Azuay', 'Ubicación simulada #33 para mapa de calor');
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (34, -2.894233, -79.007814, 2439, 'SIERRA', 'Narancay', 'Cuenca', 'Azuay', 'Ubicación simulada #34 para mapa de calor');
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (35, -2.903639, -78.992919, 2495, 'SIERRA', 'Narancay', 'Cuenca', 'Azuay', 'Ubicación simulada #35 para mapa de calor');
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (36, -2.904346, -78.993292, 2651, 'SIERRA', 'Totoracocha', 'Cuenca', 'Azuay', 'Ubicación simulada #36 para mapa de calor');
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (37, -2.908286, -79.003211, 2407, 'SIERRA', 'Bellavista', 'Cuenca', 'Azuay', 'Ubicación simulada #37 para mapa de calor');
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (38, -2.905865, -79.003854, 2502, 'SIERRA', 'Huaynacapac', 'Cuenca', 'Azuay', 'Ubicación simulada #38 para mapa de calor');
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (39, -2.896728, -7.899556, 2646, 'SIERRA', 'Totoracocha', 'Cuenca', 'Azuay', 'Ubicación simulada #39 para mapa de calor');
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (40, -2.892849, -7.900244, 2510, 'SIERRA', 'Totoracocha', 'Cuenca', 'Azuay', 'Ubicación simulada #40 para mapa de calor');
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (41, -2.891169, -79.002109, 2654, 'SIERRA', 'Bellavista', 'Cuenca', 'Azuay', 'Ubicación simulada #41 para mapa de calor');
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (42, -2.891886, -79.002939, 2579, 'SIERRA', 'Bellavista', 'Cuenca', 'Azuay', 'Ubicación simulada #42 para mapa de calor');
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (43, -2.909752, -79.000955, 2401, 'SIERRA', 'Totoracocha', 'Cuenca', 'Azuay', 'Ubicación simulada #43 para mapa de calor');
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (44, -2.903829, -78.998111, 2476, 'SIERRA', 'Huaynacapac', 'Cuenca', 'Azuay', 'Ubicación simulada #44 para mapa de calor');
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (45, -2.891834, -78.998333, 2698, 'SIERRA', 'Huaynacapac', 'Cuenca', 'Azuay', 'Ubicación simulada #45 para mapa de calor');
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (46, -2.891951, -79.009127, 2476, 'SIERRA', 'Huaynacapac', 'Cuenca', 'Azuay', 'Ubicación simulada #46 para mapa de calor');
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (47, -2.905082, -78.991488, 2586, 'SIERRA', 'Yanuncay', 'Cuenca', 'Azuay', 'Ubicación simulada #47 para mapa de calor');
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (48, -2.904028, -79.000049, 2414, 'SIERRA', 'Totoracocha', 'Cuenca', 'Azuay', 'Ubicación simulada #48 para mapa de calor');
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (49, -2.896052, -78.999555, 2529, 'SIERRA', 'Bellavista', 'Cuenca', 'Azuay', 'Ubicación simulada #49 para mapa de calor');
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (50, -2.904171, -79.009354, 2480, 'SIERRA', 'El Valle', 'Cuenca', 'Azuay', 'Ubicación simulada #50 para mapa de calor');
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (51, -2.893767, -79.006588, 2581, 'SIERRA', 'Totoracocha', 'Cuenca', 'Azuay', 'Ubicación simulada #51 para mapa de calor');
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (52, -2.899949, -0.790063, 2460, 'SIERRA', 'Huaynacapac', 'Cuenca', 'Azuay', 'Ubicación simulada #52 para mapa de calor');
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (53, -2.897505, -79.007423, 2653, 'SIERRA', 'Totoracocha', 'Cuenca', 'Azuay', 'Ubicación simulada #53 para mapa de calor');
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (54, -2.898506, -78.999211, 2691, 'SIERRA', 'Huaynacapac', 'Cuenca', 'Azuay', 'Ubicación simulada #54 para mapa de calor');
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (55, -0.290174, -79.004211, 2692, 'SIERRA', 'Totoracocha', 'Cuenca', 'Azuay', 'Ubicación simulada #55 para mapa de calor');
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (56, -2.900508, -78.994804, 2648, 'SIERRA', 'Narancay', 'Cuenca', 'Azuay', 'Ubicación simulada #56 para mapa de calor');
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (57, -2.901453, -78.997197, 2589, 'SIERRA', 'Narancay', 'Cuenca', 'Azuay', 'Ubicación simulada #57 para mapa de calor');
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (58, -2.903626, -79.008561, 2524, 'SIERRA', 'El Valle', 'Cuenca', 'Azuay', 'Ubicación simulada #58 para mapa de calor');
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (59, -2.902514, -78.996184, 2680, 'SIERRA', 'Yanuncay', 'Cuenca', 'Azuay', 'Ubicación simulada #59 para mapa de calor');
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (60, -2.901662, -78.990846, 2523, 'SIERRA', 'Huaynacapac', 'Cuenca', 'Azuay', 'Ubicación simulada #60 para mapa de calor');
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (61, -2.901988, -79.009872, 2679, 'SIERRA', 'Huaynacapac', 'Cuenca', 'Azuay', 'Ubicación simulada #61 para mapa de calor');
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (62, -2.902161, -78.990994, 2541, 'SIERRA', 'Huaynacapac', 'Cuenca', 'Azuay', 'Ubicación simulada #62 para mapa de calor');
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (63, -2.895707, -7.899982, 2511, 'SIERRA', 'El Valle', 'Cuenca', 'Azuay', 'Ubicación simulada #63 para mapa de calor');
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (64, -2.901484, -78.991263, 2686, 'SIERRA', 'Huaynacapac', 'Cuenca', 'Azuay', 'Ubicación simulada #64 para mapa de calor');
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (65, -0.290443, -78.990476, 2537, 'SIERRA', 'Narancay', 'Cuenca', 'Azuay', 'Ubicación simulada #65 para mapa de calor');
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (66, -2.906571, -79.006254, 2586, 'SIERRA', 'Bellavista', 'Cuenca', 'Azuay', 'Ubicación simulada #66 para mapa de calor');
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (67, -0.290603, -78.994564, 2626, 'SIERRA', 'Totoracocha', 'Cuenca', 'Azuay', 'Ubicación simulada #67 para mapa de calor');
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (68, -2.897681, -78.996662, 2638, 'SIERRA', 'Bellavista', 'Cuenca', 'Azuay', 'Ubicación simulada #68 para mapa de calor');
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (69, -2.909724, -79.001289, 2444, 'SIERRA', 'Huaynacapac', 'Cuenca', 'Azuay', 'Ubicación simulada #69 para mapa de calor');
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (70, -2.906962, -78.991428, 2452, 'SIERRA', 'Yanuncay', 'Cuenca', 'Azuay', 'Ubicación simulada #70 para mapa de calor');
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (71, -2.908306, -79.005068, 2687, 'SIERRA', 'El Valle', 'Cuenca', 'Azuay', 'Ubicación simulada #71 para mapa de calor');
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (72, -2.901667, -78.991087, 2572, 'SIERRA', 'Totoracocha', 'Cuenca', 'Azuay', 'Ubicación simulada #72 para mapa de calor');
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (73, -2.895151, -79.004492, 2492, 'SIERRA', 'Huaynacapac', 'Cuenca', 'Azuay', 'Ubicación simulada #73 para mapa de calor');
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (74, -2.906429, -79.008068, 2426, 'SIERRA', 'Totoracocha', 'Cuenca', 'Azuay', 'Ubicación simulada #74 para mapa de calor');
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (75, -2.898315, -79.006773, 2418, 'SIERRA', 'Totoracocha', 'Cuenca', 'Azuay', 'Ubicación simulada #75 para mapa de calor');
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (76, -2.892077, -78.993234, 2633, 'SIERRA', 'Totoracocha', 'Cuenca', 'Azuay', 'Ubicación simulada #76 para mapa de calor');
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (77, -2.899357, -79.005423, 2424, 'SIERRA', 'Bellavista', 'Cuenca', 'Azuay', 'Ubicación simulada #77 para mapa de calor');
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (78, -2.894818, -79.006659, 2496, 'SIERRA', 'Yanuncay', 'Cuenca', 'Azuay', 'Ubicación simulada #78 para mapa de calor');
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (79, -2.890634, -78.997858, 2418, 'SIERRA', 'El Valle', 'Cuenca', 'Azuay', 'Ubicación simulada #79 para mapa de calor');
INSERT INTO ubicacion_geografica (id_ubicacion, latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion) VALUES (80, -2.901453, -78.995218, 2480, 'SIERRA', 'El Valle', 'Cuenca', 'Azuay', 'Ubicación simulada #80 para mapa de calor');

-- ===================================================================
-- Tabla: variedad_ubicacion
-- ===================================================================
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (1, 1, 'Jardín comunitario', 'Baja', 'Observación automática #1', '2025-05-04');
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (1, 2, 'Macetas', 'Baja', 'Observación automática #2', '2025-05-27');
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (1, 3, 'Huerto urbano', 'Alta', 'Observación automática #3', '2025-05-15');
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (1, 4, 'Macetas', 'Media', 'Observación automática #4', '2025-05-04');
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (1, 5, 'Huerto urbano', 'Media', 'Observación automática #5', '2025-06-15');
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (1, 6, 'Macetas', 'Alta', 'Observación automática #6', '2025-07-08');
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (1, 7, 'Macetas', 'Alta', 'Observación automática #7', '2025-05-03');
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (1, 8, 'Macetas', 'Media', 'Observación automática #8', '2025-06-26');
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (1, 9, 'Parque', 'Media', 'Observación automática #9', '2025-05-15');
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (1, 10, 'Parque', 'Baja', 'Observación automática #10', '2025-06-06');
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (2, 11, 'Terreno baldío', 'Media', 'Observación automática #1', '2025-05-10');
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (2, 12, 'Parque', 'Media', 'Observación automática #2', '2025-06-21');
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (2, 13, 'Jardín comunitario', 'Media', 'Observación automática #3', '2025-05-09');
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (2, 14, 'Orilla de río', 'Baja', 'Observación automática #4', '2025-06-21');
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (2, 15, 'Terreno baldío', 'Baja', 'Observación automática #5', '2025-06-28');
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (2, 16, 'Orilla de río', 'Alta', 'Observación automática #6', '2025-06-20');
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (2, 17, 'Terreno baldío', 'Baja', 'Observación automática #7', '2025-05-17');
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (2, 18, 'Macetas', 'Baja', 'Observación automática #8', '2025-05-18');
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (2, 19, 'Terreno baldío', 'Baja', 'Observación automática #9', '2025-07-22');
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (2, 20, 'Orilla de río', 'Media', 'Observación automática #10', '2025-05-19');
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (3, 21, 'Macetas', 'Baja', 'Observación automática #1', '2025-05-26');
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (3, 22, 'Parque', 'Media', 'Observación automática #2', '2025-04-27');
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (3, 23, 'Macetas', 'Baja', 'Observación automática #3', '2025-07-08');
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (3, 24, 'Jardín comunitario', 'Baja', 'Observación automática #4', '2025-06-09');
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (3, 25, 'Macetas', 'Alta', 'Observación automática #5', '2025-04-30');
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (3, 26, 'Jardín comunitario', 'Media', 'Observación automática #6', '2025-06-25');
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (3, 27, 'Parque', 'Baja', 'Observación automática #7', '2025-06-11');
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (3, 28, 'Parque', 'Media', 'Observación automática #8', '2025-04-27');
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (3, 29, 'Jardín comunitario', 'Baja', 'Observación automática #9', '2025-05-09');
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (3, 30, 'Parque', 'Alta', 'Observación automática #10', '2025-07-22');
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (4, 31, 'Terreno baldío', 'Alta', 'Observación automática #1', '2025-04-26');
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (4, 32, 'Huerto urbano', 'Alta', 'Observación automática #2', '2025-07-09');
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (4, 33, 'Jardín comunitario', 'Alta', 'Observación automática #3', '2025-04-26');
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (4, 34, 'Jardín comunitario', 'Alta', 'Observación automática #4', '2025-05-31');
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (4, 35, 'Huerto urbano', 'Baja', 'Observación automática #5', '2025-05-11');
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (4, 36, 'Terreno baldío', 'Alta', 'Observación automática #6', '2025-05-17');
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (4, 37, 'Huerto urbano', 'Media', 'Observación automática #7', '2025-05-03');
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (4, 38, 'Parque', 'Media', 'Observación automática #8', '2025-07-01');
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (4, 39, 'Orilla de río', 'Media', 'Observación automática #9', '2025-04-25');
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (4, 40, 'Huerto urbano', 'Baja', 'Observación automática #10', '2025-07-07');
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (5, 41, 'Orilla de río', 'Media', 'Observación automática #1', '2025-07-19');
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (5, 42, 'Macetas', 'Media', 'Observación automática #2', '2025-06-02');
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (5, 43, 'Terreno baldío', 'Alta', 'Observación automática #3', '2025-07-18');
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (5, 44, 'Parque', 'Alta', 'Observación automática #4', '2025-06-07');
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (5, 45, 'Macetas', 'Media', 'Observación automática #5', '2025-06-08');
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (5, 46, 'Parque', 'Baja', 'Observación automática #6', '2025-06-19');
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (5, 47, 'Jardín comunitario', 'Alta', 'Observación automática #7', '2025-07-07');
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (5, 48, 'Orilla de río', 'Alta', 'Observación automática #8', '2025-05-18');
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (5, 49, 'Terreno baldío', 'Baja', 'Observación automática #9', '2025-07-05');
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (5, 50, 'Orilla de río', 'Media', 'Observación automática #10', '2025-05-31');
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (6, 51, 'Macetas', 'Media', 'Observación automática #1', '2025-06-30');
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (6, 52, 'Macetas', 'Media', 'Observación automática #2', '2025-06-07');
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (6, 53, 'Jardín comunitario', 'Media', 'Observación automática #3', '2025-06-23');
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (6, 54, 'Parque', 'Media', 'Observación automática #4', '2025-06-12');
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (6, 55, 'Orilla de río', 'Alta', 'Observación automática #5', '2025-07-08');
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (6, 56, 'Macetas', 'Alta', 'Observación automática #6', '2025-06-18');
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (6, 57, 'Orilla de río', 'Baja', 'Observación automática #7', '2025-05-03');
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (6, 58, 'Huerto urbano', 'Alta', 'Observación automática #8', '2025-07-01');
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (6, 59, 'Parque', 'Alta', 'Observación automática #9', '2025-06-02');
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (6, 60, 'Macetas', 'Media', 'Observación automática #10', '2025-07-15');
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (7, 61, 'Parque', 'Media', 'Observación automática #1', '2025-06-27');
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (7, 62, 'Orilla de río', 'Alta', 'Observación automática #2', '2025-06-16');
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (7, 63, 'Orilla de río', 'Media', 'Observación automática #3', '2025-05-30');
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (7, 64, 'Orilla de río', 'Media', 'Observación automática #4', '2025-07-07');
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (7, 65, 'Orilla de río', 'Baja', 'Observación automática #5', '2025-07-02');
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (7, 66, 'Jardín comunitario', 'Baja', 'Observación automática #6', '2025-05-21');
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (7, 67, 'Orilla de río', 'Alta', 'Observación automática #7', '2025-07-07');
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (7, 68, 'Terreno baldío', 'Alta', 'Observación automática #8', '2025-07-20');
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (7, 69, 'Jardín comunitario', 'Alta', 'Observación automática #9', '2025-05-20');
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (7, 70, 'Terreno baldío', 'Baja', 'Observación automática #10', '2025-06-16');
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (8, 71, 'Macetas', 'Alta', 'Observación automática #1', '2025-06-13');
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (8, 72, 'Macetas', 'Baja', 'Observación automática #2', '2025-07-08');
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (8, 73, 'Parque', 'Media', 'Observación automática #3', '2025-07-03');
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (8, 74, 'Terreno baldío', 'Media', 'Observación automática #4', '2025-05-19');
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (8, 75, 'Terreno baldío', 'Baja', 'Observación automática #5', '2025-05-30');
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (8, 76, 'Terreno baldío', 'Media', 'Observación automática #6', '2025-05-23');
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (8, 77, 'Terreno baldío', 'Baja', 'Observación automática #7', '2025-06-15');
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (8, 78, 'Orilla de río', 'Baja', 'Observación automática #8', '2025-04-24');
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (8, 79, 'Jardín comunitario', 'Alta', 'Observación automática #9', '2025-04-27');
INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro) VALUES (8, 80, 'Orilla de río', 'Alta', 'Observación automática #10', '2025-06-04');

-- ===================================================================
-- Tabla: variedad_uso
-- ===================================================================
INSERT INTO variedad_uso (id_variedad, id_uso, enlace) VALUES (1, 1, 'https://www.youtube.com/watch?v=RmRoThMbpB0');
INSERT INTO variedad_uso (id_variedad, id_uso, enlace) VALUES (1, 4, 'https://www.laylita.com/recetas/aji-de-tomate-de-arbol/');
INSERT INTO variedad_uso (id_variedad, id_uso, enlace) VALUES (2, 7, 'https://www.youtube.com/shorts/OmesnR7JlJU');
INSERT INTO variedad_uso (id_variedad, id_uso, enlace) VALUES (2, 8, 'https://www.tuasaude.com/es/te-de-romero/');
INSERT INTO variedad_uso (id_variedad, id_uso, enlace) VALUES (3, 1, 'https://www.youtube.com/watch?v=GJd2gBOfOi8');
INSERT INTO variedad_uso (id_variedad, id_uso, enlace) VALUES (4, 3, 'https://www.youtube.com/watch?v=6s4t3JW1Jvg');
INSERT INTO variedad_uso (id_variedad, id_uso, enlace) VALUES (4, 7, 'https://elhorticultor.org/propiedades-del-cedron-o-hierba-luisa/');
INSERT INTO variedad_uso (id_variedad, id_uso, enlace) VALUES (5, 4, 'https://www.youtube.com/shorts/CbPZhAycjIQ');
INSERT INTO variedad_uso (id_variedad, id_uso, enlace) VALUES (6, 7, 'https://www.pharmascalabis.com/es/artigo/beneficios-del-te-de-toronjil-propiedades-y-usos/');
INSERT INTO variedad_uso (id_variedad, id_uso, enlace) VALUES (7, 8, 'https://youtube.com/shorts/MRdwGwIkZrs?feature=share');
INSERT INTO variedad_uso (id_variedad, id_uso, enlace) VALUES (8, 7, 'https://blog.germigarden.com/jardineria/ruda-planta-aromatica-culinaria/');
INSERT INTO variedad_uso (id_variedad, id_uso, enlace) VALUES (8, 6, 'https://etnobotanica.ec/ruda-contra-dolores');

-- ===================================================================
-- Tabla: tipo_riesgo
-- ===================================================================
INSERT INTO tipo_riesgo (nombre) VALUES ('Manipulación');
INSERT INTO tipo_riesgo (nombre) VALUES ('Consumo');
INSERT INTO tipo_riesgo (nombre) VALUES ('Inhalación');

-- ===================================================================
-- Tabla: variedad_riesgo
-- ===================================================================
INSERT INTO variedad_riesgo (id_variedad, id_riesgo, nivel, descripcion) VALUES (1, 2, 1, 'Fruto verde puede ser irritante para estómago sensible');
INSERT INTO variedad_riesgo (id_variedad, id_riesgo, nivel, descripcion) VALUES (2, 1, 1, 'Hojas rígidas pueden causar pequeña irritación cutánea');
INSERT INTO variedad_riesgo (id_variedad, id_riesgo, nivel, descripcion) VALUES (2, 3, 2, 'Aceite esencial fuerte, posible alergia en asmáticos');
INSERT INTO variedad_riesgo (id_variedad, id_riesgo, nivel, descripcion) VALUES (3, 2, 1, 'Fruto verde es laxante; consuma maduro');
INSERT INTO variedad_riesgo (id_variedad, id_riesgo, nivel, descripcion) VALUES (4, 3, 2, 'Aroma potente puede causar estornudos');
INSERT INTO variedad_riesgo (id_variedad, id_riesgo, nivel, descripcion) VALUES (5, 2, 1, 'Semillas crudas son amargas, cocer antes');
INSERT INTO variedad_riesgo (id_variedad, id_riesgo, nivel, descripcion) VALUES (6, 3, 1, 'Aroma cítrico, baja incidencia de alergia');
INSERT INTO variedad_riesgo (id_variedad, id_riesgo, nivel, descripcion) VALUES (7, 1, 3, 'Pelusilla de hoja produce urticaria al tacto');
INSERT INTO variedad_riesgo (id_variedad, id_riesgo, nivel, descripcion) VALUES (7, 2, 2, 'Infusión concentrada puede ser emenagoga');
INSERT INTO variedad_riesgo (id_variedad, id_riesgo, nivel, descripcion) VALUES (8, 1, 3, 'Savia irritante, dermatitis por contacto');
INSERT INTO variedad_riesgo (id_variedad, id_riesgo, nivel, descripcion) VALUES (8, 2, 3, 'Alto riesgo en consumo excesivo; potencial abortivo');

-- ===================================================================
-- Tabla: temporada (Catálogo adicional)
-- ===================================================================
INSERT INTO temporada (tipo, nombre, mes_inicio, mes_fin) VALUES ('siembra',  'Invierno-siembra', 10, 12);
INSERT INTO temporada (tipo, nombre, mes_inicio, mes_fin) VALUES ('siembra',  'Verano-siembra',   3,  4);
INSERT INTO temporada (tipo, nombre, mes_inicio, mes_fin) VALUES ('cosecha',  'Invierno-cosecha', 2,  4);
INSERT INTO temporada (tipo, nombre, mes_inicio, mes_fin) VALUES ('cosecha',  'Verano-cosecha',   7,  9);

-- ===================================================================
-- Tabla: variedad_temporada
-- ===================================================================
-- (TRUE ha sido cambiado a 1 para compatibilidad con SQLite)
INSERT INTO variedad_temporada (id_variedad, id_temporada, es_principal, condiciones) VALUES (1, 1, 1 , 'Siembra principal en época de lluvias');
INSERT INTO variedad_temporada (id_variedad, id_temporada, es_principal, condiciones) VALUES (1, 3, 1 , 'Cosecha principal a finales de verano andino');
INSERT INTO variedad_temporada (id_variedad, id_temporada, es_principal, condiciones) VALUES (2, 2, 1 , 'Siembra por estacas en época seca');
INSERT INTO variedad_temporada (id_variedad, id_temporada, es_principal, condiciones) VALUES (3, 1, 1 , 'Siembra en almácigo cubierto');
INSERT INTO variedad_temporada (id_variedad, id_temporada, es_principal, condiciones) VALUES (3, 3, 1 , 'Cosecha de frutos maduros');
INSERT INTO variedad_temporada (id_variedad, id_temporada, es_principal, condiciones) VALUES (4, 2, 1 , 'Siembra por esqueje o semilla');
INSERT INTO variedad_temporada (id_variedad, id_temporada, es_principal, condiciones) VALUES (4, 4, 1 , 'Cosecha de hojas tiernas');
INSERT INTO variedad_temporada (id_variedad, id_temporada, es_principal, condiciones) VALUES (5, 2, 1 , 'Siembra directa en surcos');
INSERT INTO variedad_temporada (id_variedad, id_temporada, es_principal, condiciones) VALUES (5, 4, 1 , 'Cosecha de frutos tiernos');
INSERT INTO variedad_temporada (id_variedad, id_temporada, es_principal, condiciones) VALUES (6, 2, 1 , 'Siembra en almácigo sombreado');
INSERT INTO variedad_temporada (id_variedad, id_temporada, es_principal, condiciones) VALUES (6, 4, 1 , 'Cosecha de hojas cada 2 meses');
INSERT INTO variedad_temporada (id_variedad, id_temporada, es_principal, condiciones) VALUES (7, 1, 1 , 'Siembra por división de mata');
INSERT INTO variedad_temporada (id_variedad, id_temporada, es_principal, condiciones) VALUES (7, 3, 1 , 'Cosecha de hojas medicinales');
INSERT INTO variedad_temporada (id_variedad, id_temporada, es_principal, condiciones) VALUES (8, 2, 1 , 'Siembra en maceta o bancal bien drenado');

-- ===================================================================
-- Tabla: caracteristica_ambiental
-- ===================================================================
INSERT INTO caracteristica_ambiental (ph_min, ph_max, temp_min, temp_max, humedad_optima, altitud_min, altitud_max, id_tipo_suelo) VALUES (5.5, 6.8, 15, 22, 60, 2200, 3000, 1);
INSERT INTO caracteristica_ambiental (ph_min, ph_max, temp_min, temp_max, humedad_optima, altitud_min, altitud_max, id_tipo_suelo) VALUES (6.0, 7.5, 12, 25, 55, 2500, 3200, 1);
INSERT INTO caracteristica_ambiental (ph_min, ph_max, temp_min, temp_max, humedad_optima, altitud_min, altitud_max, id_tipo_suelo) VALUES (5.8, 7.0, 13, 23, 65, 2000, 2800, 2);
INSERT INTO caracteristica_ambiental (ph_min, ph_max, temp_min, temp_max, humedad_optima, altitud_min, altitud_max, id_tipo_suelo) VALUES (6.2, 7.4, 14, 24, 60, 2300, 3100, 2);
INSERT INTO caracteristica_ambiental (ph_min, ph_max, temp_min, temp_max, humedad_optima, altitud_min, altitud_max, id_tipo_suelo) VALUES (5.0, 6.5, 18, 26, 70, 1800, 2400, 3);
INSERT INTO caracteristica_ambiental (ph_min, ph_max, temp_min, temp_max, humedad_optima, altitud_min, altitud_max, id_tipo_suelo) VALUES (5.7, 7.2, 16, 24, 60, 2100, 2900, 4);
INSERT INTO caracteristica_ambiental (ph_min, ph_max, temp_min, temp_max, humedad_optima, altitud_min, altitud_max, id_tipo_suelo) VALUES (4.8, 6.0, 17, 25, 75, 2000, 2600, 5);
INSERT INTO caracteristica_ambiental (ph_min, ph_max, temp_min, temp_max, humedad_optima, altitud_min, altitud_max, id_tipo_suelo) VALUES (6.0, 7.5, 15, 23, 55, 2200, 3000, 6);

-- ===================================================================
-- Tabla: variedad_ambiente
-- ===================================================================
INSERT INTO variedad_ambiente (id_variedad, id_caract) VALUES (1, 1);
INSERT INTO variedad_ambiente (id_variedad, id_caract) VALUES (2, 2);
INSERT INTO variedad_ambiente (id_variedad, id_caract) VALUES (3, 3);
INSERT INTO variedad_ambiente (id_variedad, id_caract) VALUES (4, 4);
INSERT INTO variedad_ambiente (id_variedad, id_caract) VALUES (5, 5);
INSERT INTO variedad_ambiente (id_variedad, id_caract) VALUES (6, 6);
INSERT INTO variedad_ambiente (id_variedad, id_caract) VALUES (7, 7);
INSERT INTO variedad_ambiente (id_variedad, id_caract) VALUES (8, 8);

-- ===================================================================
-- Tabla: papel_cadena
-- ===================================================================
INSERT INTO papel_cadena (nombre_papel, descripcion) VALUES ('agricultor', 'Persona que cultiva y cosecha las plantas');
INSERT INTO papel_cadena (nombre_papel, descripcion) VALUES ('comerciante', 'Persona que vende directamente en mercados');
INSERT INTO papel_cadena (nombre_papel, descripcion) VALUES ('proveedor', 'Persona o entidad que distribuye productos a comerciantes');
INSERT INTO papel_cadena (nombre_papel, descripcion) VALUES ('intermediario', 'Interviene entre productor y vendedor final');
INSERT INTO papel_cadena (nombre_papel, descripcion) VALUES ('transformador', 'Persona que procesa el producto para venta secundaria');

-- ===================================================================
-- Tabla: asociacion
-- ===================================================================
-- (CURRENT_DATE funciona en SQLite, devuelve 'YYYY-MM-DD')
INSERT INTO asociacion (nombre, tipo, descripcion, id_usuario, fecha_creacion) VALUES ('APA',  'PRODUCTOR',   'Asociación de Productores Agroecológicos',1, CURRENT_DATE);
INSERT INTO asociacion (nombre, tipo, descripcion, id_usuario, fecha_creacion) VALUES ('COFELIC', 'COMERCIANTE', 'Comerciantes Feria Libre de Cuenca',1, CURRENT_DATE);

-- ===================================================================
-- Tabla: mercado
-- ===================================================================
INSERT INTO mercado (nombre, direccion, latitud, longitud, horario_apertura, horario_cierre, imagen_url, id_usuario, fecha_creacion) VALUES ('Mercado 3 de Noviembre', 'C. Mariscal Lamar 12-86, Cuenca', -2.89329408, -79.0105249, '06:00', '18:00', 'img/mercados/3nov.jpg', 1, CURRENT_DATE);
INSERT INTO mercado (nombre, direccion, latitud, longitud, horario_apertura, horario_cierre, imagen_url, id_usuario, fecha_creacion) VALUES ('Mercado 12 de Abril',    'Av. Guapondelig y Saras', -2.90267338, -78.9923685, '06:00', '18:00', 'img/mercados/12abril.jpg', 1, CURRENT_DATE);
INSERT INTO mercado (nombre, direccion, latitud, longitud, horario_apertura, horario_cierre, imagen_url, id_usuario, fecha_creacion) VALUES ('Plataforma Miraflores',  'Av. Miraflores y del Pasillo', -2.8843, -79.0045, '06:00', '18:00', 'img/mercados/miraflores.jpg', 1, CURRENT_DATE);
INSERT INTO mercado (nombre, direccion, latitud, longitud, horario_apertura, horario_cierre, imagen_url, id_usuario, fecha_creacion) VALUES ('Mercado el Arenal',       'Av. de las Américas 7, Cuenca 010202',-2.8973406,-79.02685, '06:00', '18:00', 'img/mercados/narancay.jpg', 1, CURRENT_DATE);

-- ===================================================================
-- Tabla: productor
-- ===================================================================
INSERT INTO productor (nombre, apellido, ced, telefono, direccion, tipo, contacto, fecha_creacion, id_asociacion, id_usuario) VALUES ('Luis',   'Quinde', '0102030405', '099111222', 'El Valle, Cuenca', 'agricultor', 'luisq@gmail.com', CURRENT_DATE, 1, 1);
INSERT INTO productor (nombre, apellido, ced, telefono, direccion, tipo, contacto, fecha_creacion, id_asociacion, id_usuario) VALUES ('Nancy',  'Pérez',  '0102030410', '098222333', 'Totoracocha Alta', 'agricultor', 'nancy.agro@yahoo.com', CURRENT_DATE, 1, 1);
INSERT INTO productor (nombre, apellido, ced, telefono, direccion, tipo, contacto, fecha_creacion, id_asociacion, id_usuario) VALUES ('Carlos', 'Jara',   '0102030415', '097333444', 'La Dolorosa', 'comerciante', 'carlosjara@ferias.com', CURRENT_DATE, 2, 1);
INSERT INTO productor (nombre, apellido, ced, telefono, direccion, tipo, contacto, fecha_creacion, id_asociacion, id_usuario) VALUES ('Rosa',   'Vega',   '0102030420', '096444555', 'Baños, Cuenca', 'mixto', 'rosavega@ventas.com', CURRENT_DATE, 2, 1);

-- ===================================================================
-- Tabla: productor_papel
-- ===================================================================
INSERT INTO productor_papel (id_productor, id_papel, fecha_asignacion) VALUES (1, 1, '2024-03-01');
INSERT INTO productor_papel (id_productor, id_papel, fecha_asignacion) VALUES (2, 1, '2024-03-05');
INSERT INTO productor_papel (id_productor, id_papel, fecha_asignacion) VALUES (3, 2, '2024-03-07');
INSERT INTO productor_papel (id_productor, id_papel, fecha_asignacion) VALUES (3, 4, '2024-03-07');
INSERT INTO productor_papel (id_productor, id_papel, fecha_asignacion) VALUES (4, 1, '2024-03-10');
INSERT INTO productor_papel (id_productor, id_papel, fecha_asignacion) VALUES (4, 2, '2024-03-10');

-- ===================================================================
-- Tabla: asociacion_mercado
-- ===================================================================
INSERT INTO asociacion_mercado (id_asociacion, id_mercado, dias_atencion, observaciones) VALUES (1, 1, 'Lun-Mié-Vie', 'Puestos agroecológicos APA');
INSERT INTO asociacion_mercado (id_asociacion, id_mercado, dias_atencion, observaciones) VALUES (1, 3, 'Sábado',      'Feria itinerante de Miraflores');
INSERT INTO asociacion_mercado (id_asociacion, id_mercado, dias_atencion, observaciones) VALUES (2, 2, 'Mar-Jue-Sab', 'Comerciantes COFELIC zona carnes');
INSERT INTO asociacion_mercado (id_asociacion, id_mercado, dias_atencion, observaciones) VALUES (2, 4, 'Domingo',     'Sección hortalizas');

-- ===================================================================
-- Tabla: registro_venta
-- ===================================================================
-- (TRUE/FALSE han sido cambiados a 1/0 para compatibilidad con SQLite)
INSERT INTO registro_venta (id_variedad, id_mercado, id_productor, fecha, cantidad, unidad, precio_unitario, es_productor, calificacion) VALUES (1, 1, 1, '2025-07-15', 10, 'kg',     1.20, 1, 5);
INSERT INTO registro_venta (id_variedad, id_mercado, id_productor, fecha, cantidad, unidad, precio_unitario, es_productor, calificacion) VALUES (2, 2, 2, '2025-07-16', 30, 'manojo', 0.40, 1, 5);
INSERT INTO registro_venta (id_variedad, id_mercado, id_productor, fecha, cantidad, unidad, precio_unitario, es_productor, calificacion) VALUES (3, 3, 1, '2025-07-17',  8, 'kg',     2.50, 1, 4);
INSERT INTO registro_venta (id_variedad, id_mercado, id_productor, fecha, cantidad, unidad, precio_unitario, es_productor, calificacion) VALUES (4, 1, 2, '2025-07-18', 25, 'manojo', 0.35, 1, 5);
INSERT INTO registro_venta (id_variedad, id_mercado, id_productor, fecha, cantidad, unidad, precio_unitario, es_productor, calificacion) VALUES (5, 4, 1, '2025-07-19', 15, 'kg',     1.10, 1, 4);
INSERT INTO registro_venta (id_variedad, id_mercado, id_productor, fecha, cantidad, unidad, precio_unitario, es_productor, calificacion) VALUES (6, 3, 2, '2025-07-20', 20, 'manojo', 0.30, 1, 5);
INSERT INTO registro_venta (id_variedad, id_mercado, id_productor, fecha, cantidad, unidad, precio_unitario, es_productor, calificacion) VALUES (7, 2, 3, '2025-07-20', 18, 'manojo', 0.60, 0, 4);
INSERT INTO registro_venta (id_variedad, id_mercado, id_productor, fecha, cantidad, unidad, precio_unitario, es_productor, calificacion) VALUES (8, 1, 4, '2025-07-21', 12, 'manojo', 0.50, 1, 5);

-- Finaliza la transacción y guarda todos los cambios de forma permanente.
COMMIT;