
-- Base de datos: `campeche`
--

-- --------------------------------------------------------

CREATE DATABASE campeche_final DEFAULT CHARACTER SET utf8 ;
USE db_appwebphp;

/
CREATE TABLE `categorias` (
  id int(11) NOT NULL,
  categoria varchar(100) NOT NULL,
  imagen varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Carga de datos para la tabla `categorias`
--

INSERT INTO categorias (id, categoria, imagen) VALUES
(1, "Vegetales", "Assets/img/imgCategorias/vegetales.jpg"),
(2, "Frutas", "Assets/img/imgCategorias/frutas.jpg"),
(3, "Legumbres", "https://robohash.org/blanditiisdistinctiooccaecati.png?size=300x300&set=set1");

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `correo` varchar(80) NOT NULL,
  `clave` varchar(100) NOT NULL,
  `perfil` varchar(100) NOT NULL DEFAULT 'default.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedidos`
--

CREATE TABLE `detalle_pedidos` (
  `id` int(11) NOT NULL,
  `producto` varchar(255) NOT NULL,
  `precio` int(15) NOT NULL,
  `cantidad` decimal(10,0) NOT NULL,
  `id_pedido` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id` int(11) NOT NULL,
  `id_transaccion` varchar(80) NOT NULL,
  `monto` int(10) NOT NULL,
  `estado` varchar(30) NOT NULL,
  `fecha` datetime NOT NULL,
  `email` varchar(80) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `ciudad` varchar(50) NOT NULL,
  `email_user` varchar(80) NOT NULL,
  `proceso` enum('1','2','3') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) CHARACTER SET armscii8 COLLATE armscii8_general_ci NOT NULL,
  `descripcion` longtext CHARACTER SET armscii8 COLLATE armscii8_general_ci NOT NULL,
  `precio` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `imagen` varchar(150) CHARACTER SET armscii8 COLLATE armscii8_general_ci NOT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `cantidad`, `imagen`, `id_categoria`) VALUES
(1, 'Chicken - White Meat, No Tender', 'Drainage of Duodenum with Drainage Device, Percutaneous Endoscopic Approach', 2977, 59, 'https://robohash.org/impeditexpeditarepudiandae.pn', 1),
(2, 'Wine - Zinfandel California 2002', 'Insertion of Spacer into Left Metatarsal-Phalangeal Joint, Open Approach', 5762, 70517, 'https://robohash.org/quiexpeditaqui.png?size=800x8', 2),
(3, 'Aspic - Light', 'Occlusion of Right Face Vein, Open Approach', 8138, 71871, 'https://robohash.org/asperioresuttemporibus.png?si', 3),
(4, 'Wine - Winzer Krems Gruner', 'Extirpation of Matter from Cervicothoracic Vertebral Disc, Open Approach', 5958, 96, 'https://robohash.org/assumendainventoredignissimos', 2),
(5, 'Chocolate - Pistoles, Lactee, Milk', 'Revision of Autologous Tissue Substitute in Cisterna Chyli, Percutaneous Approach', 9611, 953, 'https://robohash.org/idtemporequi.png?size=800x800', 1),
(6, 'Lotus Root', 'Insertion of Intraluminal Device into Left Hypogastric Vein, Percutaneous Endoscopic Approach', 2951, 732, 'https://robohash.org/necessitatibusmagniest.png?si', 2),
(7, 'Sachet', 'Dilation of Right Internal Mammary Artery, Percutaneous Endoscopic Approach', 2312, 1092, 'https://robohash.org/distinctioutvoluptas.png?size', 3),
(8, 'Blueberries - Frozen', 'Beam Radiation of Right Breast using Photons 1 - 10 MeV', 1086, 1968, 'https://robohash.org/quisquamilloexplicabo.png?siz', 1),
(9, 'Cleaner - Comet', 'Inspection of Left Knee Joint, Open Approach', 9662, 2796, 'https://robohash.org/itaqueetquasi.png?size=800x80', 3),
(10, 'Rosemary - Dry', 'Supplement Left Wrist Joint with Nonautologous Tissue Substitute, Percutaneous Approach', 6309, 82, 'https://robohash.org/sedrerummodi.png?size=800x800', 1),
(11, 'Pastry - Key Limepoppy Seed Tea', 'Fusion of Right Metacarpocarpal Joint, Percutaneous Approach', 9791, 225, 'https://robohash.org/repudiandaevoluptatumrecusand', 2),
(12, 'Eggplant - Regular', 'Revision of External Fixation Device in Left Hip Joint, External Approach', 2819, 26, 'https://robohash.org/molestiaenostrumet.png?size=8', 2),
(13, 'Food Colouring - Green', 'Drainage of Other Fetal Fluid from Products of Conception, Via Natural or Artificial Opening', 5318, 60901, 'https://robohash.org/doloremdolorequia.png?size=80', 3),
(14, 'Beans - Turtle, Black, Dry', 'Ultrasonography of Left Hand, Densitometry', 6792, 14579, 'https://robohash.org/officiaeaadipisci.png?size=80', 1),
(15, 'Oven Mitts - 15 Inch', 'Extirpation of Matter from Right Ear Skin, External Approach', 5207, 86478, 'https://robohash.org/dolorescorruptidolorum.png?si', 2),
(16, 'Pie Pecan', 'Postural Control Treatment of Musculoskeletal System - Whole Body using Other Equipment', 4194, 5385, 'https://robohash.org/natushiceum.png?size=800x800&', 2),
(17, 'Scrubbie - Scotchbrite Hand Pad', 'Revision of Synthetic Substitute in Chest Wall, Percutaneous Endoscopic Approach', 2166, 32, 'https://robohash.org/animiducimusconsequatur.png?s', 1),
(18, 'Lamb - Loin Chops', 'Insertion of Ring External Fixation Device into Left Radius, Open Approach', 6046, 3, 'https://robohash.org/ipsaomnisnecessitatibus.png?s', 2),
(19, 'Island Oasis - Pina Colada', 'Supplement Right Lower Leg Muscle with Synthetic Substitute, Open Approach', 8950, 56149, 'https://robohash.org/assumendadoloremqueveritatis.', 3),
(20, 'Platano maduro', 'Introduction of Anti-inflammatory into Male Reproductive, Via Natural or Artificial Opening Endoscopic', 8891, 53276, 'https://robohash.org/mollitiaipsavoluptate.png?siz', 3),
(21, 'Zanahoria', 'Replacement of Right Lacrimal Duct with Autologous Tissue Substitute, Percutaneous Approach', 8574, 828, 'https://robohash.org/cumquesederror.png?size=800x8', 2),
(22, 'Turkey - Whole, Fresh', 'Extirpation of Matter from Lower Artery, Percutaneous Endoscopic Approach', 7131, 2059, 'https://robohash.org/quisdoloresvoluptatem.png?siz', 2),
(23, 'Potato - Sweet', 'Reposition Right Radius with Monoplanar External Fixation Device, Percutaneous Approach', 6350, 6442, 'https://robohash.org/eumrepellendusdignissimos.png', 1),
(24, 'Shrimp - 100 / 200 Cold Water', 'Bypass Middle Esophagus to Cutaneous with Synthetic Substitute, Open Approach', 5795, 64687, 'https://robohash.org/quisequidolores.png?size=800x', 3),
(25, 'Beer - Sleeman Fine Porter', 'Restriction of Accessory Pancreatic Duct with Extraluminal Device, Percutaneous Approach', 8984, 5, 'https://robohash.org/verorerumvoluptas.png?size=80', 3),
(26, 'Wine - Vovray Sec Domaine Huet', 'Bypass Right Common Iliac Artery to Bilateral Femoral Arteries with Nonautologous Tissue Substitute, Percutaneous Endoscopic Approach', 8915, 785, 'https://robohash.org/molestiaedolorestempore.png?s', 2),
(27, 'Beans - Fava Fresh', 'Revision of Synthetic Substitute in Pancreatic Duct, Via Natural or Artificial Opening', 2100, 7, 'https://robohash.org/culpaquieum.png?size=800x800&', 2),
(28, 'Rum - Dark, Bacardi, Black', 'Excision of Right Lower Extremity, Open Approach, Diagnostic', 2862, 1661, 'https://robohash.org/explicaboconsequaturquisquam.', 1),
(29, 'Appetizer - Assorted Box', 'Introduction of Oxazolidinones into Nose, External Approach', 9793, 3396, 'https://robohash.org/dolorumaliquidat.png?size=800', 2),
(30, 'Beef - Salted', 'High Dose Rate (HDR) Brachytherapy of Prostate using Iodine 125 (I-125)', 9573, 9, 'https://robohash.org/autemoptioqui.png?size=800x80', 3),
(31, 'Soy Protein', 'Dilation of Right Internal Iliac Artery, Bifurcation, with Four or More Drug-eluting Intraluminal Devices, Open Approach', 5984, 5961, 'https://robohash.org/inexercitationemaccusamus.png', 3),
(32, 'Veal - Slab Bacon', 'Transfer Right Foot Subcutaneous Tissue and Fascia with Skin, Subcutaneous Tissue and Fascia, Open Approach', 6781, 1310, 'https://robohash.org/nequeoccaecatiharum.png?size=', 2),
(33, 'Squid - Breaded', 'Fluoroscopy of Left Upper Extremity Arteries using Other Contrast, Laser Intraoperative', 3287, 85, 'https://robohash.org/maximequianimi.png?size=800x8', 3),
(34, 'Beer - Steamwhistle', 'Restriction of Right Colic Artery with Extraluminal Device, Open Approach', 7535, 14824, 'https://robohash.org/laudantiumautemaccusamus.png?', 1),
(35, 'Tomatoes - Vine Ripe, Red', 'Repair Bilateral Lungs, Percutaneous Endoscopic Approach', 5314, 740, 'https://robohash.org/dictadistinctioaccusamus.png?', 2),
(36, 'Tofu - Firm', 'Supplement Left Cornea with Autologous Tissue Substitute, Percutaneous Approach', 3659, 822, 'https://robohash.org/nihilautautem.png?size=800x80', 2),
(37, 'Raspberries - Fresh', 'Revision of Drainage Device in Upper Tendon, Percutaneous Approach', 4219, 85186, 'https://robohash.org/quamquidemeum.png?size=800x80', 1),
(38, 'Muffin Hinge Container 6', 'Supplement of Left Foot Subcutaneous Tissue and Fascia with Nonautologous Tissue Substitute, Percutaneous Approach', 7280, 76, 'https://robohash.org/ameteoslaboriosam.png?size=80', 3),
(39, 'Broom And Brush Rack Black', 'Drainage of Right Upper Lung Lobe, Percutaneous Endoscopic Approach, Diagnostic', 2140, 6, 'https://robohash.org/doloremconsequaturmagni.png?s', 1),
(40, 'Wine - Duboeuf Beaujolais', 'Repair Right Carpal, External Approach', 2778, 52, 'https://robohash.org/natuslaboriosamillo.png?size=', 2),
(41, 'Sauce - Hoisin', 'Tinnitus Masker Assessment', 9106, 6, 'https://robohash.org/doloresvoluptatemet.png?size=', 1),
(42, 'Beef Tenderloin Aaa', 'Removal of Splint on Right Lower Arm', 8548, 49319, 'https://robohash.org/placeatrepudiandaemolestiae.p', 2),
(43, 'Beer - Moosehead', 'Replacement of Left Frontal Bone with Nonautologous Tissue Substitute, Open Approach', 8942, 5, 'https://robohash.org/reprehenderitdoloresqui.png?s', 3),
(44, 'Seedlings - Clamshell', 'Supplement Bladder Neck with Synthetic Substitute, Via Natural or Artificial Opening', 4127, 85208, 'https://robohash.org/liberoveritatisconsequatur.pn', 1),
(45, 'Chocolate Bar - Oh Henry', 'Revision of Nonautologous Tissue Substitute in Right Thumb Phalanx, Percutaneous Approach', 2638, 2751, 'https://robohash.org/aperiamquiaanimi.png?size=800', 1),
(46, 'Bread Country Roll', 'Bypass Left Internal Iliac Artery to Foot Artery with Autologous Arterial Tissue, Percutaneous Endoscopic Approach', 9665, 9, 'https://robohash.org/estmolestiaenon.png?size=800x', 2),
(47, 'Beef - Ground Lean Fresh', 'Dilation of Abdominal Aorta with Drug-eluting Intraluminal Device, Open Approach', 9060, 9, 'https://robohash.org/temporedelectusbeatae.png?siz', 2),
(48, 'Pastry - Mini French Pastries', 'Removal of Drainage Device from Upper Tendon, External Approach', 9654, 637, 'https://robohash.org/laudantiumquaerecusandae.png?', 1),
(49, 'Bay Leaf Fresh', 'Detachment at Right Upper Arm, Mid, Open Approach', 4634, 2020, 'https://robohash.org/pariaturremmaiores.png?size=8', 3),
(50, 'Pear - Packum', 'Dilation of Right Renal Artery with Two Intraluminal Devices, Open Approach', 4502, 588, 'https://robohash.org/dolorumanimiquod.png?size=800', 1),
(51, 'Cheese - Havarti, Salsa', 'Supplement Sternum with Autologous Tissue Substitute, Percutaneous Approach', 5049, 1972, 'https://robohash.org/nihilcorporisab.png?size=800x', 1),
(52, 'Pancetta', 'Transfusion of Nonautologous Bone Marrow into Peripheral Artery, Open Approach', 5918, 3063, 'https://robohash.org/veritatissitculpa.png?size=80', 2),
(53, 'Pancetta', 'Repair Cervicothoracic Vertebral Joint, Open Approach', 2744, 2, 'https://robohash.org/quosameteveniet.png?size=800x', 2),
(54, 'Pasta - Lasagna, Dry', 'Drainage of Left Scapula, Percutaneous Endoscopic Approach, Diagnostic', 6292, 8134, 'https://robohash.org/corruptidictaveritatis.png?si', 1),
(55, 'Bar Bran Honey Nut', 'Removal of Internal Fixation Device from Left Radius, Percutaneous Approach', 8815, 27722, 'https://robohash.org/atqueperferendiset.png?size=8', 2),
(56, 'Squid - U - 10 Thailand', 'Beam Radiation of Neck Skin using Neutrons', 6261, 36, 'https://robohash.org/illodignissimosconsequatur.pn', 3),
(57, 'Beer - Mill St Organic', 'Removal of Internal Fixation Device from Right Tarsal, Open Approach', 9124, 7928, 'https://robohash.org/sitdoloreaut.png?size=800x800', 2),
(58, 'Cookie - Oatmeal', 'Excision of Hepatic Vein, Percutaneous Approach, Diagnostic', 5121, 54072, 'https://robohash.org/estsittemporibus.png?size=800', 1),
(59, 'Coke - Classic, 355 Ml', 'Drainage of Right Upper Lobe Bronchus with Drainage Device, Via Natural or Artificial Opening', 2813, 4, 'https://robohash.org/eaautnulla.png?size=800x800&s', 2),
(60, 'Bacardi Breezer - Strawberry', 'Dilation of Right Popliteal Artery with Drug-eluting Intraluminal Device, using Drug-Coated Balloon, Percutaneous Endoscopic Approach', 8241, 30649, 'https://robohash.org/rerummaximeet.png?size=800x80', 1),
(61, 'Muffin Batt - Blueberry Passion', 'Fragmentation in Right Main Bronchus, Via Natural or Artificial Opening Endoscopic', 7373, 84239, 'https://robohash.org/dolorharumet.png?size=800x800', 1),
(62, 'Eggplant - Baby', 'Drainage of Pelvic Cavity, Percutaneous Endoscopic Approach, Diagnostic', 9377, 84480, 'https://robohash.org/iustodoloremut.png?size=800x8', 1),
(63, 'Lobster - Base', 'Release Thoracolumbar Vertebral Disc, Percutaneous Approach', 7472, 8685, 'https://robohash.org/temporedolorvoluptatem.png?si', 3),
(64, 'Cheese - Wine', 'Removal of Synthetic Substitute from Upper Back, Open Approach', 1767, 220, 'https://robohash.org/isteeaquesequi.png?size=800x8', 2),
(65, 'Flour - Rye', 'Dilation of Right Foot Artery, Bifurcation, with Three Intraluminal Devices, Open Approach', 6904, 98889, 'https://robohash.org/abconsequunturaut.png?size=80', 1),
(66, 'Sauce - Sesame Thai Dressing', 'Supplement Left Ring Finger with Autologous Tissue Substitute, Open Approach', 7133, 88, 'https://robohash.org/sequipraesentiumdolorum.png?s', 2),
(67, 'Coffee - Hazelnut Cream', 'Division of Left Maxilla, Open Approach', 1402, 6, 'https://robohash.org/evenietettemporibus.png?size=', 2),
(68, 'Spinach - Baby', 'Chiropractic Manipulation of Sacrum, Long and Short Lever Specific Contact', 8741, 17, 'https://robohash.org/sintarchitectopossimus.png?si', 1),
(69, 'Wine - Red, Gallo, Merlot', 'Bypass Gallbladder to Common Bile Duct with Intraluminal Device, Percutaneous Endoscopic Approach', 2892, 0, 'https://robohash.org/quiaveldolorum.png?size=800x8', 2),
(70, 'Corn Syrup', 'Transfer Facial Muscle with Skin, Percutaneous Endoscopic Approach', 6536, 796, 'https://robohash.org/temporaexercitationemin.png?s', 1),
(71, 'Lid Coffee Cup 8oz Blk', 'Release Left External Auditory Canal, Via Natural or Artificial Opening Endoscopic', 2964, 82757, 'https://robohash.org/quiasuntdolorum.png?size=800x', 3),
(72, 'Pepper - Roasted Red', 'Extraction of Right Cornea, External Approach', 6007, 20, 'https://robohash.org/laborumfacilismaiores.png?siz', 2),
(73, 'Vinegar - Red Wine', 'Occlusion of Right Common Iliac Artery with Extraluminal Device, Open Approach', 9906, 754, 'https://robohash.org/autrecusandaeadipisci.png?siz', 3),
(74, 'Crab - Dungeness, Whole', 'Fluoroscopy of Left Elbow using Other Contrast', 1063, 43, 'https://robohash.org/maioresdelectusdolor.png?size', 2),
(75, 'Kirsch - Schloss', 'Computerized Tomography (CT Scan) of Right Femur using High Osmolar Contrast', 1284, 96, 'https://robohash.org/voluptatumetrepellendus.png?s', 2),
(76, 'Table Cloth 54x54 White', 'Reposition Right Humeral Head, Percutaneous Endoscopic Approach', 3135, 16, 'https://robohash.org/maximesitcum.png?size=800x800', 3),
(77, 'Mushroom - Morels, Dry', 'Supplement Stomach, Pylorus with Nonautologous Tissue Substitute, Via Natural or Artificial Opening', 2776, 701, 'https://robohash.org/temporevoluptatemeum.png?size', 3),
(78, 'Pepper - Green Thai', 'Replacement of Right Toe Phalanx with Nonautologous Tissue Substitute, Open Approach', 5271, 0, 'https://robohash.org/cupiditateenimdeleniti.png?si', 1),
(79, 'Ice Cream - Turtles Stick Bar', 'Bypass Middle Esophagus to Cutaneous with Nonautologous Tissue Substitute, Percutaneous Endoscopic Approach', 1739, 3, 'https://robohash.org/reiciendiseaiure.png?size=800', 1),
(80, 'Pork - Backs - Boneless', 'Dilation of Lower Artery with Two Drug-eluting Intraluminal Devices, Percutaneous Approach', 8262, 9948, 'https://robohash.org/voluptateslaborummaxime.png?s', 3),
(81, 'Wine - Saint Emilion Calvet', 'Replacement of Skull with Nonautologous Tissue Substitute, Open Approach', 3511, 52100, 'https://robohash.org/inciduntquidolor.png?size=800', 2),
(82, 'Fuji Apples', 'Drainage of Accessory Pancreatic Duct, Via Natural or Artificial Opening Endoscopic', 4363, 7, 'https://robohash.org/solutaquiut.png?size=800x800&', 2),
(83, 'Chicken - Ground', 'Drainage of Thoracic Duct with Drainage Device, Percutaneous Endoscopic Approach', 1727, 67095, 'https://robohash.org/culpamaioresnostrum.png?size=', 3),
(84, 'Lychee', 'Fusion of 2 or more Cervical Vertebral Joints with Nonautologous Tissue Substitute, Posterior Approach, Anterior Column, Percutaneous Approach', 4017, 92, 'https://robohash.org/veniamcupiditatevel.png?size=', 2),
(85, 'Savory', 'Repair Right Knee Region, Open Approach', 7889, 7118, 'https://robohash.org/nobisimpeditaut.png?size=800x', 1),
(86, 'Salmon Steak - Cohoe 6 Oz', 'Destruction of Right Hip Tendon, Percutaneous Approach', 8621, 65, 'https://robohash.org/distinctiominimaarchitecto.pn', 1),
(87, 'Beef - Montreal Smoked Brisket', 'Bypass Right Pulmonary Artery from Innominate Artery with No Device, Open Approach', 7014, 10874, 'https://robohash.org/voluptatumreprehenderitest.pn', 3),
(88, 'Sauce - Chili', 'Dilation of Right Peroneal Artery, Bifurcation, Open Approach', 9658, 2, 'https://robohash.org/quoddoloremvoluptas.png?size=', 2),
(89, 'Pork Loin Bine - In Frenched', 'Dilation of Right Internal Mammary Artery, Bifurcation, Open Approach', 9110, 858, 'https://robohash.org/estsedsit.png?size=800x800&se', 2),
(90, 'Sprouts - Baby Pea Tendrils', 'Supplement of Face Subcutaneous Tissue and Fascia with Autologous Tissue Substitute, Open Approach', 9870, 3, 'https://robohash.org/voluptateomnisadipisci.png?si', 3),
(91, 'Wine - Segura Viudas Aria Brut', 'Replacement of Left Thyroid Artery with Synthetic Substitute, Percutaneous Endoscopic Approach', 9464, 82449, 'https://robohash.org/commodicumqueomnis.png?size=8', 1),
(92, 'Garlic', 'Monitoring of Cardiac Rhythm, Open Approach', 5769, 739, 'https://robohash.org/eosremratione.png?size=800x80', 2),
(93, 'Stock - Beef, Brown', 'Fusion of Right Wrist Joint with Synthetic Substitute, Percutaneous Endoscopic Approach', 6014, 80732, 'https://robohash.org/sitdoloremagni.png?size=800x8', 2),
(94, 'Wine - Marlbourough Sauv Blanc', 'Transfer Left Trunk Muscle with Skin and Subcutaneous Tissue, Open Approach', 4065, 102, 'https://robohash.org/aperiamperferendisnatus.png?s', 1),
(95, 'Broom - Push', 'Supplement Right Lower Femur with Nonautologous Tissue Substitute, Percutaneous Endoscopic Approach', 9528, 9011, 'https://robohash.org/ducimusquiofficia.png?size=80', 3),
(96, 'Black Currants', 'Extirpation of Matter from Bilateral Carotid Bodies, Open Approach', 7025, 42002, 'https://robohash.org/velitaquesit.png?size=800x800', 2),
(97, 'Apple - Custard', 'Supplement Nose with Autologous Tissue Substitute, External Approach', 8165, 34422, 'https://robohash.org/estconsequunturquasi.png?size', 2),
(98, 'Soup - Base Broth Beef', 'Head and Facial Bones, Revision', 2114, 8768, 'https://robohash.org/autemadipisciblanditiis.png?s', 3),
(99, 'Bread Sour Rolls', 'Division of Hymen, Via Natural or Artificial Opening Endoscopic', 8454, 80, 'https://robohash.org/voluptatibusexsapiente.png?si', 2),
(100, 'Anisette - Mcguiness', 'Replacement of Coccyx with Synthetic Substitute, Open Approach', 1791, 9453, 'https://robohash.org/nequesaepeconsectetur.png?siz', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle_pedidos`
--
ALTER TABLE `detalle_pedidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pedido` (`id_pedido`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detalle_pedidos`
--
ALTER TABLE `detalle_pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_pedidos`
--
ALTER TABLE `detalle_pedidos`
  ADD CONSTRAINT `detalle_pedidos_ibfk_1` FOREIGN KEY (`id_pedido`) REFERENCES `pedidos` (`id`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id`);
COMMIT;

