export default {
  database: process.env.DB_NAME,
  port: process.env.DB_PORT,
  password: process.env.DB_PASS,
  host: process.env.DB_HOST,
  root: process.env.DB_ROOT,
  dialect: process.env.DB_DIALECT,
};

console.log(process.env);
