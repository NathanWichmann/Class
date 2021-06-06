const router = require('express').Router();
const { Comment } = require('../../models');

router.post('/', (req, res) => {
  Comment.create({...req.body, user_id: req.session.user_id})
  .then((newComment) =>{ 
    // console.log(dbcommentData)
    // convert the data to smething handlebars can use (serialize)
   // var comments = dbcommentData.map(comment => comment.get({plain:true}))
    // render the data in a handlebars template

    console.log(newComment)
    res.json(newComment)
   // console.log(comments)
    
   })
  .catch(err => {
    console.log(err);
    res.status(500).json(err);
  });
});




  module.exports = router;