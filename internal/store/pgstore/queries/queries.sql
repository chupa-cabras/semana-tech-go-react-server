-- name: GetRoom :one 
SELECT * FROM rooms WHERE id = $1 ;

-- name: GetRooms :many
SELECT * FROM rooms;

-- name: CreateRoom :one
INSERT INTO rooms (theme) VALUES ($1) RETURNING *;

-- name: UpdateRoom :one
UPDATE rooms SET theme = $1 WHERE id = $2 RETURNING *;

-- name: DeleteRoom :one
DELETE FROM rooms WHERE id = $1 RETURNING *;

-- name: GetMessages :many
SELECT * FROM messages WHERE room_id = $1;

-- name: CreateMessage :one
INSERT INTO messages (room_id, message) VALUES ($1, $2) RETURNING *;

-- name: UpdateMessage :one
UPDATE messages SET message = $1 WHERE id = $2 RETURNING *;

-- name: DeleteMessage :one
DELETE FROM messages WHERE id = $1 RETURNING *;

-- name: GetAnsweredMessages :many
SELECT * FROM messages WHERE room_id = $1 AND answered = true;

-- name: AnswerMessage :one
UPDATE messages SET answered = true WHERE id = $1 RETURNING *;

-- name: UnanswerMessage :one
UPDATE messages SET answered = false WHERE id = $1 RETURNING *;


