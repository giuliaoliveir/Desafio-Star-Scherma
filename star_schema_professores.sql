
-- Criação das tabelas para o esquema estrela focado na análise de dados dos professores.

-- Tabela Fato: Armazena informações dos professores, cursos e departamentos
CREATE TABLE Fato_Professor (
    id_fato INT PRIMARY KEY AUTO_INCREMENT,
    id_professor INT,
    id_curso INT,
    id_departamento INT,
    id_data INT,
    horas_ministradas DECIMAL(10, 2),
    numero_estudantes INT,
    receita_curso DECIMAL(10, 2),
    FOREIGN KEY (id_professor) REFERENCES Dim_Professor(id_professor),
    FOREIGN KEY (id_curso) REFERENCES Dim_Curso(id_curso),
    FOREIGN KEY (id_departamento) REFERENCES Dim_Departamento(id_departamento),
    FOREIGN KEY (id_data) REFERENCES Dim_Data(id_data)
);

-- Tabela Dimensão de Professores
CREATE TABLE Dim_Professor (
    id_professor INT PRIMARY KEY AUTO_INCREMENT,
    nome_professor VARCHAR(100),
    titulo_academico VARCHAR(50),
    especialidade VARCHAR(100)
);

-- Tabela Dimensão de Cursos
CREATE TABLE Dim_Curso (
    id_curso INT PRIMARY KEY AUTO_INCREMENT,
    nome_curso VARCHAR(100),
    carga_horaria INT,
    nivel VARCHAR(50)
);

-- Tabela Dimensão de Departamentos
CREATE TABLE Dim_Departamento (
    id_departamento INT PRIMARY KEY AUTO_INCREMENT,
    nome_departamento VARCHAR(100),
    localizacao VARCHAR(100)
);

-- Tabela Dimensão de Datas
CREATE TABLE Dim_Data (
    id_data INT PRIMARY KEY AUTO_INCREMENT,
    data_oferta DATE,
    ano INT,
    mes INT,
    dia INT
);
