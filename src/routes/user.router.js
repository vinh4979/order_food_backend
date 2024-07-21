import express from "express";
import {
  getLikesByUser,
  getUser,
  likeRestaurant,
  unlikeRestaurant,
} from "../controllers/user.controller.js";

const userRouter = express.Router();

userRouter.get("/get-user", getUser);
userRouter.post("/get-like-by-user/:user_id", getLikesByUser);
userRouter.post("/like-res/:user_id", likeRestaurant);
userRouter.post("/unlike-res/:user_id", unlikeRestaurant);

export default userRouter;
