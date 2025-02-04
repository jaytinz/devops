const express = require("express");

const app = express();
const PORT = process.env.PORT || 3000;

// Middleware to parse JSON requests
app.use(express.json());

// Default Route
app.get("/", (req, res) => {
    res.send("🚀 Hello, Dockerized World!");
});

// Start Server
app.listen(PORT, () => {
    console.log(`✅ Server running on http://localhost:${PORT}`);
});
