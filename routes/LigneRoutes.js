const express = require("express");
const router = express.Router();
const controller = require("../controllers/LigneController");
const verify = require("../middleware/auth");

router.get("/", verify(["admin"]), controller.getAllLigne);
router.get("/:id", verify(["admin"]), controller.getLigneById);
router.post("/", verify(["admin"]), controller.createLigne);
router.put("/:id", verify(["admin"]), controller.updateLigne);
router.delete("/:id", verify(["admin"]), controller.deleteLigne);

module.exports = router;
