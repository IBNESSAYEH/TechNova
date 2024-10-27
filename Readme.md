# Spring Framework Core Concepts

This documentation covers the fundamental concepts of Spring Framework, including Inversion of Control (IoC), Dependency Injection (DI), and various Spring components.

## Table of Contents
- [Inversion of Control (IoC) and Dependency Injection (DI)](#inversion-of-control-ioc-and-dependency-injection-di)
    - [IoC Explained](#ioc-explained)
    - [Types of Dependency Injection](#types-of-dependency-injection)
    - [Benefits](#benefits)
- [Spring Beans](#spring-beans)
    - [Bean Scopes](#bean-scopes)
- [Application Context](#application-context)
- [Component Scanning](#component-scanning)
- [Spring Data JPA](#spring-data-jpa)
- [Spring MVC](#spring-mvc)

## Inversion of Control (IoC) and Dependency Injection (DI)

### IoC Explained
IoC is a design principle where the control of object creation and management is inverted from the application code to a container. Instead of creating objects directly with `new` operators, the container handles object lifecycle management.

**Traditional Approach:**
```java
Service service = new Service();
Controller controller = new Controller(service);
```

**IoC Approach:**
```java
@Controller
public class MyController {
    @Autowired
    private Service service;
}
```

### Types of Dependency Injection

1. **Constructor Injection**
```java
public class Controller {
    private Service service;

    public Controller(Service service) {
        this.service = service;
    }
}
```

2. **Setter Injection**
```java
public class Controller {
    private Service service;

    public void setService(Service service) {
        this.service = service;
    }
}
```

3. **Field Injection**
```java
public class Controller {
    @Autowired
    private Service service;
}
```

### Benefits
- **Modularité**: Easy component replacement without changing dependent code
- **Testability**: Simple mock injection for isolated testing
- **Maintenance**: Explicit dependencies managed by the container

## Spring Beans

Spring Beans are objects managed by the Spring IoC container. They can be defined using XML configuration or annotations.

**XML Configuration Example:**
```xml
<bean id="myBean" class="com.example.MyClass"/>
```

### Bean Scopes
- **Singleton**: Single instance per Spring container (default)
- **Prototype**: New instance for each request
- **Request**: Web-specific scope per HTTP request
- **Session**: Web-specific scope per HTTP session
- **Global Session**: Web-specific scope per global session

## Application Context

ApplicationContext is Spring's main IoC container that manages beans, configurations, and lifecycles.

```java
ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
MyBean myBean = context.getBean(MyBean.class);
```

## Component Scanning

Component scanning automatically detects Spring-managed components using stereotype annotations.

```java
@Configuration
@ComponentScan(basePackages = "com.example")
public class AppConfig {
}
```

Common stereotype annotations:
- `@Component`
- `@Service`
- `@Repository`
- `@Controller`

## Spring Data JPA

Spring Data JPA simplifies database operations by providing repository interfaces with built-in CRUD operations.

```java
public interface UserRepository extends JpaRepository<User, Long> {
    List<User> findByLastName(String lastName);
}
```

## Spring MVC

Spring MVC implements the Model-View-Controller pattern for web applications.

**Controller Example:**
```java
@Controller
public class HomeController {
    @RequestMapping("/home")
    public String home() {
        return "home";
    }
}
```

---

For more detailed information, please refer to the official Spring documentation:
- [Spring Framework Documentation](https://docs.spring.io/spring-framework/reference/)
- [Spring Data JPA Documentation](https://docs.spring.io/spring-data/jpa/docs/current/reference/html/)
- [Spring MVC Documentation](https://docs.spring.io/spring-framework/reference/web/webmvc.html)