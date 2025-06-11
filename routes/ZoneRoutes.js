const express = require("express");
const router = express.Router();
const controller = require("../controllers/ZoneController");
const verify = require("../middleware/auth");

router.get(
  "/",
  verify(["admin", "chef de ligne", "visiteur"]),
  controller.getAllZones
);
router.get(
  "/:id",
  verify(["admin", "chef de ligne", "visiteur"]),
  controller.getZoneById
);
router.post("/", verify(["admin"]), controller.createZone);
router.put("/:id", verify(["admin"]), controller.updateZone);
router.delete("/:id", verify(["admin"]), controller.deleteZone);

module.exports = router;
