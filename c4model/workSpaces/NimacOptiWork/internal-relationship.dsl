
isNimacOptiWork.applicationDesktopNimacOptiWork -> isNimacOptiWork.databaseNimacOptiWork "Lee y escribe datos de gestión empresarial" "JDBC"

isNimacOptiWork.isPipelineNimacAs400 -> esAS400 "Consulta las facturas cada 5 minutos" "Conexión ODBC"
esAS400 -> isNimacOptiWork.isPipelineNimacAs400 "Envía las facturas nuevas" "Conexión ODBC"

isNimacOptiWork.isPipelineNimacAs400 -> isNimacOptiWork.databaseNimacOptiWork "Lee y escribe datos de gestión empresarial" "JDBC"



// Components relationships

isNimacOptiWork.applicationDesktopNimacOptiWork.moduleAuth -> isNimacOptiWork.applicationDesktopNimacOptiWork.repositoryUserData "Verifica crendeciales de usuario"
isNimacOptiWork.applicationDesktopNimacOptiWork.moduleTaskAssigment -> isNimacOptiWork.applicationDesktopNimacOptiWork.repositoryTaskData "Gestiona datos de tareas"
isNimacOptiWork.applicationDesktopNimacOptiWork.moduleReporting -> isNimacOptiWork.applicationDesktopNimacOptiWork.repositoryTaskData "Obtiene datos de tareas para generar reportes"
isNimacOptiWork.applicationDesktopNimacOptiWork.moduleReporting -> isNimacOptiWork.applicationDesktopNimacOptiWork.repositoryUserData "Obtiene datos de usuarios para generar reportes"
isNimacOptiWork.applicationDesktopNimacOptiWork.moduleTaskAssigment -> isNimacOptiWork.applicationDesktopNimacOptiWork.repositoryDocumentData "Consulta documento asociado a la tarea para cambiar el estado del documento"
isNimacOptiWork.applicationDesktopNimacOptiWork.moduleReporting -> isNimacOptiWork.applicationDesktopNimacOptiWork.repositoryDocumentData "Obtiene datos de documentos para generar reportes"
isNimacOptiWork.applicationDesktopNimacOptiWork.moduleTaskAssigment -> isNimacOptiWork.applicationDesktopNimacOptiWork.moduleNotification "Envía notificaciones sobre nuevas tareas"

//relationships with database

isNimacOptiWork.applicationDesktopNimacOptiWork.repositoryDocumentData -> isNimacOptiWork.databaseNimacOptiWork "Consulta y persiste datos de documentos" "JDBC"
isNimacOptiWork.applicationDesktopNimacOptiWork.repositoryTaskData -> isNimacOptiWork.databaseNimacOptiWork "Consulta y persiste datos de tareas" "JDBC"
isNimacOptiWork.applicationDesktopNimacOptiWork.repositoryUserData -> isNimacOptiWork.databaseNimacOptiWork "Consulta y persiste datos de usuarios" "JDBC"


