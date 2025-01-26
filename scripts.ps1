function Start-Containers {
    docker-compose up -d
}

function Stop-Containers {
    docker-compose down
}

function Restart-Containers {
    docker-compose down
    docker-compose up -d
}

function View-Logs {
    docker-compose logs -f
}

function Liquibase-Update {
    docker-compose run liquibase update
}

function Liquibase-Snapshot {
    docker-compose run liquibase snapshot --snapshot-format=JSON --output-file=database_before.json
}

function Liquibase-diffChangeLog {
    docker-compose run --rm liquibase liquibase diffChangeLog --url=offline:mariadb?snapshot=resources/database_before.json --referenceUrl=jdbc:mariadb://172.28.1.2:3306/crystalforum_ --referenceUsername root --referencePassword root --referenceDriver=org.mariadb.jdbc.Driver 
}


switch ($args[0]) {
    "start" { Start-Containers }
    "stop" { Stop-Containers }
    "restart" { Restart-Containers }
    "logs" { View-Logs }
    "liquibase_update" { Liquibase-Update }
    "liquibase_snapshot" { Liquibase-Snapshot }
    "createChangeLog" { Liquibase-diffChangeLog}
    default { Write-Host "Usage: crystal {start|stop|restart|logs|liquibase_update|liquibase_snapshot|register}" }
}