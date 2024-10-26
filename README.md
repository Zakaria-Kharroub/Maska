## SPRING FRAMEWORK

This application is a basic User Management System 
built using Spring Core without Spring Boot, 
Spring MVC, and Spring Data JPA. It allows users to perform CRUD operations 
such as creating, viewing, updating, and deleting users through a web interface.

## Table of Contents
- [Project Structure](#project-structure)
- [Dependency Injection (DI)](#dependency-injection-di)
- [Inversion of Control (IoC)](#inversion-of-control-ioc)
- [Spring Beans](#spring-beans)
- [Bean Scopes](#bean-scopes)
- [ApplicationContext](#applicationcontext)
- [Component Scanning and Stereotype Annotations](#component-scanning-and-stereotype-annotations)
- [Spring Data JPA](#spring-data-jpa)
- [Spring MVC](#spring-mvc)
- [Installation and Setup](#installation-and-setup)

### Project Structure
la structure de projet est l'organisation des packages et les fichiers dans l'application , contien 
les repertoires pour les controllers et les models et les services et config
la structure de projet aide a organiser le code pour facilite comprehention et navigation et maintenanace de projet 
### Dependency Injection (DI)

### Inversion of Control (IoC)

### Spring Beans
spring bean est un objet instancier et representent les composats de base de l'application , configuer par les conteneur Spring IOC

### Bean Scopes
beans socopes est le cycle de vie d'un bean , est comment et quand un bean inctancie dans l'application , par exemple un scope singleton cree un seul bean pour dans l'application , et scope prototype en cree un nouveau pour chaque demande.

### ApplicationContext
ApplicationContext est le conteneur principal pour manager les beans et leur cyvle de vie et aussi generer dependensy injection et les fichier de configuration

### Component Scanning and Stereotype Annotations
component scanning est une fonctionnalite de spring qui ditect les enregistre les beans bases sur des annotation de steriotype :
@Service : utilise pour les composants de couche service et contien logique metier
@Repository : utilise pour les objet de objet d'acces aux donnes qui interagir avec database
@Controller : utilise pour les classes qui generent les requete web dans spring MVC
@Autowird : permet utiliser dans dependency injection , spring injecte les beans necessaire dans les classes qui en ont besoin

### Spring Data JPA
Spring data JPA est un module de soring simplifier l'integration avec JPA et il facilite les operation CRUD et requette complexes avec database et evite ecrir code repetitif et fourni des interface comme JpaRepository

### Spring MVC
Spring est un framework spring qui permet construire des application web utilisan archetecture MVC, il structure les application web separant les couches d'access au donnees et la couche presentation et controller 

### Installation and Setup
