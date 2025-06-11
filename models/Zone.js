const { DataTypes } = require("sequelize");
const sequelize = require("../config/db");

const Zone = sequelize.define(
  "Zone",
  {
    id: {
      type: DataTypes.STRING,
      primaryKey: true,
    },
    nom: {
      type: DataTypes.STRING,
      allowNull: false,
    },
  },
  {
    tableName: "zone",
    timestamps: false,
  }
);

module.exports = Zone;
