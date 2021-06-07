const sequelize = require('../config/connection');
const { User } = require('../models');
const { Post } = require('../models');
const { Comment } = require('../models');
//this brings in the jsonData in the comment, post and user json data to be seeded 
const userData = require('./userData.json');
const postData = require('./postData.json');
const commentData = require('./commentData.json');

// create the connection to the user, post and comments and sends them to the mysql database to be created 
const seedDatabase = async () => {
  await sequelize.sync({ force: true });

  await User.bulkCreate(userData, {
    individualHooks: true,
    returning: true,
  });

  await Post.bulkCreate(postData, {
    returning: true,
  });

  await Comment.bulkCreate(commentData, {
    returning: true,
  });
process.exit(0);
};

seedDatabase();
