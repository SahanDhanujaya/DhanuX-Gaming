<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Sign-In & Sign-Up</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">
  <style>
    body {
      font-family: 'Roboto', sans-serif;
      height: 100vh;
      margin: 0;
      display: flex;
      justify-content: center;
      align-items: center;
      background: #333333;
    }

    .auth-container {
      background: #fff;
      border-radius: 15px;
      width: 900px;
      max-width: 100%;
      overflow: hidden;
      display: flex;
      box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
    }

    .form-container {
      flex: 1;
      padding: 50px;
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      position: relative;
      transition: all 0.6s ease-in-out;
    }

    .form-container.sign-up {
      transform: translateX(100%);
      opacity: 0;
      z-index: 1;
    }

    .form-container.active {
      transform: translateX(0);
      opacity: 1;
      z-index: 2;
    }

    .form-container h2 {
      margin-bottom: 20px;
      font-size: 2rem;
      color: #333;
    }

    .form-container input {
      width: 100%;
      padding: 15px;
      margin: 10px 0;
      border: 1px solid #ddd;
      border-radius: 5px;
      font-size: 1rem;
    }

    .form-container button {
      width: 100%;
      padding: 12px;
      margin-top: 15px;
      font-size: 1rem;
      font-weight: bold;
      background: #6e8efb;
      color: #fff;
      border: none;
      border-radius: 5px;
      transition: background 0.3s ease-in-out;
    }

    .form-container button:hover {
      background: #5a78d8;
    }

    .overlay-container {
      flex: 1;
      background: #1A1A1A;
      color: #fff;
      display: flex;
      justify-content: center;
      align-items: center;
      flex-direction: column;
      padding: 50px;
      position: relative;
      transition: all 0.6s ease-in-out;
    }

    .overlay-container h1 {
      font-size: 2.5rem;
      margin-bottom: 20px;
    }

    .overlay-container p {
      font-size: 1rem;
      margin-bottom: 20px;
      text-align: center;
    }

    .overlay-container button {
      background: #fff;
      color: #6e8efb;
      padding: 12px 20px;
      font-size: 1rem;
      font-weight: bold;
      border: none;
      border-radius: 5px;
      transition: background 0.3s ease-in-out, color 0.3s ease-in-out;
    }

    .overlay-container button:hover {
      background: #eaeaea;
      color: #5a78d8;
    }

    .auth-container.sign-up-mode .form-container.sign-in {
      transform: translateX(-100%);
      opacity: 0;
    }

    .auth-container.sign-up-mode .form-container.sign-up {
      transform: translateX(0);
      opacity: 1;
    }

    .auth-container.sign-up-mode .overlay-container {
      transform: translateX(-100%);
    }

    @media (max-width: 768px) {
      .auth-container {
        flex-direction: column;
      }

      .form-container, .overlay-container {
        width: 100%;
        transform: translateX(0);
        opacity: 1;
      }

      .auth-container.sign-up-mode .form-container {
        transform: translateX(0);
        opacity: 1;
      }
    }
  </style>
</head>
<body>
<div class="auth-container" id="authContainer">
  <!-- Sign In Form -->
  <div class="form-container sign-in active">
    <h2>Sign In</h2>
    <form action="admin" method="GET">
      <input type="email" placeholder="Email" required>
      <input type="password" placeholder="Password" required>
      <button type="submit">Sign In</button>
    </form>
  </div>

  <!-- Sign Up Form -->
  <div class="form-container sign-up">
    <h2>Sign Up</h2>
    <form>
      <input type="text" placeholder="Name" required>
      <input type="email" placeholder="Email" required>
      <input type="password" placeholder="Password" required>
      <button type="submit">Sign Up</button>
    </form>
  </div>

  <!-- Overlay -->
  <div class="overlay-container">
    <h1>Welcome!</h1>
    <p>Join us by signing up or log in to continue.</p>
    <button id="toggleAuth">Switch</button>
  </div>
</div>

<script>
  const authContainer = document.getElementById('authContainer');
  const toggleAuthButton = document.getElementById('toggleAuth');

  toggleAuthButton.addEventListener('click', () => {
    authContainer.classList.toggle('sign-up-mode');
  });
</script>
</body>
</html>
