const { DataTypes } = require("sequelize");
const sequelize = require("../config/db");

const Realisation = sequelize.define(
  "Realisation",
  {
    id: { type: DataTypes.INTEGER, primaryKey: true, autoIncrement: true },
    planification_id: { type: DataTypes.INTEGER },
    quantite_realisee: { type: DataTypes.INTEGER },
    date_realisation: { type: DataTypes.DATE },
    commentaire: { type: DataTypes.TEXT },
  },
  { tableName: "realisation", timestamps: false }
);

module.exports = Realisation;
