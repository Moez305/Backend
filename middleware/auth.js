const jwt = require("jsonwebtoken");

module.exports = function (allowedRoles = []) {
  return function (req, res, next) {
    const token = req.headers.authorization?.split(" ")[1];

    if (!token) {
      return res.status(401).json({ message: "Token manquant" });
    }

    try {
      const decoded = jwt.verify(token, "SECRET_KEY");

      if (allowedRoles.length && !allowedRoles.includes(decoded.role)) {
        return res
          .status(403)
          .json({ message: "Accès refusé (rôle non autorisé)" });
      }

      req.user = decoded;
      next();
    } catch (err) {
      return res.status(401).json({ message: "Token invalide" });
    }
  };
};
