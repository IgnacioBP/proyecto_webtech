# README

Validaciones:

    Tickets
    
    Executive

    Administrator

    Tag

    AllUser  ---> Crear validacion para revisar si mail ya existe, con el fin de evitar crear nuevos objetos con ese mail.Osea, que no exista User o Ejecutivo o Supervisor o Administrador con el mismo mail.
    Esta validacion tendria que hacerse en un formato similar a la del EmailValidator, ademas de que se debe de hacer dentro de cada Modelo de 'accounts' 

    ...

Tablas:

    TagList

    Tag

    CommentList

    Comment

    ExecutiveReport

    ReportOfPerformance
    

Relaciones:

    Tag
        belongs_to :tag_list
    TagList
        has_many :tags
        has_many :tickets
    Ticket
        belongs_to :tag_list

    Comment
        belongs_to :comment_list
    CommentList
        has_many :comments
        belongs_to :ticket
    Ticket
        has_one :comment_list

    ...

Agregar:

    tags en Ticket
    executive_chat en Ticket
    executive_mail en Ticket
    user_info en Ticket

    number_stars callback en Executive
    number_close_ticket callback en Executive

    administrator_key en Administrator, para checkear que solo haya un unico administrador

    ...

Ver como:

    Modificar un User/Executive siendo Supervisor y como hacer lo mismo pero como Administrador

    Corroborar que el mail no este repetido en niguno de los modelos de 'usuarios'

    Hacer el executive report y el report of performance

    Manejar las rutas de mejor manera

    Arreglar las vistas

    Hacer un login


Para siguiente entrega: 

    Manejo de los archivos

    ...

