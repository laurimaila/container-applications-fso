const express = require('express');
const redis = require('redis')
const router = express.Router();

const { getAsync } = require("../redis");

router.get("/", async (req, res) => {
    const todoCounter = await getAsync("added_todos") || 0
    res.status(200).json({ added_todos: Number(todoCounter) })
})

module.exports = router;
