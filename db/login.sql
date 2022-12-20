

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `clave` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;



INSERT INTO `usuarios` (`id`, `usuario`, `email`, `clave`) VALUES
(1, 'cristiancedano1030@gmail.com', 'cristian', '$2y$10$2zxLD5hKzIxJVry5N1bKquZJqMzQnShj/jdVGkP5Fmu5QI1jJapg.'),
(2, 'cristian', 'cristiancedano1030@gmail.com', '$2y$10$V.P9IiAXneiEdV1XDJGqa.VzdK0GYksBFsLsrm3EA3G4xkgQUzIkO'),
(3, 'JUAN', 'juan@gmail.com', '$2y$10$XXqX4oe8YHIhy.WN3EU6FeqratJdbF45UuKaitXDuUkvnGLSESJPa');
COMMIT;

