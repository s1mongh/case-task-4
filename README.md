# Кейс-задача № 4

### Анализ существующих информационных систем на основе архитектуры веб-приложений

#### 1. Введение в веб-архитектуру

Веб-приложения – это приложения, которые работают на веб-сервере и доступны через веб-браузеры. Такие приложения строятся по архитектуре клиент-сервер, где клиент (браузер) посылает запросы на сервер, а сервер обрабатывает их и возвращает данные для отображения.

#### 2. Примеры информационных систем на основе веб-архитектуры

1. **ERP-системы (Enterprise Resource Planning)**:
   - Примеры: SAP, Oracle ERP, Microsoft Dynamics.
   - Архитектура: Веб-серверы обрабатывают запросы пользователей, интегрируются с базами данных для управления ресурсами предприятия.
   - Возможности: Управление бизнес-процессами, интеграция различных модулей (финансы, производство, логистика).

2. **CRM-системы (Customer Relationship Management)**:
   - Примеры: Salesforce, HubSpot, Microsoft Dynamics CRM.
   - Архитектура: Веб-приложения с интерфейсом для управления отношениями с клиентами, интеграция с внешними системами через API.
   - Возможности: Управление контактами, продажами, маркетингом, аналитикой.

3. **Системы управления контентом (CMS)**:
   - Примеры: WordPress, Joomla, Drupal.
   - Архитектура: Модульная структура с возможностью подключения плагинов и тем для расширения функционала.
   - Возможности: Управление веб-контентом, поддержка многопользовательского доступа, возможность создания и редактирования контента без знания программирования.

#### 3. Оценка и возможности использования веб-приложений

- **Масштабируемость**: Веб-приложения легко масштабируются благодаря распределению нагрузки между серверами.
- **Удобство использования**: Доступность через браузеры делает веб-приложения доступными с любого устройства.
- **Интеграция**: Современные веб-приложения легко интегрируются с другими системами через API и микросервисы.

#### 4. Варианты использования веб-приложений в компании

- **Внедрение ERP или CRM системы**: Эти системы позволят компании автоматизировать бизнес-процессы, улучшить управление ресурсами и взаимодействие с клиентами.
- **Создание корпоративного портала**: С использованием CMS можно создать внутренний портал для обмена информацией и взаимодействия сотрудников.
- **Аналитические платформы**: Использование BI-систем (например, Tableau или Power BI) для анализа данных компании.

### Разработка веб-приложения на Delphi 10.2 и MS SQL Server

#### 1. Постановка задачи

Создание веб-приложения для управления библиотечным фондом. Приложение позволит пользователям просматривать доступные книги, резервировать их, а администраторы смогут добавлять и удалять книги из базы данных.

#### 2. Архитектура и инструменты

- **Delphi 10.2**: Используется для создания серверной части приложения.
- **MS SQL Server**: Хранение данных о книгах, пользователях и заказах.
- **MS Internet Information Server (IIS)**: Используется для хостинга веб-приложения.

#### 3. Создание базы данных в MS SQL Server

```sql
CREATE DATABASE LibraryDB;
USE LibraryDB;

CREATE TABLE Books (
    book_id INT PRIMARY KEY IDENTITY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL,
    published_year INT,
    available BIT DEFAULT 1
);

CREATE TABLE Users (
    user_id INT PRIMARY KEY IDENTITY,
    username VARCHAR(255) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL
);

CREATE TABLE Reservations (
    reservation_id INT PRIMARY KEY IDENTITY,
    book_id INT FOREIGN KEY REFERENCES Books(book_id),
    user_id INT FOREIGN KEY REFERENCES Users(user_id),
    reservation_date DATE NOT NULL,
    status VARCHAR(50) DEFAULT 'Pending'
);
```

#### 4. Разработка приложения в Delphi 10.2

- Создаем интерфейс пользователя для просмотра, поиска и бронирования книг.
- Реализуем админскую панель для управления каталогом книг.
- Используем компоненты для подключения к базе данных MS SQL Server.

### Итоговый результат

Готовое веб-приложение с поддержкой CRUD операций для работы с библиотечным фондом. 
TODO: Приложение будет использовать архитектуру клиент-сервер, обеспечивая удобный доступ для пользователей через веб-браузер для просмотра книг.

### Заключение

Выполненный анализ и разработка веб-приложения демонстрируют использование современных подходов к разработке и управлению данными с помощью веб-технологий. Эти методы могут быть успешно применены в любой компании для автоматизации и улучшения бизнес-процессов.