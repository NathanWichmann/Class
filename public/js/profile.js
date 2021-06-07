// this is the form handler for creating a new post with body and title 
const newFormHandler = async (event) => {
  event.preventDefault();

  const title = document.querySelector('#title').value.trim();
  const body = document.querySelector('#body').value.trim();
//  const comment = document.querySelector('#comment').value.trim();
  // this connects to the api/posts route 
  if (title && body) {
    const response = await fetch(`/api/posts`,  {
      method: 'POST',
      body: JSON.stringify({ title, body}),
      headers: {
        'Content-Type': 'application/json',

      },
    });
  
    if (response.ok) {
      document.location.replace('/profile');
    } else {
      alert('Failed to create post');
    }
  }
};
// this is the delete button handler and connects to the api/posts route 
const delButtonHandler = async (event) => {
  if (event.target.hasAttribute('data-id')) {
    const id = event.target.getAttribute('data-id');

    const response = await fetch(`/api/posts/${id}`, {
      method: 'DELETE',
    });
    //if response ok replace the page without the deleted item
    if (response.ok) {
      document.location.replace('/profile');
    } else {
      alert('Failed to delete post');
    }
  }
};

document
  .querySelector('.new-post-form')
  .addEventListener('submit', newFormHandler);

document
  .querySelector('.post-list')
  .addEventListener('click', delButtonHandler);
