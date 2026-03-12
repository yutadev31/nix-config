# Git Commit Message Guidelines

## Purpose

This document defines the rules for writing Git commit messages in this project.
Clear and consistent commit messages make it easier to understand project history, review changes, and debug issues.

All commit messages **must be written in English**.

---

## Commit Message Format

```commitmessage
<type>: <summary>

<body>
```

### Example

```commitmessage
feat: add user registration API

Implement endpoint for user registration using email and password.
Includes validation and error handling.
```

---

## Rules

### 1. Use English

All commit messages must be written in English.

✅ Good

```commitmessage
fix: resolve login token error
```

❌ Bad

```commitmessage
ログインエラー修正
```

---

### 2. Write a Short Summary

The first line should describe the change clearly and briefly.

Recommended length:

* **within 50 characters**

Format:

```commitmessage
<type>: <summary>
```

Example:

```commitmessage
feat: add product search API
fix: correct pagination bug
docs: update setup instructions
```

---

### 3. Use a Commit Type

| Type     | Description                                     |
| -------- | ----------------------------------------------- |
| feat     | A new feature                                   |
| fix      | A bug fix                                       |
| docs     | Documentation changes                           |
| style    | Formatting changes (no code behavior changes)   |
| refactor | Code restructuring without changing behavior    |
| test     | Adding or modifying tests                       |
| chore    | Maintenance tasks (dependencies, config, build) |

Example:

```commitmessage
refactor: simplify authentication logic
```

---

### 4. Optional Body

Add a body when the change needs more explanation.

Structure:

```commitmessage
<type>: <summary>

<body>
```

Example:

```commitmessage
fix: prevent null pointer in order service

The order validation did not check for a null product ID.
Added validation to avoid runtime errors.
```

---

### 5. Reference Issues (Optional)

If the commit relates to an issue, include the issue number.

Example:

```commitmessage
fix: resolve payment processing error (#123)
```

---

## Examples

### Feature

```commitmessage
feat: add user profile endpoint
```

### Bug Fix

```commitmessage
fix: correct cart total calculation
```

### Refactoring

```commitmessage
refactor: extract validation logic into helper
```

### Documentation

```commitmessage
docs: update API usage examples
```

---

## Bad Commit Messages

Avoid vague commit messages.

❌ Bad examples

```commitmessage
fix
update
misc changes
some fixes
```

These messages make it difficult to understand the project history.

---

## Summary

1. Write commit messages in **English**
2. Follow the format

```commitmessage
type: summary
```

1. Keep summaries **clear and short**
2. Use the appropriate **commit type**
3. Add a **body** when more context is needed

Consistent commit messages make project history easier to read, review, and maintain.
