CREATE TABLE participante(
id_participante serial PRIMARY KEY
);

CREATE TABLE oficina(
id_oficina serial PRIMARY KEY,
id_participante serial REFERENCES participante(id_participante)
);

CREATE TABLE equipe(
id_equipe serial PRIMARY KEY
);

CREATE TABLE trabalhador(
id_trabalhador serial PRIMARY KEY,
id_equipe serial REFERENCES equipe(id_equipe)
);

CREATE TABLE quarto(
id_quarto serial PRIMARY KEY,
id_trabalhador serial REFERENCES trabalhador(id_trabalhador),
id_participante serial REFERENCES participante(id_participante)
);

CREATE TABLE alimentacao(
id_alimentacao serial PRIMARY KEY,
id_participante serial REFERENCES participante(id_participante),
id_trabalhador serial REFERENCES trabalhador(id_trabalhador)
);