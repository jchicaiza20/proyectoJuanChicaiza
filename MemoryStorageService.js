// MemoryStorageService.js
const MemoryStorageService = (function () {
    let projects = []; // Array para almacenar los proyectos en memoria

    return {
        addProject: function (project) {
            projects.push(project); // Agregar un proyecto al array
        },
        getProjects: function () {
            return projects; // Retornar todos los proyectos almacenados
        },
        searchProjectsByName: function (name) {
            // Filtra proyectos según el nombre
            return projects.filter(project =>
                project.name.toLowerCase().includes(name.toLowerCase())
            );
        }
    };
})();
