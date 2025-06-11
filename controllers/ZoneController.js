const Zone = require("../models/Zone"); // Sequelize model

// ✅ GET all zones
exports.getAllZones = async (req, res) => {
  try {
    const zones = await Zone.findAll();
    res.json(zones);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

// ✅ GET zone by ID
exports.getZoneById = async (req, res) => {
  try {
    const zone = await Zone.findByPk(req.params.id);
    if (!zone) return res.status(404).json({ message: "Zone not found" });
    res.json(zone);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

// ✅ POST create new zone
exports.createZone = async (req, res) => {
  try {
    const { id, nom } = req.body;
    await Zone.create({ id, nom });
    res.status(201).json({ message: "Zone created successfully" });
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

// ✅ PUT update zone
exports.updateZone = async (req, res) => {
  try {
    const { nom } = req.body;
    const result = await Zone.update({ nom }, { where: { id: req.params.id } });
    res.json({ message: "Zone updated", result });
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

// ✅ DELETE zone
exports.deleteZone = async (req, res) => {
  try {
    await Zone.destroy({ where: { id: req.params.id } });
    res.json({ message: "Zone deleted" });
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};
