const express = require("express");
const cors = require("cors");
const app = express();
const db = require("./models");

app.use(cors());
app.use(express.json());

// Routes
const authRoutes = require("./routes/authRoutes");
app.use("/api", authRoutes); // 👈 must be before your other routes

app.use("/api/utilisateur", require("./routes/UtilisateurRoutes"));
app.use("/api/zone", require("./routes/ZoneRoutes"));
app.use("/api/ligne", require("./routes/LigneRoutes"));
app.use("/api/produit", require("./routes/ProduitRoutes"));
app.use("/api/planification", require("./routes/PlanificationRoutes"));
app.use("/api/realisation", require("./routes/RealisationRoutes"));

// DB connection
db.sequelize
  .authenticate()
  .then(() => console.log("✅ DB connected"))
  .catch((err) => console.error("❌ DB connection failed:", err));

const PORT = process.env.PORT || 5000;
app.listen(PORT, () => {
  console.log(`🚀 Server running on port ${PORT}`);
});
