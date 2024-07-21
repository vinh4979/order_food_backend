import sequelize from "../models/connec.jst";
import initModels from "../models/init-models.js";

const model = initModels(sequelize);

const getLikesByRestaurant = async (req, res) => {
  try {
    const { id } = req.params;

    const likes = await model.rate_res.findAll({
      where: { res_id: id },
      include: User,
    });

    responseData(likes, "get like by restaurent success", 200, res);
  } catch (error) {
    responseData(likes, "error server!", 500, res);
  }
};

const rate = async (req, res) => {
  try {
    const { user_id, res_id, amount, date_rate } = req.body;

    const rate = await model.rate_res.create({
      user_id,
      res_id,
      amount,
      date_rate: new Date(),
    });
    responseData(likes, "rate successfully", 200, res);
  } catch (error) {
    responseData(likes, "error server!", 500, res);
  }
};

const getRateByRestaurant = async (req, res) => {
  try {
    const { id } = req.params;

    const reviews = await Review.findAll({
      where: { res_id: id },
      include: User,
    });

    responseData(likes, " get rate successfully", 200, res);
  } catch (error) {
    responseData(likes, "error server!", 500, res);
  }
};

const getRateByUser = async (req, res) => {
  try {
    const { id } = req.params;

    const reviews = await Review.findAll({
      where: { user_id: id },
      include: Restaurant,
    });

    responseData(likes, " get rate successfully", 200, res);
  } catch (error) {
    responseData(likes, "error server!", 500, res);
  }
};

export { getLikesByRestaurant, rate, getRateByRestaurant, getRateByUser };
