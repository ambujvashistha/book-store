require("dotenv").config();
const express = require("express");
const { PrismaClient } = require("@prisma/client");
const prisma = new PrismaClient();

const app = express();

app.use(express.json());

app.get("/", (req, res) => {
  res.send("OK");
});

app.post("/api/v1/genres", async (req, res) => {
  const body = req.body;
  console.log(body);

  const new_genre = await prisma.genre.create({
    data: body,
  });
  res.status(201).json(new_genre);
});

app.get("/api/v1/genres", async (req, res) => {
  const genre = await prisma.genre.findMany();
  console.log("genre hi kehde");
  res.status(200).json(genre);
});

app.patch("/api/v1/genres/:genID", async (req, res) => {
  const genID = req.params.genID;
  const new_data = req.body;
  const updated = await prisma.genre.update({
    where: { id: Number(genID) },
    data: new_data,
  });

  res.status(200).json(updated);
});

app.post("/api/v1/books", async (req, res) => {
  const body = req.body;
  console.log(body);
  const result = await prisma.book.create({
    data: {
      title: body.title,
      summary: body.summary,
      isbn: body.isbn,
      url: body.url,
      author: {
        connect: {
          id: body.authorId,
        },
      },
      genres: {
        create: body.genres.map((genreId) => ({
          genre: {
            connect: {
              id: genreId,
            },
          },
        })),
      },
    },
  });
  return res.status(201).json(result);
});

app.listen(3001, () => {
  console.log("Server started on port 3001");
});
