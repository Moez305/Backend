
const { Ligne } = require('../models');

exports.getAllLigne = async (req, res) => {
  try {
    const result = await Ligne.findAll();
    res.json(result);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

exports.getLigneById = async (req, res) => {
  try {
    const item = await Ligne.findByPk(req.params.id);
    if (!item) return res.status(404).json({ message: 'Ligne not found' });
    res.json(item);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

exports.createLigne = async (req, res) => {
  try {
    const newItem = await Ligne.create(req.body);
    res.status(201).json(newItem);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

exports.updateLigne = async (req, res) => {
  try {
    const updated = await Ligne.update(req.body, { where: { id: req.params.id } });
    res.json({ message: 'Ligne updated', result: updated });
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

exports.deleteLigne = async (req, res) => {
  try {
    await Ligne.destroy({ where: { id: req.params.id } });
    res.json({ message: 'Ligne deleted' });
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};
