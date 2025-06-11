const sequelize = require("../config/db");
const Utilisateur = require("./Utilisateur");
const Zone = require("./Zone");
const Ligne = require("./Ligne");
const Produit = require("./Produit");
const Planification = require("./planification");
const Realisation = require("./Realisation");

// Associations
Zone.hasMany(Ligne, { foreignKey: "zone_id" });
Ligne.belongsTo(Zone, { foreignKey: "zone_id" });

Ligne.hasMany(Planification, { foreignKey: "ligne_id" });
Planification.belongsTo(Ligne, { foreignKey: "ligne_id" });

Produit.hasMany(Planification, { foreignKey: "produit_code" });
Planification.belongsTo(Produit, { foreignKey: "produit_code" });

Planification.hasMany(Realisation, { foreignKey: "planification_id" });
Realisation.belongsTo(Planification, { foreignKey: "planification_id" });

module.exports = {
  sequelize,
  Utilisateur,
  Zone,
  Ligne,
  Produit,
  Planification,
  Realisation,
};
