//this requires the express router to connect the files
const router = require('express').Router();
//this requires the userRoutes 
const userRoutes = require('./userRoutes');
// this requires the postRoutes 
const postRoutes = require('./postRoutes');
//this requires the commentroutes
const commentRoutes = require('./commentRoutes');

//creates the users routes
router.use('/users', userRoutes);
//creates the posts routes 
router.use('/posts', postRoutes);
//creates the comments routes 
router.use('/comments', commentRoutes);

// exports the maodule through router 
module.exports = router;
