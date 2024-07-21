import { Sequelize } from "sequelize";

const sequelize = new Sequelize("db_food", "root", "1234", {
  host: "localhost",
  port: "3306",
  dialect: "mysql",
});

export default sequelize;

// check connect database
try {
  await sequelize.authenticate();
  console.log("thanh cong");
} catch {
  console.log("that bai");
}
