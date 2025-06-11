const { DataTypes } = require("sequelize");
const sequelize = require("../config/db");
const bcrypt = require("bcryptjs");

const Utilisateur = sequelize.define(
  "Utilisateur",
  {
    id: { type: DataTypes.INTEGER, primaryKey: true, autoIncrement: true },
    nom_utilisateur: { type: DataTypes.STRING, allowNull: false },
    mot_de_passe: { type: DataTypes.STRING, allowNull: false },
    role: {
      type: DataTypes.ENUM("admin", "chef de ligne", "visiteur"),
      allowNull: false,
    },
  },
  {
    tableName: "utilisateur",
    timestamps: false,

    hooks: {
      // 🔐 Before creating: hash the password
      beforeCreate: async (user) => {
        if (user.mot_de_passe && !user.mot_de_passe.startsWith("$2b$")) {
          user.mot_de_passe = await bcrypt.hash(user.mot_de_passe, 10);
        }
      },

      // 🔐 Before updating: only hash if password changed
      beforeUpdate: async (user) => {
        if (
          user.changed("mot_de_passe") &&
          !user.mot_de_passe.startsWith("$2b$")
        ) {
          user.mot_de_passe = await bcrypt.hash(user.mot_de_passe, 10);
        }
      },
    },
  }
);

module.exports = Utilisateur;
