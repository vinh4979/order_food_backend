import express from "express";
import {
  getLikesByRestaurant,
  getRateByRestaurant,
  rate,
} from "../controllers/restaurant.controller.js";
import { getLikesByUser } from "../controllers/user.controller.js";

const ResRouter = express.Router();

ResRouter.post("/get-like-by-restaurant/:res_id", getLikesByRestaurant);
ResRouter.post("/rate-restaurant/:res_id", rate);
ResRouter.get("/get-rate-by-user/:user_id", getLikesByUser);
ResRouter.get("/get-rate-by-restaurant/:res_id", getRateByRestaurant);

export default ResRouter;
