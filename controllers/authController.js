const { Utilisateur } = require("../models");
const bcrypt = require("bcryptjs");
const jwt = require("jsonwebtoken");

exports.login = async (req, res) => {
  const { nom_utilisateur, mot_de_passe } = req.body;

  try {
    const user = await Utilisateur.findOne({ where: { nom_utilisateur } });

    if (!user) {
      return res.status(401).json({ message: "Utilisateur introuvable" });
    }

    const isMatch = await bcrypt.compare(mot_de_passe, user.mot_de_passe);

    if (!isMatch) {
      return res.status(401).json({ message: "Mot de passe incorrect" });
    }

    const token = jwt.sign({ id: user.id, role: user.role }, "SECRET_KEY", {
      expiresIn: "1h",
    });

    res.json({ token, role: user.role, nom_utilisateur: user.nom_utilisateur });
  } catch (err) {
    console.error(err);
    res.status(500).json({ error: "Erreur serveur" });
  }
};
