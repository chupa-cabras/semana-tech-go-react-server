CREATE TABLE IF NOT EXISTS rooms (
    "id" uuid PRIMARY KEY NOT NULL DEFAULT gen_random_uuid(),
    "theme" VARCHAR(255) NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW()
);



---- create above / drop below ----


DROP TABLE IF EXISTS rooms;