const { exec } = require("child_process");
const express = require("express");
const app = express();
const PORT = 5007;

app.get("/api/data", (req, res) => {
  exec("python3 backend/app.py", (err, stdout, stderr) => {
    if (err) {
      return res.status(500).send(stderr);
    }
    res.send(stdout);
  });
});

app.listen(PORT, () => {
  console.log(`Node server running on port ${PORT}`);
});
