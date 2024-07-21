import express from "express";
import cors from "cors";
import rootRouter from "./routes/root.route.js";

const app = express();
const port = 8080;
app.use(rootRouter);
app.use(cors());

app.listen(port, () => console.log(`URL: http://localhost:${port}`));
