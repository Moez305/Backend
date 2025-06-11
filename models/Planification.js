const { DataTypes } = require("sequelize");
const sequelize = require("../config/db");

const Planification = sequelize.define(
  "Planification",
  {
    id: { type: DataTypes.INTEGER, primaryKey: true, autoIncrement: true },
    produit_code: { type: DataTypes.STRING },
    ligne_id: { type: DataTypes.STRING },
    date_planif: { type: DataTypes.DATE },
    ordre: { type: DataTypes.INTEGER },
    quantite_planifiee: { type: DataTypes.INTEGER },
    statut: { type: DataTypes.STRING },
  },
  { tableName: "planification", timestamps: false }
);

module.exports = Planification;
