
const { Produit } = require('../models');

exports.getAllProduit = async (req, res) => {
  try {
    const result = await Produit.findAll();
    res.json(result);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

exports.getProduitById = async (req, res) => {
  try {
    const item = await Produit.findByPk(req.params.id);
    if (!item) return res.status(404).json({ message: 'Produit not found' });
    res.json(item);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

exports.createProduit = async (req, res) => {
  try {
    const newItem = await Produit.create(req.body);
    res.status(201).json(newItem);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

exports.updateProduit = async (req, res) => {
  try {
    const updated = await Produit.update(req.body, { where: { id: req.params.id } });
    res.json({ message: 'Produit updated', result: updated });
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

exports.deleteProduit = async (req, res) => {
  try {
    await Produit.destroy({ where: { id: req.params.id } });
    res.json({ message: 'Produit deleted' });
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};
