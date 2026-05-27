-- ============================================================
-- MIGRACIÓN: D&R Fashion → Farmacia Salud Vital
-- Ejecutar DESPUÉS de BDStockGo.sql
-- Fecha: Mayo 2026
-- ============================================================

-- ============================================================
-- 1. LIMPIAR DATOS EXISTENTES (manteniendo estructura)
-- ============================================================
TRUNCATE products, promotions, favorites RESTART IDENTITY CASCADE;

-- ============================================================
-- 2. INSERTAR PRODUCTOS DE FARMACIA
-- ============================================================
INSERT INTO products (name, price, category, stock, image_url, created_at, updated_at) VALUES
('Paracetamol 500mg', 89.99, 'Medicamentos', 150, '💊', NOW(), NOW()),
('Ibuprofeno 400mg', 79.99, 'Medicamentos', 120, '💊', NOW(), NOW()),
('Omeprazol 20mg', 129.99, 'Medicamentos', 85, '💊', NOW(), NOW()),
('Amoxicilina 500mg', 149.99, 'Medicamentos', 60, '💊', NOW(), NOW()),
('Naproxeno 250mg', 99.99, 'Medicamentos', 75, '💊', NOW(), NOW()),
('Loratadina 10mg', 69.99, 'Medicamentos', 110, '💊', NOW(), NOW());

INSERT INTO products (name, price, category, stock, image_url, created_at, updated_at) VALUES
('Vitamina C 1000mg', 149.99, 'Vitaminas', 95, '🍊', NOW(), NOW()),
('Multivitamínico Complejo', 249.99, 'Vitaminas', 60, '💊', NOW(), NOW()),
('Vitamina D3 2000UI', 189.99, 'Vitaminas', 70, '☀️', NOW(), NOW()),
('Complejo B', 179.99, 'Vitaminas', 55, '💊', NOW(), NOW()),
('Magnesio 400mg', 159.99, 'Vitaminas', 80, '💊', NOW(), NOW()),
('Zinc 50mg', 99.99, 'Vitaminas', 100, '🔋', NOW(), NOW());

INSERT INTO products (name, price, category, stock, image_url, created_at, updated_at) VALUES
('Curitas adhesivas (caja 50pzs)', 45.99, 'Primeros Auxilios', 200, '🩹', NOW(), NOW()),
('Alcohol en gel 70% 500ml', 55.99, 'Primeros Auxilios', 100, '🧴', NOW(), NOW()),
('Gasas estériles 10x10 (sobre)', 29.99, 'Primeros Auxilios', 150, '🩹', NOW(), NOW()),
('Venda elástica 5m', 39.99, 'Primeros Auxilios', 90, '🩹', NOW(), NOW()),
('Agua oxigenada 500ml', 35.99, 'Primeros Auxilios', 120, '🧴', NOW(), NOW()),
('Micropore 2.5cm', 25.99, 'Primeros Auxilios', 180, '🩹', NOW(), NOW());

INSERT INTO products (name, price, category, stock, image_url, created_at, updated_at) VALUES
('Termómetro digital', 189.99, 'Bienestar', 40, '🌡️', NOW(), NOW()),
('Tensiómetro digital', 599.99, 'Bienestar', 25, '💓', NOW(), NOW()),
('Pulsioxímetro', 399.99, 'Bienestar', 30, '📊', NOW(), NOW()),
('Inhalador para nebulizar', 249.99, 'Bienestar', 20, '💨', NOW(), NOW()),
('Baumanómetro manual', 349.99, 'Bienestar', 15, '💓', NOW(), NOW()),
('Caminador ajustable', 1299.99, 'Bienestar', 10, '🚶', NOW(), NOW());

INSERT INTO products (name, price, category, stock, image_url, created_at, updated_at) VALUES
('Cepillo dental suave', 35.99, 'Cuidado Personal', 180, '🪥', NOW(), NOW()),
('Pasta dental triple acción', 42.99, 'Cuidado Personal', 160, '🪥', NOW(), NOW()),
('Jabón neutro 125g', 28.99, 'Cuidado Personal', 200, '🧼', NOW(), NOW()),
('Protector solar FPS 50+', 189.99, 'Cuidado Personal', 55, '🧴', NOW(), NOW()),
('Shampoo anticaspa', 79.99, 'Cuidado Personal', 90, '🧴', NOW(), NOW()),
('Enjuague bucal 500ml', 59.99, 'Cuidado Personal', 110, '💧', NOW(), NOW()),
('Desodorante antitranspirante', 49.99, 'Cuidado Personal', 130, '🧴', NOW(), NOW()),
('Gel antibacterial 300ml', 39.99, 'Cuidado Personal', 170, '🧴', NOW(), NOW());

-- ============================================================
-- 3. ACTUALIZAR USUARIO ADMIN EXISTENTE
-- ============================================================
UPDATE users 
SET name = 'Administrador Salud Vital', email = 'admin@saludvital.com' 
WHERE email = 'admin@drfashion.com';

-- ============================================================
-- 4. CREAR USUARIO DEMO (si no existe)
-- ============================================================
INSERT INTO users (name, email, password, role, created_at)
SELECT 'Usuario Demo', 'usuario@demo.com', '$2b$10$fLCxxEJdIItDsMH.La2akuR36PRl3To./7gbrmMB3hUZe5CilWiDu', 'user', NOW()
WHERE NOT EXISTS (SELECT 1 FROM users WHERE email = 'usuario@demo.com');

-- ============================================================
-- 5. CREAR ADMIN POR DEFECTO (contraseña: Admin123!)
-- ============================================================
INSERT INTO users (name, email, password, role, created_at)
SELECT 'Admin Salud Vital', 'admin@saludvital.com', '$2b$10$X4ho/3b555N4OkK2paI11.BztKWrvj6Yc6RzbJwOd9rTom2bLvJSi', 'admin', NOW()
WHERE NOT EXISTS (SELECT 1 FROM users WHERE email = 'admin@saludvital.com');

-- ============================================================
-- 6. CREAR USUARIO DE PRUEBA ADICIONAL
-- ============================================================
INSERT INTO users (name, email, password, role, created_at)
SELECT 'Cliente Prueba', 'cliente@test.com', '$2b$10$fLCxxEJdIItDsMH.La2akuR36PRl3To./7gbrmMB3hUZe5CilWiDu', 'user', NOW()
WHERE NOT EXISTS (SELECT 1 FROM users WHERE email = 'cliente@test.com');

-- ============================================================
-- 7. PROMOCIÓN DE BIENVENIDA
-- ============================================================
INSERT INTO promotions (title, description, discount_percent, start_date, end_date, active, is_active, created_at, updated_at)
SELECT '20% OFF en Medicamentos', 'Válido para toda la categoría de medicamentos. ¡Aprovecha!', 20, CURRENT_DATE, CURRENT_DATE + INTERVAL '30 days', true, true, NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM promotions WHERE title = '20% OFF en Medicamentos');

-- ============================================================
-- 8. SEGUNDA PROMOCIÓN (Vitaminas)
-- ============================================================
INSERT INTO promotions (title, description, discount_percent, start_date, end_date, active, is_active, created_at, updated_at)
SELECT '15% OFF en Vitaminas', 'Cuida tu sistema inmune con nuestras vitaminas', 15, CURRENT_DATE, CURRENT_DATE + INTERVAL '45 days', true, true, NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM promotions WHERE title = '15% OFF en Vitaminas');

-- ============================================================
-- 9. TERCERA PROMOCIÓN (Bienestar)
-- ============================================================
INSERT INTO promotions (title, description, discount_percent, start_date, end_date, active, is_active, created_at, updated_at)
SELECT '10% OFF en Equipo Médico', 'Termómetros, tensiómetros y más', 10, CURRENT_DATE, CURRENT_DATE + INTERVAL '60 days', true, true, NOW(), NOW()
WHERE NOT EXISTS (SELECT 1 FROM promotions WHERE title = '10% OFF en Equipo Médico');

-- ============================================================
-- 10. VERIFICACIÓN DE DATOS (mensajes de confirmación)
-- ============================================================
DO $$
DECLARE
    product_count INTEGER;
    user_count INTEGER;
    promo_count INTEGER;
BEGIN
    SELECT COUNT(*) INTO product_count FROM products;
    SELECT COUNT(*) INTO user_count FROM users;
    SELECT COUNT(*) INTO promo_count FROM promotions;
    
    RAISE NOTICE '==========================================';
    RAISE NOTICE 'MIGRACIÓN COMPLETADA EXITOSAMENTE';
    RAISE NOTICE '==========================================';
    RAISE NOTICE '✅ Productos insertados: %', product_count;
    RAISE NOTICE '✅ Usuarios en sistema: %', user_count;
    RAISE NOTICE '✅ Promociones activas: %', promo_count;
    RAISE NOTICE '==========================================';
END $$;

-- ============================================================
-- 11. MOSTRAR RESULTADOS (opcional - consultas de verificación)
-- ============================================================
-- Ver productos por categoría
SELECT category, COUNT(*) as total FROM products GROUP BY category ORDER BY category;

-- Ver usuarios por rol
SELECT role, COUNT(*) as total FROM users GROUP BY role;

-- Ver promociones activas
SELECT title, discount_percent, end_date FROM promotions WHERE is_active = true;