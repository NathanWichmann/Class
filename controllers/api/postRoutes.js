const router = require('express').Router();
const { Post } = require('../../models');
const withAuth = require('../../utils/auth');

router.post('/', async (req, res) => {
  try {
    const newPost = await Post.create({
      ...req.body,
      user_id: req.session.user_id,
    });

    res.status(200).json(newPost);
  } catch (err) {
    res.status(400).json(err);
  }
});

router.post('/', async (req, res) => {
  try { 
    const postData = await Post.create({
    title: req.body.title,
    body: req.body.body,
    
  });
  // if the dish is successfully created, the new response will be returned as json
  res.status(200).json(postData)
  console.log(postData)
} catch (err) {
  res.status(400).json(err);
}
});

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

    res.status(200).json(posttData);
  } catch (err) {
    res.status(500).json(err);
  }
});

module.exports = router;
