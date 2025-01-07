# Zamazon Web Service

Welcome to Zamazon Web Service! This service is designed to consolidate contact information across multiple purchases for a unique user experience.

## Table of Contents
1. [Requirements](#requirements)
2. [Technologies Used](#technologies-used)
3. [Setup](#setup)
4. [Usage](#usage)
5. [Testing](#testing)
6. [Docker Compose Configuration](#docker-compose-configuration)

---

## Requirements

Key requirements include:

- Handling primary and secondary contacts.
- Creating new entries for distinct individuals.
- A covert mechanism for creating "secondary" contact entries.
- Seamless updates with each incoming request.

---

## Technologies Used

- Node.js
- Express.js
- Sequelize (PostgreSQL)
- Jest (for testing)
- Docker & Docker Compose

---

## Setup

### 1. Clone the Repository:

```bash
git clone https://github.com/dharshanmadhavan/Zamazon_Web_Service.git


### 2. Install dependencies:

```bash
npm install

### 3.Create the .env file in the root directory with the following content:

```bash
DATABASE_URL=postgres://postgres:Anmol@8907@<public ip address>:5432/Zamazondb

### 4.Start Docker Compose to build and run the containers:

```bash
docker-compose up --build

### 5.Run the migrations to set up the database:

```bash
docker-compose exec app npx sequelize-cli db:migrate

### 6.Send a request to the API (e.g., using curl):

```bash
curl -X POST http://localhost:3000/identify -H "Content-Type: application/json" -d '{"email": "user@example.com", "phoneNumber": "1234567890"}'

### 7.To run tests (ensure the app is running before):

```bash
docker-compose exec app npm test
