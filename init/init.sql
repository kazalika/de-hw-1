CREATE SCHEMA IF NOT EXISTS stg;

CREATE TABLE IF NOT EXISTS stg.products (
    id SERIAL PRIMARY KEY,
    product_id INTEGER NOT NULL,
    title TEXT NOT NULL,
    description TEXT,
    category TEXT NOT NULL,
    price NUMERIC(12, 2) NOT NULL,
    discount_percentage NUMERIC(5, 2),
    rating NUMERIC(3, 2),
    stock INTEGER NOT NULL,
    brand TEXT,
    sku TEXT,
    loaded_at TIMESTAMP NOT NULL DEFAULT NOW(),
    CONSTRAINT products_product_id_key UNIQUE (product_id)
);
