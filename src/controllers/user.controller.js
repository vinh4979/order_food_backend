import sequelize from "../models/connect.js";
import initModels from "../models/init-models.js";

const model = initModels(sequelize);

const getUser = async (req, res) => {
  let data = await model.users.findAll();
  console.log(data);
  res.send(data);
};

// handle like restaurant
const likeRestaurant = async (req, res) => {
  try {
    const { user_id, res_id } = req.body;

    // Kiểm tra nếu đã like trước đó
    const existingLike = await model.like_res.findOne({
      where: { user_id, res_id },
    });
    if (existingLike) {
      return responseData(likes, `restaurant is liked by ${user_id}`, 200, res);
    }

    const like = await LikeRes.create({
      user_id,
      res_id,
      date_like: new Date(),
    });
    responseData(likes, "like successfully", 200, res);
  } catch (error) {
    responseData(likes, "error server!", 500, res);
  }
};

// handle unlike restaurant
const unlikeRestaurant = async (req, res) => {
  try {
    const { user_id, res_id } = req.body;

    const existingLike = await LikeRes.findOne({ where: { user_id, res_id } });
    if (!existingLike) {
      return responseData(
        likes,
        `restaurant is not liked by ${user_id}`,
        200,
        res
      );
    }

    await existingLike.destroy();
    responseData(likes, "unlike successfully", 200, res);
  } catch (error) {
    responseData(likes, "error server!", 500, res);
  }
};

const getLikesByUser = async (req, res) => {
  try {
    const { id } = req.params;

    const likes = await model.like_res.findAll({
      where: { user_id: id },
      include: Restaurant,
    });
    console.log(likes);

    responseData(likes, "get like by user successfully", 200, res);
  } catch (error) {
    responseData(likes, "error server!", 500, res);
  }
};

export { getUser, getLikesByUser, likeRestaurant, unlikeRestaurant };
