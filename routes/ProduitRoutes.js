const express = require("express");
const router = express.Router();
const controller = require("../controllers/ProduitController");
const verify = require("../middleware/auth");

router.get(
  "/",
  verify(["admin", "chef de ligne", "visiteur"]),
  controller.getAllProduit
);
router.get(
  "/:code",
  verify(["admin", "chef de ligne", "visiteur"]),
  controller.getProduitById
);
router.post("/", verify(["admin"]), controller.createProduit);
router.put("/:code", verify(["admin"]), controller.updateProduit);
router.delete("/:code", verify(["admin"]), controller.deleteProduit);

module.exports = router;
