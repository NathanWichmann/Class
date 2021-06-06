//this brings in the express router
const router = require('express').Router();
//this brings in the model Post
const { Post } = require('../../models');
const withAuth = require('../../utils/auth');

//this creates the user_id req.session
router.post('/', async (req, res) => {
  try {
    const newPost = await Post.create({
      ...req.body,
      user_id: req.session.user_id,
    });
    // console.log(newPost)
    res.status(200).json(newPost);
  } catch (err) {
    res.status(400).json(err);
  }
});


//this takes all the input data from the user in req.body and creates an array
router.post('/', async (req, res) => {
  try {
    const postData = await Post.create({
      title: req.body.title,
      body: req.body.body
    });

    // if the post is successfully created, the new response will be returned as json
    res.status(200).json(postData);
    // console.log(postData)
  } catch (err) {
    res.status(400).json(err);
  }
});
//this deletes the post by Id and user_id in the req.sessions portion
router.delete('/:id', async (req, res) => {
  try {
    const postData = await Post.destroy({
      where: {
        id: req.params.id,
        user_id: req.session.user_id,
      },
    });
    if (!postData) {
      res.status(404).json({ message: 'No project found with this id!' });
      return;
    }

    res.status(200).json(postData);
  } catch (err) {
    res.status(500).json(err);
  }
});

module.exports = router;
