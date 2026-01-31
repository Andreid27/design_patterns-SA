# Book Store Mobile App

A Flutter application for browsing and managing books, demonstrating role-based access control and modern UI design. Rebranded from "E-Mentor".

## Features

- **Role-Based Access**:
  - **Buyer**: Browse featured books, view catalog, and manage cart.
  - **Admin**: Dashboard to add, edit, and delete books.
- **Authentication**: Integrated with Keycloak via `flutter_appauth`.
- **Modern UI**: Indigo & Slate theme with a clean, card-based layout.

## Getting Started

### Prerequisites

- Flutter SDK
- Keycloak Server (for authentication)
- Backend API (Spring Boot) running on localhost

### Project Setup

1.  **Install dependencies:**

    ```bash
    flutter pub get
    ```

2.  **Configure Environment:**
    Copy `.env.example` to `.env` and configure your endpoints:

    ```bash
    cp .env.example .env
    ```

3.  **Run the App:**
    ```bash
    flutter run
    ```

### Icon Generation

This project uses `flutter_launcher_icons`. To regenerate the app icon:

```bash
dart run flutter_launcher_icons
```
