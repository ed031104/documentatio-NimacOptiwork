workspace "Sistema NIMAC OptiWork" {

    !identifiers hierarchical

    description "Sistema para la optimización del trabajo en almacenes de NIMAC"
    
    model {

        group  "Nimac [Enterprise]" {
            
            #system internal
            !include ../../shared/Systems/internal/NimacOptiWork.dsl
            
            #users
            !include ../../shared/users/almacen.dsl
            !include ../../shared/users/gerente.dsl
            !include ../../shared/users/venta.dsl
        }

        #external systems
        !include ../../shared/Systems/external/as400.dsl

        #containers and relationships
        !element isNimacOptiWork {

            #containers
            !include ../../shared/containers/internal/app-desktop-nimacOptiWork.dsl
            !include ../../shared/containers/data_stores/database-nimacOptiWork.dsl
            !include ../../shared/containers/internal/pipeline-NimacAs400.dsl

            userAlmacen -> isNimacOptiWork "Usa para asignarse tareas" "Interfaz de escritorio"
            userGerente -> isNimacOptiWork "Usa para gestionar tareas y optimizar el trabajo" "Interfaz de escritorio"
            userVenta -> isNimacOptiWork "Usa para asignarse tareas" "Interfaz de escritorio"        
        }    

        !element isNimacOptiWork.applicationDesktopNimacOptiWork {
        
        }

        #relationships
        !include internal-relationship.dsl    
    }

    views {
        #styles
        !include ../../shared/styles/style.dsl

        #diagrams
        !include views.dsl
    }
    configuration {
        scope softwaresystem
    }

}