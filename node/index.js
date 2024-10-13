const express = require("express"); // Import express
const app = express(); // Initialize an express app
const port = 3000; // Define the port number

// Define a route for the root URL ("/")
app.get("/", (req, res) => {
  res.send("Hello World!"); // Send "Hello World" to the client
});

// Start the server
app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`);
});
