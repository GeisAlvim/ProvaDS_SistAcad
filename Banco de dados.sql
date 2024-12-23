CREATE database provaDS;
use provaDs;

CREATE TABLE alunos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    data_nascimento DATE NOT NULL,
    telefone VARCHAR(11) NOT NULL,
    sexo ENUM('masculino', 'feminino', 'outro') NOT NULL
);

CREATE TABLE aulas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_aula VARCHAR(255) NOT NULL,
    professor VARCHAR(255) NOT NULL,
    quantidade_maxima INT NOT NULL CHECK (quantidade_maxima > 0),
    hora_inicio TIME NOT NULL,
    hora_fim TIME NOT NULL,
    CONSTRAINT chk_hora CHECK (hora_inicio < hora_fim)
);

CREATE TABLE professores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    data_nascimento DATE NOT NULL,
    telefone VARCHAR(11) NOT NULL,
    sexo ENUM('masculino', 'feminino', 'outro') NOT NULL,
    especialidade VARCHAR(255) NOT NULL,
    CONSTRAINT chk_idade CHECK (DATEDIFF(CURDATE(), data_nascimento) / 365 >= 18)
);