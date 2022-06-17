CREATE TABLE IF NOT EXISTS epochs (
    epoch_id integer primary key not null
);

CREATE TABLE IF NOT EXISTS vote_accounts (
    id serial primary key,
    epoch_id integer references epochs,
    vote_account_index integer not null,
    vote_account jsonb
);

CREATE TABLE IF NOT EXISTS stake_accounts (
    id serial primary key,
    epoch_id integer references epochs,
    stake_account_index integer not null,
    stake_account jsonb
);