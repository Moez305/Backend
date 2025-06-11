
const { Realisation } = require('../models');

exports.getAllRealisation = async (req, res) => {
  try {
    const result = await Realisation.findAll();
    res.json(result);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

exports.getRealisationById = async (req, res) => {
  try {
    const item = await Realisation.findByPk(req.params.id);
    if (!item) return res.status(404).json({ message: 'Realisation not found' });
    res.json(item);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

exports.createRealisation = async (req, res) => {
  try {
    const newItem = await Realisation.create(req.body);
    res.status(201).json(newItem);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

exports.updateRealisation = async (req, res) => {
  try {
    const updated = await Realisation.update(req.body, { where: { id: req.params.id } });
    res.json({ message: 'Realisation updated', result: updated });
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

exports.deleteRealisation = async (req, res) => {
  try {
    await Realisation.destroy({ where: { id: req.params.id } });
    res.json({ message: 'Realisation deleted' });
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};
