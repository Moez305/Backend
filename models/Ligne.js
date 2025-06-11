const { DataTypes } = require("sequelize");
const sequelize = require("../config/db");

const Ligne = sequelize.define(
  "Ligne",
  {
    id: { type: DataTypes.STRING, primaryKey: true },
    nom: { type: DataTypes.STRING },
    zone_id: { type: DataTypes.STRING, allowNull: false },
  },
  { tableName: "ligne", timestamps: false }
);

module.exports = Ligne;
