
const { Utilisateur } = require('../models');

exports.getAllUtilisateur = async (req, res) => {
  try {
    const result = await Utilisateur.findAll();
    res.json(result);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

exports.getUtilisateurById = async (req, res) => {
  try {
    const item = await Utilisateur.findByPk(req.params.id);
    if (!item) return res.status(404).json({ message: 'Utilisateur not found' });
    res.json(item);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

exports.createUtilisateur = async (req, res) => {
  try {
    const newItem = await Utilisateur.create(req.body);
    res.status(201).json(newItem);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

exports.updateUtilisateur = async (req, res) => {
  try {
    const updated = await Utilisateur.update(req.body, { where: { id: req.params.id } });
    res.json({ message: 'Utilisateur updated', result: updated });
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

exports.deleteUtilisateur = async (req, res) => {
  try {
    await Utilisateur.destroy({ where: { id: req.params.id } });
    res.json({ message: 'Utilisateur deleted' });
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};
