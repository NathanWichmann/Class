// query select our edit btn
//attach an eventlistener

//grab value from input title
//grab value from textarea body

//fetch caall PUT method
//api/post/ID NUMBER HERE
const editFormHandler = async (event) => {
    event.preventDefault();
  
    const postId = document.querySelector('input[name="post-id"]').value;
    const title = document.querySelector('input[name="postTitle"]').value;
    const body = document.querySelector('textarea[name="body"]').value;

  //  const comment = document.querySelector('#comment').value.trim();
  
    if (body) {
      const response = await fetch(`/api/posts/:id`,  {
        method: 'PUT',
        body: JSON.stringify({ postId, title, body}),
        headers: {
          'Content-Type': 'application/json',
  
        },
      });
    
      if (response.ok) {
        document.location.reload();
      } else {
        alert('Failed to edit post');
      }
    }
  };


  document.querySelector('#editPost').addEventListener('submit', editFormHandler);