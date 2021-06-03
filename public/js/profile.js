const newFormHandler = async (event) => {
  event.preventDefault();

  const title = document.querySelector('#title').value.trim();
  const body = document.querySelector('#body').value.trim();
  const comment = document.querySelector('#comment').value.trim();

  if (title && body && comment) {
    const response = await fetch(`/api/posts`,  {
      method: 'POST',
      body: JSON.stringify({ title, body, comment }),
      headers: {
        'Content-Type': 'application/json',

      },
    });
    console.log(comment)
    if (response.ok) {
      document.location.replace('/profile');
    } else {
      alert('Failed to create post');
    }
  }
};

const delButtonHandler = async (event) => {
  if (event.target.hasAttribute('data-id')) {
    const id = event.target.getAttribute('data-id');

    const response = await fetch(`/api/posts/${id}`, {
      method: 'DELETE',
    });

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
