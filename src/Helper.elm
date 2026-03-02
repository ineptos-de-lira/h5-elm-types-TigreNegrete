module Helper exposing (..)


type MiBool
    = MiTrue
    | MiFalse


type GradeStatus
    = Approved
    | Failed
    | Pending


categoricalGrade : List Float -> List GradeStatus
categoricalGrade list =
    case list of
        [] ->
            []

        x :: xs ->
            if x >= 7 then
                Approved :: categoricalGrade xs

            else if x < 0 then
                Pending :: categoricalGrade xs

            else
                Failed :: categoricalGrade xs


type AirplaneStatus
    = OnTime
    | Boarding
    | Delayed
    | Cancelled


airplaneScheduleAction : AirplaneStatus -> String
airplaneScheduleAction status =
    case status of
        OnTime ->
            "Esperar"

        Boarding ->
            "Buscar boleto"

        Delayed ->
            "Esperar"

        Cancelled ->
            "Pedir reembolso"


airportAction : List AirplaneStatus -> List String
airportAction list =
    case list of
        [] ->
            []

        x :: xs ->
            airplaneScheduleAction x :: airportAction xs


airplaneStatuses =
    [ OnTime, Boarding, Delayed, Cancelled ]
