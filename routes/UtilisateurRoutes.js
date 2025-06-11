const express = require("express");
const router = express.Router();
const controller = require("../controllers/UtilisateurController");
const verify = require("../middleware/auth");

router.get("/", verify(["admin"]), controller.getAllUtilisateur);
router.get("/:id", verify(["admin"]), controller.getUtilisateurById);
router.post("/", verify(["admin"]), controller.createUtilisateur);
router.put("/:id", verify(["admin"]), controller.updateUtilisateur);
router.delete("/:id", verify(["admin"]), controller.deleteUtilisateur);

module.exports = router;
