-- ============================================================
-- SEED v3 — PlancheMethod (un INSERT por fila, sin errores)
-- Limpiar primero con:
-- TRUNCATE prescribed_exercises, training_days, strength_tests,
--          mesocycles, phases, programs RESTART IDENTITY CASCADE;
-- ============================================================

-- PROGRAMA
INSERT INTO programs (id, name, author, description) VALUES
('a1b2c3d4-0000-0000-0000-000000000001', 'PlancheMethod', 'Francisco Rossi', 'Programa de entrenamiento para desbloquear la Full Planche desde cero.');

-- FASES
INSERT INTO phases (id, program_id, phase_number, name, goal, min_requirement, completion_requirement, estimated_weeks_min, estimated_weeks_max, has_escápula_annex) VALUES
('a1b2c3d4-0000-0000-0000-000000000010', 'a1b2c3d4-0000-0000-0000-000000000001', 1, 'Fundamentales', 'Aprender patrones de movimiento base, fortalecer musculatura efectora y acondicionar tejido conectivo.', '5 segundos de Tuck planche', '15 segundos de Tuck planche perfecta (idealmente 20")', 34, 36, TRUE);

INSERT INTO phases (id, program_id, phase_number, name, goal, min_requirement, completion_requirement, estimated_weeks_min, estimated_weeks_max, has_escápula_annex) VALUES
('a1b2c3d4-0000-0000-0000-000000000020', 'a1b2c3d4-0000-0000-0000-000000000001', 2, 'Génesis de fuerza', 'Incorporar ejercicios más complejos técnicamente y desarrollar fuerza escapular.', '15 segundos de Tuck planche perfecta', '5 segundos de Straddle planche con buena postura', 24, 24, TRUE);

INSERT INTO phases (id, program_id, phase_number, name, goal, min_requirement, completion_requirement, estimated_weeks_min, estimated_weeks_max, has_escápula_annex) VALUES
('a1b2c3d4-0000-0000-0000-000000000030', 'a1b2c3d4-0000-0000-0000-000000000001', 3, 'Full Planche', 'Alcanzar la Full Planche con hold reglamentario de 3 segundos.', '5 segundos de Straddle planche con buena postura', 'Full Planche 3 segundos con cánones posturales cumplidos', 9, 9, FALSE);

-- MESOCICLOS — Fase 1
INSERT INTO mesocycles (id, phase_id, meso_number, name, load_weeks, deload_weeks, intensity_range_min, intensity_range_max, focus) VALUES
('a1b2c3d4-0000-0000-0001-000000000001', 'a1b2c3d4-0000-0000-0000-000000000010', 1, 'Mesociclo 1', 4, 1, 30, 85, 'Hipertrofia y aprendizaje motor');

INSERT INTO mesocycles (id, phase_id, meso_number, name, load_weeks, deload_weeks, intensity_range_min, intensity_range_max, focus) VALUES
('a1b2c3d4-0000-0000-0001-000000000002', 'a1b2c3d4-0000-0000-0000-000000000010', 2, 'Mesociclo 2', 4, 1, 30, 80, 'Hipertrofia y aprendizaje motor');

-- MESOCICLOS — Fase 2
INSERT INTO mesocycles (id, phase_id, meso_number, name, load_weeks, deload_weeks, focus) VALUES
('a1b2c3d4-0000-0000-0002-000000000001', 'a1b2c3d4-0000-0000-0000-000000000020', 1, 'Mesociclo 1', 4, 1, 'Fuerza e hipertrofia avanzada');

INSERT INTO mesocycles (id, phase_id, meso_number, name, load_weeks, deload_weeks, focus) VALUES
('a1b2c3d4-0000-0000-0002-000000000002', 'a1b2c3d4-0000-0000-0000-000000000020', 2, 'Mesociclo 2', 4, 1, 'Fuerza e hipertrofia avanzada');

INSERT INTO mesocycles (id, phase_id, meso_number, name, load_weeks, deload_weeks, focus) VALUES
('a1b2c3d4-0000-0000-0002-000000000003', 'a1b2c3d4-0000-0000-0000-000000000020', 3, 'Mesociclo 3', 4, 1, 'Fuerza e hipertrofia avanzada');

-- MESOCICLOS — Fase 3
INSERT INTO mesocycles (id, phase_id, meso_number, name, load_weeks, deload_weeks, focus) VALUES
('a1b2c3d4-0000-0000-0003-000000000001', 'a1b2c3d4-0000-0000-0000-000000000030', 1, 'Mesociclo 1', 4, 1, 'Full Planche — máxima concentración y recuperación');

INSERT INTO mesocycles (id, phase_id, meso_number, name, load_weeks, deload_weeks, focus) VALUES
('a1b2c3d4-0000-0000-0003-000000000002', 'a1b2c3d4-0000-0000-0000-000000000030', 2, 'Mesociclo 2', 4, 1, 'Full Planche — máxima concentración y recuperación');

-- TESTS DE FUERZA
INSERT INTO strength_tests (mesocycle_id, description, exercise_name, target_seconds, quality_notes) VALUES
('a1b2c3d4-0000-0000-0001-000000000001', 'Pasar de Meso 1 a Meso 2 de Fase 1', 'Tuck planche hold', 10, 'Manteniendo la alineación hombro-cadera y protracción hasta el último segundo');

INSERT INTO strength_tests (mesocycle_id, description, exercise_name, target_seconds, quality_notes) VALUES
('a1b2c3d4-0000-0000-0001-000000000002', 'Completar Fase 1 y pasar a Fase 2', 'Tuck planche hold', 15, 'Hombros y cadera a la misma altura, protracción escapular apreciable durante todo el hold y codos bloqueados. Idealmente 20".');

-- DÍAS — Fase 1 Meso 1, rutina principal
INSERT INTO training_days (id, mesocycle_id, day_number, name, type, total_sets_min, total_sets_max) VALUES
('a1b2c3d4-1111-0001-0001-000000000001', 'a1b2c3d4-0000-0000-0001-000000000001', 1, 'Skills + empuje vertical', 'main', 12, 14);

INSERT INTO training_days (id, mesocycle_id, day_number, name, type, total_sets_min, total_sets_max) VALUES
('a1b2c3d4-1111-0001-0001-000000000002', 'a1b2c3d4-0000-0000-0001-000000000001', 2, 'Skills + empuje horizontal', 'main', 12, 14);

INSERT INTO training_days (id, mesocycle_id, day_number, name, type, total_sets_min, total_sets_max) VALUES
('a1b2c3d4-1111-0001-0001-000000000003', 'a1b2c3d4-0000-0000-0001-000000000001', 3, 'Skills + empuje general', 'main', 12, 14);

-- DÍAS — Fase 1 Meso 1, Anexo Escápula
INSERT INTO training_days (id, mesocycle_id, day_number, name, type, total_sets_min, total_sets_max) VALUES
('a1b2c3d4-1111-0001-ae01-000000000001', 'a1b2c3d4-0000-0000-0001-000000000001', 1, 'Escapula 1', 'annex_escapula', 6, 6);

INSERT INTO training_days (id, mesocycle_id, day_number, name, type, total_sets_min, total_sets_max) VALUES
('a1b2c3d4-1111-0001-ae01-000000000002', 'a1b2c3d4-0000-0000-0001-000000000001', 2, 'Escapula 2', 'annex_escapula', 6, 6);

-- ============================================================
-- EJERCICIOS — DÍA 1: Skills + empuje vertical
-- ============================================================

INSERT INTO prescribed_exercises (training_day_id, order_in_day, name, variant, sets_by_week, metric_type, reps_min, reps_max, rest_min_seconds, rest_max_seconds, rir_by_week, intensification, observations, category) VALUES
('a1b2c3d4-1111-0001-0001-000000000001', 1, 'Tuck planche hold', '(en mini pbars)', ARRAY[2,2,3,3], 'seconds', 3, 6, 240, 300, ARRAY[2,2,1,1], '- Más tiempo de hold', 'Priorizar el posicionamiento escapular – Bloqueo de codos al 100% y evitar la elevación de hombros – El RIR es en cuanto a escapula y/o hombro, dependiendo de cual falle primero', 'skill');

INSERT INTO prescribed_exercises (training_day_id, order_in_day, name, variant, sets_by_week, metric_type, reps_min, reps_max, rest_min_seconds, rest_max_seconds, rir_by_week, intensification, observations, category) VALUES
('a1b2c3d4-1111-0001-0001-000000000001', 2, 'Lean planche hold', '(en piso)', ARRAY[2,2,3,3], 'seconds', 12, 20, 180, 240, ARRAY[3,2,1,1], '- Más inclinación', 'Evitar la retroversión pélvica acentuada – Extender ligeramente la cadera manteniendo la línea hombros-cadera-tobillo – Inclinarse sólo hasta un punto en el cual puedas mantener la protracción escapular', 'skill');

INSERT INTO prescribed_exercises (training_day_id, order_in_day, name, variant, sets_by_week, metric_type, reps_min, reps_max, rest_min_seconds, rest_max_seconds, rir_by_week, intensification, observations, category) VALUES
('a1b2c3d4-1111-0001-0001-000000000001', 3, 'Flexiones en pica', '(en piso)', ARRAY[3,3,3,3], 'reps', 5, 10, 180, 240, ARRAY[3,2,1,1], '- Pies elevados\n- En mini pbars', 'Bajar ligeramente hacia delante, no hacia abajo de manera vertical, y al subir volver hacia atrás manteniendo siempre la cadera en alto', 'push');

INSERT INTO prescribed_exercises (training_day_id, order_in_day, name, variant, sets_by_week, metric_type, reps_min, reps_max, rest_min_seconds, rest_max_seconds, rir_by_week, intensification, observations, category) VALUES
('a1b2c3d4-1111-0001-0001-000000000001', 4, 'Fondos en paralelas', NULL, ARRAY[3,3,3,3], 'reps', 8, 12, 180, 240, ARRAY[3,2,1,1], '- Tempo 31X1', 'Bajar hasta pasar los 90° de flexión de codo – En lo posible hacer una ligera protracción y depresión al subir cada rep', 'push');

INSERT INTO prescribed_exercises (training_day_id, order_in_day, name, variant, sets_by_week, metric_type, reps_min, reps_max, rest_min_seconds, rest_max_seconds, rir_by_week, intensification, observations, category) VALUES
('a1b2c3d4-1111-0001-0001-000000000001', 5, 'Puente frontal con movimiento escapular', NULL, ARRAY[2,2,2,2], 'seconds', 20, 40, 120, 150, ARRAY[2,2,2,2], '- Deadstops', 'Mantener la depresión escapular y movilizar la escapula desde ahí – Máximo rango de retracción y protracción – Limitar los movimientos de columna', 'core');

-- ============================================================
-- EJERCICIOS — DÍA 2: Skills + empuje horizontal
-- ============================================================

INSERT INTO prescribed_exercises (training_day_id, order_in_day, name, variant, sets_by_week, metric_type, reps_min, reps_max, rest_min_seconds, rest_max_seconds, rir_by_week, intensification, observations, category) VALUES
('a1b2c3d4-1111-0001-0001-000000000002', 1, 'Tuck planche hold con banda fina', '(en pbars)', ARRAY[2,2,3,3], 'seconds', 10, 20, 180, 270, ARRAY[2,2,1,1], '- Banda más fina', 'Buscar la máxima altura posible – Evitar cambios en la postura durante el hold', 'skill');

INSERT INTO prescribed_exercises (training_day_id, order_in_day, name, variant, sets_by_week, metric_type, reps_min, reps_max, rest_min_seconds, rest_max_seconds, rir_by_week, intensification, observations, category) VALUES
('a1b2c3d4-1111-0001-0001-000000000002', 2, 'Lean planche push ups', '(en pbars)', ARRAY[2,2,3,3], 'reps', 4, 8, 240, 300, ARRAY[3,2,1,1], '- Con deadstop arriba', 'Mantener la rotación externa y depresión de hombros – Bajar en un principio hasta 90° e ir aumentando el ROM poco a poco', 'skill');

INSERT INTO prescribed_exercises (training_day_id, order_in_day, name, variant, sets_by_week, metric_type, reps_min, reps_max, rest_min_seconds, rest_max_seconds, rir_by_week, intensification, observations, category) VALUES
('a1b2c3d4-1111-0001-0001-000000000002', 3, 'Flexiones declinadas', NULL, ARRAY[3,3,3,3], 'reps', 10, 15, 120, 240, ARRAY[2,2,1,1], '- Tempo 21X1\n- Más inclinación', 'Trabajo de hipertrofia para pectoral y deltoides anterior – La repetición finaliza cuando bloqueas codos y protraes ligeramente las escapulas', 'push');

INSERT INTO prescribed_exercises (training_day_id, order_in_day, name, variant, sets_by_week, metric_type, reps_min, reps_max, rest_min_seconds, rest_max_seconds, rir_by_week, intensification, observations, category) VALUES
('a1b2c3d4-1111-0001-0001-000000000002', 4, 'Flexiones normales', NULL, ARRAY[3,3,3,3], 'reps', 12, 20, 120, 180, ARRAY[2,2,1,1], '- Deadstop abajo\n- Protracción arriba', 'Trabajo de hipertrofia para pectoral, deltoides anterior y tríceps – Buscar el máximo rango posible sin modificar la postura', 'push');

INSERT INTO prescribed_exercises (training_day_id, order_in_day, name, variant, sets_by_week, metric_type, reps_min, reps_max, rest_min_seconds, rest_max_seconds, rir_by_week, intensification, observations, category) VALUES
('a1b2c3d4-1111-0001-0001-000000000002', 5, 'Hollow body', NULL, ARRAY[2,2,2,2], 'seconds', 30, 45, 120, 150, ARRAY[2,2,2,2], '- Brazos hacia atrás', 'Trabajo de core – Mantener en isometría con retroversión pélvica', 'core');

-- ============================================================
-- EJERCICIOS — DÍA 3: Skills + empuje general
-- ============================================================

INSERT INTO prescribed_exercises (training_day_id, order_in_day, name, is_biserie, biserie_with, sets_by_week, metric_type, metric_description, rest_min_seconds, rest_max_seconds, rir_by_week, intensification, observations, category) VALUES
('a1b2c3d4-1111-0001-0001-000000000003', 1, 'Tuck planche hold + L-Sit', TRUE, 'L-Sit', ARRAY[2,2,2,3], 'combo', '(3"+3")x2', 240, 300, ARRAY[2,2,1,1], '- Más tiempo de hold', 'Mini combo de plancha y compresión – Usar el L-Sit como descanso de la plancha – Codos siempre bloqueados y buscar altura en la plancha', 'skill');

INSERT INTO prescribed_exercises (training_day_id, order_in_day, name, variant, sets_by_week, metric_type, reps_min, reps_max, rest_min_seconds, rest_max_seconds, rir_by_week, intensification, observations, category) VALUES
('a1b2c3d4-1111-0001-0001-000000000003', 2, 'Lean planche hold', '(en pbars)', ARRAY[2,2,3,3], 'seconds', 15, 25, 180, 240, ARRAY[3,2,1,1], '- Inclinarse más', 'Trabajo de acondicionamiento para tejido conectivo – Bloqueo de codos y atención a la línea', 'skill');

INSERT INTO prescribed_exercises (training_day_id, order_in_day, name, variant, sets_by_week, metric_type, reps_min, reps_max, rest_min_seconds, rest_max_seconds, rir_by_week, intensification, observations, category) VALUES
('a1b2c3d4-1111-0001-0001-000000000003', 3, 'Flexiones con protracción', NULL, ARRAY[3,3,3,3], 'reps', 8, 12, 180, 240, ARRAY[2,2,1,1], '- Más reps (10-15)', 'Mantener la protracción todo el tiempo, tanto al bajar como al subir la flexión – Trabajo específico de serrato anterior y musculatura de empuje', 'push');

INSERT INTO prescribed_exercises (training_day_id, order_in_day, name, variant, sets_by_week, metric_type, reps_min, reps_max, rest_min_seconds, rest_max_seconds, rir_by_week, intensification, observations, category) VALUES
('a1b2c3d4-1111-0001-0001-000000000003', 4, 'Flexiones inclinadas', NULL, ARRAY[3,3,3,3], 'reps', 20, 30, 120, 180, ARRAY[2,2,1,1], '- Deadstop abajo', 'No hace falta protracción escapular, buscar abrir el pecho al bajar cada repetición – Trabajo de hipertrofia para hombro-pecho-tríceps', 'push');

INSERT INTO prescribed_exercises (training_day_id, order_in_day, name, is_biserie, biserie_with, sets_by_week, metric_type, metric_description, rest_min_seconds, rest_max_seconds, rir_by_week, intensification, observations, category) VALUES
('a1b2c3d4-1111-0001-0001-000000000003', 5, 'L-Sit hold + Puente frontal', TRUE, 'Puente frontal', ARRAY[2,2,2,2], 'combo', '5-10" + 30"', 120, 180, ARRAY[2,2,2,2], '- Más tiempo de hold', 'Biserie de core – Compresión y antiextensión', 'core');

-- ============================================================
-- EJERCICIOS — ANEXO ESCÁPULA DÍA 1
-- ============================================================

INSERT INTO prescribed_exercises (training_day_id, order_in_day, name, sets_by_week, metric_type, reps_min, reps_max, rest_min_seconds, rest_max_seconds, rir_by_week, intensification, observations, category) VALUES
('a1b2c3d4-1111-0001-ae01-000000000001', 1, 'Flexiones escapulares con codos rectos', ARRAY[2,2,2,2], 'reps', 8, 15, 120, 180, ARRAY[2,3,2,3], '- Ligera inclinación hacia delante', 'Bajar y subir en rangos máximos (máxima retracción y máxima protracción), siempre con movimientos controlados y buscando la activación del serrato', 'escapula');

INSERT INTO prescribed_exercises (training_day_id, order_in_day, name, sets_by_week, metric_type, reps_min, reps_max, rest_min_seconds, rest_max_seconds, rir_by_week, intensification, observations, category) VALUES
('a1b2c3d4-1111-0001-ae01-000000000001', 2, 'Dolphin press', ARRAY[2,2,2,2], 'reps', 2, 4, 120, 180, ARRAY[1,2,1,2], '- Más lento', 'Mantener la protracción escapular durante todo el movimiento, pero acentuarlo en la bajada – Movimiento controlado', 'escapula');

INSERT INTO prescribed_exercises (training_day_id, order_in_day, name, sets_by_week, metric_type, reps_min, reps_max, rest_min_seconds, rest_max_seconds, rir_by_week, intensification, observations, category) VALUES
('a1b2c3d4-1111-0001-ae01-000000000001', 3, 'Puente frontal con máxima protracción', ARRAY[2,2,2,2], 'seconds', 10, 20, 120, 180, ARRAY[1,2,1,2], '- Más segs', 'Terminar el set cuando se empiece a perder aunque sea un mínimo de protracción – No flexionar la columna (o que sea despreciable)', 'escapula');

-- ============================================================
-- EJERCICIOS — ANEXO ESCÁPULA DÍA 2
-- ============================================================

INSERT INTO prescribed_exercises (training_day_id, order_in_day, name, sets_by_week, metric_type, reps_min, reps_max, rest_min_seconds, rest_max_seconds, rir_by_week, intensification, observations, tempo, category) VALUES
('a1b2c3d4-1111-0001-ae01-000000000002', 1, 'Puente frontal con movimiento escapular', ARRAY[2,2,2,2], 'reps', 10, 20, 120, 180, ARRAY[1,2,1,2], '- Tempo 2111\n- Deadstop arriba', 'Evitar que la escapula rote hacia delante al retraer – Mantener siempre activación en el serrato (incluso en la excéntrica) – Mantener la línea y la ligera extensión de cadera (glúteos activos)', '2111', 'escapula');

INSERT INTO prescribed_exercises (training_day_id, order_in_day, name, sets_by_week, metric_type, reps_min, reps_max, rest_min_seconds, rest_max_seconds, rir_by_week, intensification, observations, tempo, category) VALUES
('a1b2c3d4-1111-0001-ae01-000000000002', 2, 'Wall slide para serrato anterior', ARRAY[2,2,2,2], 'reps', 5, 10, 120, 180, ARRAY[1,2,1,2], '- Banda entre los antebrazos', 'Retraer el mentón, protraer las escapulas y llevar los brazos lo más arriba que se pueda sin arquear la espalda baja ni perder la protracción escapular', NULL, 'escapula');

INSERT INTO prescribed_exercises (training_day_id, order_in_day, name, sets_by_week, metric_type, reps_min, reps_max, rest_min_seconds, rest_max_seconds, rir_by_week, intensification, observations, tempo, category) VALUES
('a1b2c3d4-1111-0001-ae01-000000000002', 3, 'Depresiones escapulares en paralelas', ARRAY[2,2,2,2], 'reps', 8, 12, 120, 180, ARRAY[2,3,2,3], '- Usar peso', 'Mantener los codos bloqueados al 100% y desde ahí ejecutar el movimiento de manera controlada y buscando máximos rangos de movimiento (siempre y cuando no genere dolor)', '31X1', 'escapula');
