const express = require("express");
const router = express.Router();
const controller = require("../controllers/PlanificationController");
const verify = require("../middleware/auth"); // 👈 import the middleware

// Only Admin & Chef de ligne can GET
router.get(
  "/",
  verify(["admin", "chef de ligne"]),
  controller.getAllPlanification
);
router.get(
  "/ligne/:ligne_id",
  verify(["admin", "chef de ligne"]),
  controller.getPlanificationsByLigne
);

// Only Admin can POST / PUT / DELETE / PATCH
router.post("/", verify(["admin"]), controller.createPlanification);
router.put("/:id", verify(["admin"]), controller.updatePlanification);
router.patch("/:id/fin", verify(["admin"]), controller.markAsFinished);
router.delete("/:id", verify(["admin"]), controller.deletePlanification);

module.exports = router;
