const { Planification } = require("../models");

exports.getAllPlanification = async (req, res) => {
  try {
    const result = await Planification.findAll();
    res.json(result);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

exports.getPlanificationById = async (req, res) => {
  try {
    const item = await Planification.findByPk(req.params.id);
    if (!item)
      return res.status(404).json({ message: "Planification not found" });
    res.json(item);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

exports.createPlanification = async (req, res) => {
  try {
    const newItem = await Planification.create(req.body);
    res.status(201).json(newItem);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

exports.updatePlanification = async (req, res) => {
  try {
    const updated = await Planification.update(req.body, {
      where: { id: req.params.id },
    });
    res.json({ message: "Planification updated", result: updated });
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

exports.deletePlanification = async (req, res) => {
  try {
    await Planification.destroy({ where: { id: req.params.id } });
    res.json({ message: "Planification deleted" });
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};
exports.getPlanificationsByLigne = async (req, res) => {
  try {
    const result = await Planification.findAll({
      where: { ligne_id: req.params.ligne_id },
    });
    res.json(result);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};
exports.markAsFinished = async (req, res) => {
  try {
    await Planification.update(
      { statut: "terminé" },
      { where: { id: req.params.id } }
    );
    res.json({ message: "Statut mis à jour en terminé ✅" });
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};
