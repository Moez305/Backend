const { DataTypes } = require("sequelize");
const sequelize = require("../config/db");

const Produit = sequelize.define(
  "Produit",
  {
    code: { type: DataTypes.STRING, primaryKey: true },
    designation: { type: DataTypes.STRING },
    classe_therapeutique: { type: DataTypes.STRING },
    image_url: { type: DataTypes.STRING },
  },
  { tableName: "produit", timestamps: false }
);

module.exports = Produit;
