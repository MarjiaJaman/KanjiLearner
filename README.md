# Kanji Learner

A web app for learning JLPT N5 kanji. The home page lists the kanji as cards, 18 per page, and the search bar in the header filters them by kanji, English meaning or reading. Clicking a card opens a detail page with:

- an animated stroke-order diagram and a step-by-step breakdown of each stroke
- the English meanings, each with an example sentence
- every reading in hiragana, each with an example word and sentence

The app has 112 N5 kanji, starting with 日月火水木金土. The app header has a switcher for the JLPT levels. Only N5 is open; N4–N1 are greyed out until they are added.

## Tech stack

| Part     | Technology                                      |
| -------- | ----------------------------------------------- |
| Backend  | Spring Boot 4.1, Java 25, Spring Data JPA       |
| Database | MySQL 8.0                                       |
| Frontend | React 19, React Router 7, Vite 8, Axios         |
| Runtime  | Docker Compose                                  |

Stroke-order data comes from [KanjiVG](https://kanjivg.tagaini.net/) (CC BY-SA 3.0).

## Getting started

You need [Docker](https://www.docker.com/) with Docker Compose.

1. Create your environment file and set the passwords:

   ```sh
   cp .env.example .env
   ```

2. Start all services:

   ```sh
   docker compose up --build
   ```

3. Open the app at <http://localhost:5176>.

| Service  | Container        | URL / port                    |
| -------- | ---------------- | ----------------------------- |
| Frontend | `kanji-frontend` | http://localhost:5176         |
| Backend  | `kanji-backend`  | http://localhost:8080/api     |
| MySQL    | `kanji-mysql`    | `localhost:3309`              |

The frontend folder is mounted into its container, so edits to `frontend/src` reload in the browser. If a change doesn't show up, run `docker restart kanji-frontend`. Backend changes need a rebuild: `docker compose up --build backend`.

## Project structure

```
backend/
  src/main/java/com/kanji/backend/
    config/WebConfig.java        CORS for the frontend origins
    kanji/                       Entities, repositories, controller
  src/main/resources/
    application.properties
    data.sql                     Seed data for all kanji, meanings and readings
frontend/
  src/
    api/kanjiApi.js              API client (can use sample data offline)
    components/                  Layout, KanjiCard, StrokeOrder
    data/                        Levels, color palette, strokes.json
    pages/                       Kanji list (home) and kanji detail
    utils/readings.js            Katakana → hiragana and reading order
docker-compose.yml
```

## API

| Method | Path              | Returns                                                     |
| ------ | ----------------- | ----------------------------------------------------------- |
| GET    | `/api/kanji`      | All kanji, ordered by `displayOrder`                        |
| GET    | `/api/kanji/{id}` | One kanji with its `meanings`, `readings`, and the `previous` and `next` kanji, or 404 |

## Data

The database tables are created by Hibernate (`ddl-auto=update`). `data.sql` runs on every backend start and upserts three tables:

- **`kanji`**: the character, katakana reading (`onyomi`), hiragana reading (`kunyomi`), English meaning, stroke count, `display_order`, and an optional `main_reading`
- **`kanji_meaning`**: one row per meaning, with an example sentence, its reading and its translation
- **`kanji_reading`**: one row per reading, with an example word and sentence

Because the seed only inserts or updates rows, you can re-run it safely. Deleting a kanji from `data.sql` does not remove it from the database; delete the row in MySQL as well.

### Adding a kanji

1. Add a row to the `kanji` insert in `data.sql` with the next `display_order`.
2. Add its meaning rows and reading rows. The reading rows must follow the same order as the reading pills: `main_reading` first, then the hiragana readings, then the katakana readings, with duplicates removed.
3. Add its stroke paths to `frontend/src/data/strokes.json`, taken from the KanjiVG SVG for that character.
4. Rebuild the backend.

### Card reading

The list card shows `main_reading` if it is set. Otherwise it shows the hiragana reading, or the first katakana reading converted to hiragana. Set `main_reading` when the card should show a different reading, for example いち for 一 or かい for 会.

## Frontend scripts

Run these inside `frontend/`:

```sh
npm run dev      # start the Vite dev server
npm run build    # production build
npm run lint     # ESLint
```
