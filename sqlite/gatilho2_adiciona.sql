.mode columns
.header on
.nullvalue NULL

PRAGMA foreign_keys = ON;

CREATE TRIGGER IF NOT EXISTS R2
BEFORE UPDATE OF data on Jogo
when julianday(new.data) < round((julianday('now')-462))
Begin
SELECT RAISE(ABORT, 'DATA DE JOGO INSERIDA INVALIDA');
END;
 