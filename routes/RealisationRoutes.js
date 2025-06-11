const express = require("express");
const router = express.Router();
const controller = require("../controllers/RealisationController");
const verify = require("../middleware/auth");

router.get(
  "/",
  verify(["admin", "chef de ligne"]),
  controller.getAllRealisation
);
router.get(
  "/:id",
  verify(["admin", "chef de ligne"]),
  controller.getRealisationById
);
router.post(
  "/",
  verify(["admin", "chef de ligne"]),
  controller.createRealisation
);
router.put(
  "/:id",
  verify(["admin", "chef de ligne"]),
  controller.updateRealisation
);
router.delete("/:id", verify(["admin"]), controller.deleteRealisation);

module.exports = router;
