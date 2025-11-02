applicationDesktopNimacOptiWork = container "Aplicación de escritorio NIMAC OptiWork" {
    description "Aplicación de escritorio para la gestión de tareas y optimización del trabajo"
    technology "WinUI3, .NET 8"
    tags "Application Desktop"

    moduleAuth = component "Componente de Autenticación" {
        description "Autentica usuarios"
        technology ".NET 8"
        tags "Component"
    }

    moduleTaskAssigment = component "Componente de Asignación de Tareas" {
        description "Asignación de tareas asociadas a un documento"
        technology ".NET 8"
        tags "Component"
    }

    moduleReporting = component "Componente de Reportes" {
        description "Genera reportes de gestión y productividad"
        technology ".NET 8"
        tags "Component"
    }

    moduleNotification = component "Componente de notificación"{
        description "Notificaciones que responden a los distintos eventos en la app"
        technology ".Net 8"
        tags "Notify" "Office 365"
    }


    repositoryTaskData = component "Repositorio de Datos de Tareas" {
        description "Repositorio para gestionar datos de tareas"
        technology "Entity Framework Core"
        tags "Repository"
    }
    
    repositoryUserData = component "Repositorio de Datos de Usuarios" {
        description "Repositorio para gestionar datos de usuarios"
        technology "Entity Framework Core"
        tags "Repository"
    }

    repositoryDocumentData = component "Repositorio de Datos de Documentos" {
        description "Repositorio para gestionar datos de documentos"
        technology "Entity Framework Core"
        tags "Repository"
    }

}