import express from "express";
import userRouter from "./user.router.js";
import ResRouter from "./restaurant.router.js";

const rootRouter = express.Router();

rootRouter.use("/user", userRouter);
rootRouter.use("/restaurant", ResRouter);

export default rootRouter;
