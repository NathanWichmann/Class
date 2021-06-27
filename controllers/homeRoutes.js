// connects all the files 
const router = require('express').Router();
//brings in the Post, User and Comment models 
const { Post, User, Comment } = require('../models');
const withAuth = require('../utils/auth');

//brings all the posts and comments together for all users dashboard page 
router.get('/', async (req, res) => {
  try {
    // Get all posts and join the user data 
    const postData = await Post.findAll({
      include: [
        {
          model: User,
          attributes: ['name'],
        },
        {
          model: Comment,
          attributes: ['body'],
        },
      ],
    });
    

    // Serialize data so the template can read it
    const posts = postData.map((post) => post.get({ plain: true }));
     console.log(posts[0].comments)
    // Pass serialized data and session flag into template
    res.render('homepage', { 
      posts,
      logged_in: req.session.logged_in 
    });
  } catch (err) {
    res.status(500).json(err);
  }
});


// gets all posts by id 
router.get('/post/:id', withAuth, async (req, res) => {

  try {
    const postData = await Post.findByPk(req.params.id, {
      include: [
        User,
        {
          model: Comment,
          include: [User],
        },
      ],
    });

    const post = postData.get({ plain: true });
console.log('post', post);

    res.render('singlepost', {
     post,
      logged_in: req.session.logged_in
    });
  } catch (err) {
    res.status(500).json(err);
  }
});

// Use withAuth middleware to prevent access to route
router.get('/profile', withAuth, async (req, res) => {
  try {
    // Find the logged in user based on the session ID
    const userData = await User.findByPk(req.session.user_id, {
      attributes: { exclude: ['password'] },
      include: [{ model: Post }],
    });

    const user = userData.get({ plain: true });

    res.render('profile', {
      ...user,
      logged_in: true
    });
  } catch (err) {
    res.status(500).json(err);
  }
});


// this is the edit by id route 
router.get('/profile/edit/:id', withAuth, async (req, res)=>{
  Post.findByPk(req.params.id)
  .then( (postData) => {
    
    const post = postData.get({ plain: true })
    res.render('edit', {
      post
    })
  })

})

// this is the login route 
router.get('/login', (req, res) => {
  // If the user is already logged in, redirect the request to another route
  if (req.session.logged_in) {
    res.redirect('/profile');
    return;
  }

  res.render('login');
});

module.exports = router;
