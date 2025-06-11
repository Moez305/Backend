const bcrypt = require("bcryptjs");
const { Utilisateur } = require("../models");

(async () => {
  const users = await Utilisateur.findAll();

  for (const user of users) {
    if (!user.mot_de_passe.startsWith("$2b$")) {
      const hashed = await bcrypt.hash(user.mot_de_passe, 10);
      await Utilisateur.update(
        { mot_de_passe: hashed },
        { where: { id: user.id } }
      );
      console.log(`✅ Hashed: ${user.nom_utilisateur}`);
    }
  }

  console.log("🔒 Tous les mots de passe sont désormais sécurisés.");
  process.exit();
})();
