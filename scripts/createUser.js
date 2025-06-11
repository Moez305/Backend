const bcrypt = require("bcryptjs");
const { Utilisateur } = require("../models");

(async () => {
  const hash = await bcrypt.hash("adminpass", 10); // 👈 Your desired password
  await Utilisateur.create({
    nom_utilisateur: "admin1",
    mot_de_passe: hash,
    role: "Administrateur",
  });
  console.log("✅ User created");
})();
