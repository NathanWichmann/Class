const commentFormHandler = async (event) => {
    event.preventDefault();
  
    const postId = document.querySelector('input[name="postId"]').value;
    const body = document.querySelector('textarea[name="commentBody"]').value;
  //  const comment = document.querySelector('#comment').value.trim();
  
    if (body) {
      const response = await fetch(`/api/comments`,  {
        method: 'POST',
        body: JSON.stringify({ postId, body}),
        headers: {
          'Content-Type': 'application/json',
  
        },
      });
    
      if (response.ok) {
        document.location.reload();
      } else {
        alert('Failed to create post');
      }
    }
  };


  document.querySelector('#newComment').addEventListener('submit', commentFormHandler);
  


