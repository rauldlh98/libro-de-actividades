# This file is autogenerated. Instead of editing this file, please use the
# migrations feature of ActiveRecord to incrementally modify your database, and
# then regenerate this schema definition.

ActiveRecord::Schema.define(:version => 9) do

  create_table "alumnos", :force => true do |t|
    t.column "nombre", :string
    t.column "apellidos", :string
    t.column "dni", :string
    t.column "fecha_nac", :date
    t.column "foto", :string
    t.column "email", :string
    t.column "telefono_sms", :string
    t.column "telefono_otro", :string
    t.column "domicilio", :string
    t.column "localidad", :string
    t.column "expediente", :string
  end

  create_table "aulas", :force => true do |t|
    t.column "nombre", :string
    t.column "desc", :string
    t.column "foto1", :string
    t.column "foto2", :string
    t.column "plano", :string
  end

  create_table "ciclos", :force => true do |t|
    t.column "nombre", :string
    t.column "desc", :string
    t.column "curso_id", :integer
  end

  create_table "cursos", :force => true do |t|
    t.column "nombre", :string
    t.column "fecha_trim1", :date
    t.column "fecha_trim2", :date
    t.column "fecha_trim3", :date
    t.column "fecha_fin", :date
  end

  create_table "horarios", :force => true do |t|
    t.column "modulo_id", :integer
    t.column "profesor_id", :integer
    t.column "aula_id", :integer
    t.column "dia", :integer
    t.column "hora", :integer
  end

  create_table "modulos", :force => true do |t|
    t.column "nombre", :string
    t.column "desc", :string
    t.column "nivel", :integer
    t.column "ciclo_id", :integer
    t.column "profesor_id", :integer
    t.column "peso_eje", :integer
    t.column "peso_val", :integer
    t.column "peso_pob", :integer
  end

  create_table "profesors", :force => true do |t|
    t.column "nombre", :string
    t.column "apellidos", :string
    t.column "dni", :string
    t.column "email", :string
    t.column "telefono_sms", :string
    t.column "telefono_otro", :string
    t.column "activo", :boolean
    t.column "usuario", :string
    t.column "clave", :string
  end

  create_table "unidads", :force => true do |t|
    t.column "modulo_id", :integer
    t.column "numero", :integer
    t.column "nombre", :string
    t.column "fecha_ini", :date
  end

  create_table "usuarios", :force => true do |t|
    t.column "nombre", :string
    t.column "clave", :string
    t.column "activo", :boolean
    t.column "admin", :boolean
    t.column "profesor_id", :integer
    t.column "alumno_id", :integer
  end

end