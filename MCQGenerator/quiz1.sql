-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2014 at 06:06 PM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `quiz`
--
CREATE DATABASE IF NOT EXISTS `quiz` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `quiz`;

-- --------------------------------------------------------

--
-- Table structure for table `faculty_master`
--

CREATE TABLE IF NOT EXISTS `faculty_master` (
  `Faculty_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Faculty_Name` varchar(20) NOT NULL,
  `Faculty_Email` varchar(20) NOT NULL,
  `Faculty_Mobile` varchar(10) NOT NULL,
  `Faculty_User` varchar(20) NOT NULL,
  `Faculty_Password` varchar(20) NOT NULL,
  `Status` varchar(10) NOT NULL,
  PRIMARY KEY (`Faculty_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `faculty_master`
--

INSERT INTO `faculty_master` (`Faculty_Id`, `Faculty_Name`, `Faculty_Email`, `Faculty_Mobile`, `Faculty_User`, `Faculty_Password`, `Status`) VALUES
(1, 'Utsav', 'utsav.agra@gmail.com', '9623443265', 'utsav.a', 'google', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `question_master`
--

CREATE TABLE IF NOT EXISTS `question_master` (
  `Question_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Quiz_Id` int(11) NOT NULL,
  `Semester` varchar(10) NOT NULL,
  `Subject_Id` int(11) NOT NULL,
  `Question` varchar(200) NOT NULL,
  `Option1` varchar(100) NOT NULL,
  `Option2` varchar(100) NOT NULL,
  `Option3` varchar(100) NOT NULL,
  `Option4` varchar(100) NOT NULL,
  `Answer` varchar(100) NOT NULL,
  PRIMARY KEY (`Question_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=318 ;

--
-- Dumping data for table `question_master`
--

INSERT INTO `question_master` (`Question_Id`, `Quiz_Id`, `Semester`, `Subject_Id`, `Question`, `Option1`, `Option2`, `Option3`, `Option4`, `Answer`) VALUES
(21, 1, '6', 5, 'What is the full form of DSIP?', 'Discrete Signal and Image Processing', 'Digital Signal and Image Processing', 'Distributed Signal and Image Processing', 'None of the above', 'Digital Signal and Image Processing'),
(22, 1, '6', 5, 'What is an example of Continuous Time Signal?', 'Sine wave', 'Random signal', 'Nitro wave', 'None of the above', 'Sine wave'),
(23, 1, '6', 5, 'What is the value of Unit Impulse Signal at the origin?', '-1', '1', '0', '2', '1'),
(24, 1, '6', 5, 'Give an example of ODD signal.', 'Cosine wave', 'Square wave', 'Triangular wave', 'Sine wave', 'Sine wave'),
(25, 1, '6', 5, 'Give an example of EVEN signal', 'Cosine wave	', 'Square wave', 'Triangular wave', 'Sine wave', 'Cosine wave'),
(26, 1, '6', 5, 'Following is a valid operation on signals?', 'Signal Addition', 'Signal Subtraction', 'Signal Division', 'Signal Derivation', 'Signal Addition'),
(27, 1, '6', 5, 'A STATIC system is one in which the output of the system depends on the following:', 'Past Input', 'Future Input', 'Present Input', 'None of the above', 'Present Input'),
(28, 1, '6', 5, 'What is the S.I unit of INTENSITY?', 'Ampere', 'Candela', 'Wax per hour', 'Twindle', 'Candela'),
(29, 1, '6', 5, 'In MONOCHROME image,in which form is each pixel stored?', '0', '1', '0 or 1', 'None of the above', '0 or 1'),
(30, 1, '6', 5, 'In GREY SCALE image, in which form is each pixel stored?', '1 bytes', '2 bytes', '3 bytes', '4 bytes', '1 bytes'),
(31, 1, '6', 5, 'The art of hiding information is called as?', 'Bibliography', 'Informatica', 'Steganography', 'Bit plane slicing', 'Steganography'),
(32, 1, '6', 5, 'Which type of content is removed from the image using LOW PASS FILTERING?', 'Low frequency content', 'High frequency content', 'Medium frequency content', 'None of the above', 'High frequency content'),
(33, 1, '6', 5, 'Various GREY LEVELS in an image can be graphically represented with the help of the following?', 'Bar Graph', 'Isopreference curve', 'Histogram', 'Sine wave', 'Histogram'),
(34, 1, '6', 5, 'Equal pixels in all the grey levels can be achieved by?', 'Linear stretching', 'Histogram equalization', 'Graph balancing', 'None of the above', 'Histogram equalization'),
(35, 1, '6', 5, 'Which of the following Image processing techniques is used in AUTOMATED BLOOD CELL COUNTING?', 'Image enhancement', 'Image filtering', 'Image segmentation', 'Image compression', 'Image segmentation'),
(36, 1, '6', 5, 'Which of the following Image processing techniques is used in FINGER PRINT MATCHING?', 'Image enhancement', 'Image filtering', 'Image segmentation', 'Image compression', 'Image segmentation'),
(37, 1, '6', 5, 'In how many ways can Image Segmentation be carried out?', '1', '2', '3', '4', '2'),
(38, 1, '6', 5, 'Image segmentation based on discontinuities is carried out using?', 'Point detection', 'Line detection', 'Edge detection', 'All of the above', 'All of the above'),
(39, 1, '6', 5, 'According to Roberts Mask better results are obtained when which of the following operation is performed?', 'Direct Addition', 'Straight Differences', 'Cross Differences', 'Multiplication', 'Cross Differences'),
(40, 1, '6', 5, 'Which operator assigns similar weights to all the neighbouring pixels?', 'Roberts mask', 'Prewitt operator', 'Sobel operator', 'None of the above', 'Prewitt operator'),
(41, 1, '6', 5, 'Which operator assigns higher weights to the close  neighbouring pixels?', 'Roberts mask', 'Prewitt operator', 'Sobel operator', 'None of the above', 'Sobel operator'),
(42, 1, '6', 5, 'Which operator is most useful in detecting weak edges?', 'Prewitt operator', 'Sobel operator', 'Compass operator', 'Geometric operator', 'Compass operator'),
(43, 1, '6', 5, 'Which is the best method for pixel linking?', 'Hough transform', 'Z transform', 'DFT', 'none of the above', 'Hough transform'),
(44, 1, '6', 5, 'How many types of CONNECTIVITY exist between pixels?', '1', '2', '3', '4', '3'),
(45, 1, '6', 5, 'Straight line distance between two pixels is called as?', 'Euclidean distance', 'City block distance', 'Chess board distance', 'Adjacency distance', 'Euclidean distance'),
(46, 1, '6', 5, 'What is the full form of FFT?', 'Fast Fourier Transform', 'Forward Fourier Transform', 'Follow Fourier Transform', 'Foul Fourier Transform', 'Fast Fourier Transform'),
(47, 1, '6', 5, 'What is the full form of DIT?', 'Decimation In Travel', 'Decimation In Time', 'Decimation In Truth', 'Decimation In Tune', 'Decimation In Time'),
(48, 1, '6', 5, 'What is the full form of DIF?', 'Decimation In Failure', 'Decimation In Farads', 'Decimation In Frequency', 'Decimation In Follow up', 'Decimation In Frequency'),
(49, 1, '6', 5, 'What is the full form of DCT?', 'Discrete Cosine Transform', 'Discrete Caller Transform', 'Discrete Causal Transform', 'Discrete Cost Transform', 'Discrete Cosine Transform'),
(50, 1, '6', 5, 'What are the values of HADAMARD matrix of order 2?', '(1,1),(1,1)', '(-1,1),(1,1)', '(1,-1),(1,1)', '(1,1),(1,-1)', '(1,1),(1,-1)'),
(51, 1, '6', 5, 'What are the values of  MODIFIED HAAR matrix of order 2?', '(1,1),(1,-1)', '(1,1),(1,1)', '(1,-1),(1,1)', '(1,1),(-1,1)', '(1,1),(1,-1)'),
(52, 1, '6', 5, 'What are the values of  STANDARD HAAR matrix of order 2?', '(1,1),(1,-1)', '(1,1),(1,1)', '(1,-1),(1,1)', 'None of the above', '(1,1),(1,-1)'),
(53, 1, '6', 5, 'In order to satisfy the property of ORTHOGONALITY the dot product of the two vectors should be what?', '0', '-1', '1', 'Infinity', '0'),
(54, 1, '6', 5, 'For all n, the equation of Exponential signal is? ', 'x(n) = log(n)', 'x(n)=a*n', 'x(n)=a^n', 'x(n)=a+n', 'x(n)=a^n'),
(55, 1, '6', 5, 'Which of the following laws hold true for CONVOLUTION of two signals?', 'Commutative law	', 'Associative law', 'Distributive law', 'All of the above', 'All of the above'),
(56, 1, '6', 5, 'Which of the following are the types of CORRELATION?', 'Cross-correlation', 'Auto-correlation', 'Both of the above', 'None of the above', 'Both of the above'),
(57, 1, '6', 5, 'Z-TRANSFORM is also called as?', 'Bilateral transform', 'Unilateral transform', 'Both of the above', 'None of the above', 'Both of the above'),
(58, 1, '6', 5, 'For a FINITE CAUSAL sequence what is the REGION OF CONVERGENCE(ROC)?', 'Entire Z-PLANE except Z=0', 'Entire Z-PLANE except Z=INFINITY', 'Entire Z-PLANE except Z=0 and Z=INFINITY', 'None of the above', 'Entire Z-PLANE except Z=0'),
(59, 1, '6', 5, 'For a FINITE ANTI-CAUSAL sequence what is the REGION OF CONVERGENCE(ROC)?', 'Entire Z-PLANE except Z=0', 'Entire Z-PLANE except Z=INFINITY', 'Entire Z-PLANE except Z=0 and Z=INFINITY', 'None of the above', 'Entire Z-PLANE except Z=INFINITY'),
(60, 1, '6', 5, 'For a FINITE DOUBLE SIDED sequence what is the REGION OF CONVERGENCE(ROC)?', 'Entire Z-PLANE except Z=0', 'Entire Z-PLANE except Z=INFINITY', 'Entire Z-PLANE except Z=0 and Z=INFINITY', 'None of the above', 'Entire Z-PLANE except Z=0 and Z=INFINITY'),
(61, 1, '6', 5, 'What is the full form of BMP?', 'Binary Mapped Graphic Image', 'Bit Mapped Graphic Image', 'Byte Mapped Graphic Image', 'Boundary Mapped Graphic Image', 'Bit Mapped Graphic Image'),
(62, 1, '6', 5, 'What is the full form of JPEG?', 'Joint Photographic Expert Group', 'Joint Processing Expert Group', 'Joint Pixel Expert Group', 'None of the above', 'Joint Photographic Expert Group'),
(63, 1, '6', 5, 'What is the full form of TIFF?', 'Tap Image File Format	', 'Type Image File Format', 'Tuned Image File Format', 'Tagged Image File Format', 'Tagged Image File Format'),
(64, 1, '6', 5, 'What is the full form of EPS?', 'Encapsulated Post Script', 'Encapsulated Post Scale', 'Encapsulated Post System', 'None of the above', 'Encapsulated Post Script'),
(65, 1, '6', 5, 'What is the full form of GIF?', 'Graphic Integrated Format', 'Graphic Interpolated Format', 'Graphic Interchange Format', 'None of the above', 'Graphic Interchange Format'),
(66, 1, '6', 5, 'What type of noise arises due to poor illumination?', 'Gaussian noise', 'Salt and pepper noise', 'Rayleigh noise', 'Soft noise', 'Gaussian noise'),
(67, 1, '6', 5, 'What type of noise arises due to quick transients?', 'Gaussian noise', 'Salt and pepper noise', 'Rayleigh noise', 'Soft noise', 'Salt and pepper noise'),
(68, 1, '6', 5, 'REPLICATION and INTERPOLATION are methods to carry out which of the following?', 'Filtering', 'Zooming', 'Integration', 'Graph coloring', 'Zooming'),
(69, 1, '6', 5, 'SEPARABILITY property holds good for which of the following?', 'Z-TRANSFORM', 'DFT', 'Inverse DFT', 'None of the above', 'DFT'),
(70, 1, '6', 5, 'What is the full form of DPCM?', 'Digital Pulse Code Modulation', 'Disjoint  Pulse Code Modulation', 'Differential Pulse Code Modulation', 'Disintegrated Pulse Code Modulation', 'Differential Pulse Code Modulation'),
(71, 1, '6', 5, 'DPCM is based on  which of the following?', 'Convolution	', 'Differentiation', 'Integration', 'Correlation', 'Correlation'),
(72, 1, '6', 5, '"PREDICTION ERROR” is a term which is used in the following concept?', 'DCT', 'DFT', 'Inverse DFT', 'DPCM', 'DPCM'),
(73, 1, '6', 5, 'Coding process in DPCM is carried out in which manner?', 'Iterative', 'Complex', 'Recursive', 'Block manner', 'Recursive'),
(74, 1, '6', 5, 'Which components of an image are more important?', 'Low frequency components	', 'High frequency components', 'Both share the same level of importance', 'None of the above', 'Low frequency components	'),
(75, 1, '6', 5, 'Which of the following has the best COMPACTNESS?', 'DFT', 'Inverse DFT', 'DCT', 'None of the above', 'DCT'),
(76, 1, '6', 5, 'What is the value of ROOT MEAN SQUARE ERROE in LOSSLESS compression?', '-0.5	', '0', '0.5', '1', '0'),
(77, 1, '6', 5, 'What is the value of ROOT MEAN SQUARE ERROE in LOSSY compression?', '0', 'non zero', 'imaginary', 'none of the above', 'non zero'),
(78, 1, '6', 5, 'What is the full form of STFT?', 'Short Time Fourier Transform', 'Sinusoidal Tune Fourier Transform', 'Short Term Fourier Transform', 'None of the above', 'Short Time Fourier Transform'),
(79, 1, '6', 5, 'What is the full form of CWT?', 'Convolved Wavelet Transform', 'Continuous Wavelet Transform', 'Correlated Wavelet Transform', 'None of the above', 'Continuous Wavelet Transform'),
(80, 1, '6', 5, 'What is the full form of DWT?', 'Discontinuous Wavelet Transform', 'Distributed Wavelet Transform', 'Discrete Wavelet Transform', 'None of the above', 'Discrete Wavelet Transform'),
(81, 1, '6', 5, 'Removal of degradation from an image is called as?', 'Image Enhancement', 'Image Restoration', 'Image Transformation', 'Image Compression', 'Image Restoration'),
(82, 1, '6', 5, 'Which is the most popular filter used for Image Restoration?', 'Spatial filter	', 'Block filter', 'Mean filter', 'Wiener filter', 'Wiener filter'),
(83, 1, '6', 5, 'The process of extracting information from the image is called as', 'Image enhancement', 'Image restoration', 'Image analysis', 'Image compression', 'Image analysis'),
(84, 1, '6', 5, 'Among the following image processing techniques which is fast, precise and flexible', 'optical', 'digital', 'electronic', 'photographic', 'digital'),
(85, 1, '6', 5, 'An image is considered to be a function of a(x,y) where a represents', 'height of image', 'width of image', 'amplitude of image', 'resolution of image', 'amplitude of image'),
(86, 1, '6', 5, 'Which is the image processing technique used to improve the quality of image for human viewing?', 'compression', 'enhancement', 'restoration', 'analysis', 'enhancement'),
(87, 1, '6', 5, 'Following characteristic holds good for a Unit Step Sequence ', 'Energy signal	', 'Power signal', 'Both', 'None of the above', 'Power signal'),
(88, 1, '6', 5, 'What type of function is Auto-correlation?', 'Odd function	', 'Even function', 'Symmetric function', 'None of the above', 'Even function'),
(89, 1, '6', 5, 'Following are the properties of Z-TRANSFORM?', 'Linearity', 'Time-shift,Scaling', 'Time-reversal,Differentiation', 'All of the above', 'All of the above'),
(90, 1, '6', 5, 'For N number of samples in DFT,what are the number of computations required?\r\nFor N=32?', '1024', '16384', '4194304', 'None of the above', '1024'),
(91, 1, '6', 5, 'For N number of samples in DFT,what are the number of computations required?\r\nFor N=128?', '1024', '16384', '4194304', 'None of the above', 'Option b'),
(92, 1, '6', 5, 'For N number of samples in DFT,what are the number of computations required?\r\nFor N=2048?', '1024', '16384', '4194304', 'None of the above', '4194304'),
(93, 1, '6', 5, 'A signal is said to be BAND LIMITED if its FOURIER TRANSFORM outside a bounded region is?', 'finite', '0', 'infinite', 'negative', '0'),
(94, 1, '6', 5, 'IMAGE ENHANCEMENT can be done in the following number of Domains?', '1', '2', '3', '4', '2'),
(95, 1, '6', 5, 'Following is a SPATIAL DOMAIN ENHANCEMENT technique?', 'Point processing	', 'Paint processing', 'Pixel processing', 'Pot processing', 'Point processing	'),
(96, 1, '6', 5, 'What is an example of DIGITAL NEGATIVE?', 'Gamma ray image', 'Beta ray image', 'X-ray image', 'None of the above', 'X-ray image'),
(97, 1, '6', 5, 'What is the full form of RLE?', 'Read Length Encoding	', 'Run Length Encoding	', 'Read Length Entropy	', 'Run Length Entropy	', 'Run Length Encoding	'),
(98, 1, '6', 5, 'What is the full form of IGS?', 'Improved Grey Scale	', 'Increased Grey Scale', 'Integrated Grey Scale	', 'Induced Grey Scale	', 'Improved Grey Scale	'),
(99, 1, '6', 5, 'In a flash analog-to-digital converter, the Output of each comparator is connected to an input of a ________.', 'decoder', 'priority encoder', 'multiplexer', 'demultiplexer', 'priority encoder'),
(100, 1, '6', 5, 'Which term applies to the maintaining of a given signal level until the next sampling?', 'Holding', 'Aliasing', 'Shannon frequency sampling', 'Stair-stepping"', 'Holding'),
(101, 1, '6', 5, 'An op-amp has very ________.', 'high voltage gain', 'high input impedance', 'low output impedance', 'all of the above', 'all of the above'),
(102, 1, '6', 5, 'For a 4-bit DAC, the least significant bit (LSB) is ________.', '6.25% of full scale', '0.625% of full scale', '12% of full scale', '1.2% of full scale', '6.25% of full scale'),
(103, 1, '6', 5, 'The dual-slope analog-to-digital converter finds extensive use in ________.', 'digital voltmeters', 'function generators', 'frequency counters', 'all of the above', 'all of the above'),
(104, 1, '6', 5, 'The ADC0804 is an example of a ________.', 'single-slope analog-to-digital converter', 'dual-slope analog-to-digital converter', 'digital-ramp analog-to-digital converter', 'successive-approximation analog-to-digital converter', 'successive-approximation analog-to-digital converter'),
(105, 1, '6', 5, 'In a digital representation of voltages using An 8-bit binary code, how many values can be defined?', '16', '64', '128', '256', '256'),
(106, 1, '6', 5, 'A 4-bit R/2R ladder digital-to-analog converter uses ________.', 'one resistor value', 'two resistor values', 'three resistor values', 'four resistor values', 'two resistor values'),
(107, 1, '6', 5, 'The resolution of a 6-bit DAC is ________.', '63%', '64%', '15.9%', '1.59%', '64%'),
(108, 1, '6', 5, 'Which type of enhancement operations are used to modify pixel values according to the value of the pixel ‘s neighbors?', 'point operations', 'local operations', 'global operations', 'mask operations', 'mask operations'),
(109, 1, '6', 5, 'In which type of progressive coding technique,gery color is encoded first and then other colors are encoded?', 'quality progressive', 'resolution progressive', 'component progressive', 'region progressive', 'component progressive'),
(110, 1, '6', 5, 'Which image processing technique is used to eliminate electronic noise by mathematical process?', 'Frame averaging', 'Image understanding', 'Image compression', 'none', 'Frame averaging'),
(111, 1, '6', 5, 'The amount of noise decreases by  —————  of number of frames averaged', 'division', 'square root', 'linear', 'none', 'square root'),
(112, 1, '6', 5, 'Dilation-Morphological image operation technique is used to', 'shrink brighter areas of the image', 'diminishes intensity variation over the image', 'expands brighter areas of the image', 'scales pixel intensity uniformly', 'expands brighter areas of the image'),
(113, 1, '6', 5, 'Image compression is', 'making image look better', 'sharpening the intensity-transition regions', 'minimizing degradation over image', 'reducing the redundancy of the image data', 'reducing the redundancy of the image data'),
(114, 1, '6', 5, 'Which is a fundamental task in image processing used to match two or more pictures?', 'registration', 'segmentation', 'computer vision', 'image differencing', 'registration'),
(115, 1, '6', 5, 'Which technique is used for the images of the same scene are acquired from different viewpoints', 'multiview analysis', 'multitemporal analysis', 'multisensory analysis', 'image differencing', 'multiview analysis'),
(116, 1, '6', 5, 'Which sensor is used for obtaining the video source in 3d face recognition system', 'optical', 'electronic', '3d sensor', '2d sensor', '3d sensor'),
(117, 1, '6', 5, 'What algorithm is used in fingerprint technology', 'Intensity based algorithm', 'pattern based algorithm', 'feature based algorithm', 'Recognition algorithm', 'pattern based algorithm'),
(118, 1, '6', 5, 'Which technique turns the unique lines, patterns, and spots apparent in a person’s skin into a mathematical space', 'registration', 'segmentation', 'skin texture analysis', 'image differencing', 'skin texture analysis'),
(119, 1, '6', 5, 'Which technique which is  used to determine changes between two images ?', 'Image differencing', 'segmentation', 'skin texture analysis ', 'image degradation', 'Image differencing'),
(120, 1, '6', 7, 'A game can be formally defined as a kind of search problem with the following components:', 'Initial State', 'Successor Function', 'Terminal Test', 'All of the above', 'All of the above'),
(121, 1, '6', 7, 'What is the name for information sent from robot sensors to robot controllers?', 'temperature', 'pressure', 'feedback', 'signal', 'feedback'),
(122, 1, '6', 7, 'Which of the following terms refers to the rotational motion of a robot arm?', 'swivel', 'axle', 'retrograde', 'roll', 'roll'),
(123, 1, '6', 7, 'What is the name for the space inside which a robot unit operates?', 'environment', 'spatial base', 'danger zone', 'work envelope', 'work envelope'),
(124, 1, '6', 7, 'Which of the following terms IS NOT one of the five basic parts of a robot?', 'peripheral tools', 'end effectors', 'controller', 'drive', 'peripheral tools'),
(125, 1, '6', 7, 'Decision support programs are designed to help managers make:', 'budget projections', 'visual presentations', 'business decisions', 'vacation schedules', 'business decisions'),
(126, 1, '6', 7, 'The number of moveable joints in the base, the arm, and the end effectors of the robot determines ………….. ?', 'degrees of freedom', 'payload capacity', 'operational limits', 'flexibility', 'degrees of freedom'),
(127, 1, '6', 7, 'Which of the following places would be LEAST likely to include operational robots?', 'warehouse', 'factory', 'hospitals', 'private homes', 'private homes'),
(128, 1, '6', 7, 'Which of the basic parts of a robot unit would include the computer circuitry that could be programmed to determine what the robot would do?', 'sensor', 'controller', 'arm', 'end effector', 'controller'),
(129, 1, '6', 7, 'Which instruments are used for perceiving and acting upon the environment?', 'Sensors and Actuators', 'Sensors', 'Perceiver', 'None of the mentioned', 'Sensors and Actuators'),
(130, 1, '6', 7, 'How many types of agents are there in artificial intelligence?', '1', '2', '3', '4', '4'),
(131, 1, '6', 7, 'What are the composition for agents in artificial intelligence?', 'Program', 'Architecture', 'Both a & b', 'None of the mentioned', 'Both a & b'),
(132, 1, '6', 7, 'Which is used to improve the agents performance?', 'Perceiving', 'Learning', 'Observing', 'None of the mentioned', 'Learning'),
(133, 1, '6', 7, 'Which agent deals with happy and unhappy states?', 'Simple reflex agent', 'Model based agent', 'Learning agent', 'Utility based agent', 'Utility based agent'),
(134, 1, '6', 7, 'Which element in agent are used for selecting external actions?', 'Perceive', 'Performance', 'Learning', 'Actuator', 'Performance'),
(135, 1, '6', 7, 'What is Artificial intelligence?', 'Putting your intelligence into Computer', 'Programming with your own intelligence', 'Making a Machine intelligent', 'Playing a Game', 'Making a Machine intelligent'),
(136, 1, '6', 7, 'What is the rule of simple reflex agent?', 'Simple-action rule', 'Condition-action rule', 'Both a & b', 'None of the mentioned', 'Condition-action rule'),
(137, 1, '6', 7, 'Which action sequences are used to acheive the agent’s goal?', 'Search', 'Plan', 'Retreive', 'Both a & b', 'Both a & b'),
(138, 1, '6', 7, 'Which instruments are required for perceiving and acting upon the environment?', 'Sensors and Actuators', 'Sensors', 'Perceiver', 'None of the above', 'Sensors and Actuators'),
(139, 1, '6', 7, 'Artificial Intelligence has its expansion in the following application. (Mark all that apply)', 'Planning and Scheduling', 'Game Playing', 'Diagnosis', 'All of the above', 'All of the above'),
(140, 1, '6', 7, 'An ‘agent’ is anything that,', 'Perceives its environment through sensors and acting upon that environment through actuators', 'Takes input from the surroundings and uses its intelligence and performs the desired operations', 'A embedded program controlling line following robot', 'All of the mentioned', 'All of the mentioned'),
(141, 1, '6', 7, 'Agents behavior can be best described by', 'Perception sequence', 'Agent function', 'Sensors and Actuators', 'Environment in which agent is performing', 'Agent function'),
(142, 1, '6', 7, 'Rational agent is the one who always does the right thing.', 'True', 'False', 'No such agent', 'Cant say', 'True'),
(143, 1, '6', 7, 'A knowledge-based agent can combine general knowledge with current percepts to infer hidden aspects of the current state prior to selecting actions', 'True', 'False', 'No such agent', 'Cant say', 'True'),
(144, 1, '6', 7, 'Wumpus World is a classic problem, best example of,', 'Single player Game', 'Two player Game', 'Reasoning with Knowledge', 'Knowledge based Game', 'Reasoning with Knowledge'),
(145, 1, '6', 7, 'Which search strategy is also called as blind search?', 'Uninformed search', 'Informed search', 'Simple reflex search', 'All of the mentioned', 'Uninformed search'),
(146, 1, '6', 7, 'How many types are available in uninformed search method?', '3', '4', '5', '6', '5'),
(147, 1, '6', 7, 'When is breadth-first search is optimal?', 'When there is less number of nodes', 'When all step costs are equal', 'When all step costs are unequal', 'Both a & c', 'When all step costs are equal'),
(148, 1, '5', 7, 'What is the other name of informed search strategy?', 'Simple search', 'Heuristic search', 'Online search', 'None of the mentioned', 'Heuristic search'),
(149, 1, '6', 7, 'What is used to initiate the perception in the environment?', 'Sensor', 'Read', 'Actuators', 'None of the mentioned', 'Sensor'),
(150, 1, '6', 7, 'What is the process of breaking an image into groups?', 'Edge detection', 'Smoothing', 'Segmentation', 'None of the mentioned', 'Segmentation'),
(151, 1, '6', 7, 'How to increase the brightness of the pixel?', 'Sound', 'Amount of light', 'Surface', 'Waves', 'Amount of light'),
(152, 1, '6', 7, '_______________ Is an algorithm, a loop that continually moves in the direction of increasing value – that is uphill', 'Up-Hill Search', 'Hill-Climbing', 'Hill algorithm', 'Reverse-Down-Hill search', 'Hill-Climbing'),
(153, 1, '6', 7, 'For a robot unit to be considered a functional industrial robot, typically, how many degrees of freedom would the robot have?', '3', '4', '6', '8', '6'),
(154, 1, '6', 7, 'What is meant by agent’s percept sequence?', 'Used to perceive the environment', 'Complete history of actuator', 'Complete history of perceived things', 'Both a & b', 'Complete history of perceived things'),
(155, 1, '6', 7, 'In which agent does the problem generator is present?', 'Learning agent', 'Observing agent', 'Reflex agent', 'None of the mentioned', 'Learning agent'),
(156, 1, '6', 7, 'What is perception sequence of an agent?', 'A periodic inputs sets', 'a complete history of everything the agent has ever perceived', 'Both a) and b)', 'None of the mentioned', 'Both a) and b)'),
(157, 1, '6', 7, 'What is rational at any given time depends on', 'The performance measure that defines the criterion of success', 'The agent’s prior knowledge of the environment', 'The actions that the agent can perform', 'All of above', 'All of above'),
(158, 1, '6', 7, 'Knowledge and reasoning also play a crucial role in dealing with __________________ environment.', 'Completely Observable', 'Partially Observable', 'Neither a nor b', 'Only a and b', 'Partially Observable'),
(159, 1, '6', 7, 'Treatment chosen by doctor for a patient for a disease is based on', 'Only current symptoms', 'Current symptoms plus some knowledge from the textbooks', 'Current symptoms plus some knowledge from the textbooks plus 	experience', 'Only a and b', 'Current symptoms plus some knowledge from the textbooks plus 	experience'),
(160, 1, '6', 7, 'A) Knowledge base (KB) is consists of set of statements.\r\n B) Inference is deriving a new sentence from the KB.\r\nChoose the correct option.', 'A is true, B is true', 'A is false, B is false', 'A is true, B is false', 'A is false, B is true', 'A is true, B is true'),
(161, 1, '6', 7, 'Which is used to construct the complex sentences?', 'Symbols', 'Connectives', 'Logical connectives', 'All of the mentioned', 'Logical connectives'),
(162, 1, '6', 7, 'How many proposition symbols are there in artificial intelligence?', '1', '2', '3', '4', '2'),
(163, 1, '6', 7, 'How many logical connectives are there in artificial intelligence?', '2', '3', '4', '5', '5'),
(164, 1, '6', 7, 'Which search is implemented with an empty first-in-first-out queue?', 'Depth-first search', 'Breadth-first search', 'Bidirectional search', 'None of the mentioned', 'Breadth-first search'),
(165, 1, '6', 7, 'How many successors are generated in backtracking search?', '1', '2', '3', '4', '1'),
(166, 1, '6', 7, 'Which algorithm is used to solve any kind of problem?', 'Breath-first algorithm', 'Tree algorithm', 'Bidirectional search algorithm', 'None of the mentioned', 'Tree algorithm'),
(167, 1, '6', 7, 'Which search implements stack operation for searching the states?', 'Depth-limited search', 'Depth-first search', 'Breadth-first search', 'None of the mentioned', 'Depth-first search'),
(168, 1, '6', 7, 'In many problems the path to goal is irrelevant, this class of problems can be solved using,', 'Informed Search Techniques', 'Uninformed Search Techniques', 'Local Search Techniques', 'Only a and b', 'Local Search Techniques'),
(169, 1, '6', 7, 'A complete, local search algorithm always finds goal if one exists, an optimal algorithm always finds a global minimum/maximum. ', 'True', 'False', 'Cant say', 'No difference in local and global', 'True'),
(170, 1, '6', 7, 'Hill-Climbing algorithm terminates when,', 'Stopping criterion met', 'Global Min/Max is achieved', 'No neighbor has higher value', 'Local Min is achieved', 'No neighbor has higher value'),
(171, 1, '6', 7, 'One of the main cons of hill-climbing search is,', 'Does not Terminates at local optimum', 'Terminates at global optimum', 'Does not find optimum solution', 'Fail to find a solution', 'Does not find optimum solution'),
(172, 1, '6', 7, 'Stochastic hill climbing chooses at random from among the uphill moves; the probability of selection can vary with the steepness of the uphil1 move.', 'True', 'False', 'Cant Say', 'No such thing as Stochastic hill climbing', 'True'),
(173, 1, '6', 7, 'Hill climbing sometimes called ____________ because it grabs a good neighbor state without thinking ahead about where to go next.', 'Needy local search', 'Heuristic local search', 'Greedy local search', 'Optimal local search', 'Greedy local search'),
(174, 1, '6', 7, 'Hill-Climbing approach stuck for the following reasons', 'Local maxima', 'Ridges', 'Plateaux', 'All of above', 'All of above'),
(175, 1, '6', 7, 'What is the dominant modality for communication between humans?', 'Hear', 'Speech', 'Smell', 'None of the mentioned', 'Speech'),
(176, 1, '6', 7, 'What kind of signal is used in speech recognition?', 'Electromagnetic signal', 'Electric signal', 'Acoustic signal', 'Radar', 'Acoustic signal'),
(177, 1, '6', 7, 'What is the heuristic function of greedy best-first search?', 'f(n) != h(n)', 'f(n) < h(n)', 'f(n) = h(n)', 'f(n) > h(n)', 'f(n) = h(n)'),
(178, 1, '6', 7, 'Which search uses only the linear space for searching?', 'Best-first search', 'Recursive best-first search', 'Depth-first search', 'None of the mentioned', 'Recursive best-first search'),
(179, 1, '6', 7, 'Which method is used to search better by learning?', 'Best-first search', 'Depth-first search', 'Metalevel state space', 'None of the mentioned', 'Metalevel state space'),
(180, 1, '6', 7, 'Which search is complete and optimal when h(n) is consistent?', 'Best-first search', 'Depth-first search', 'Both a & b', 'A* search', 'A* search'),
(181, 1, '6', 7, 'Which search method will expand the node that is closest to the goal?', 'Best-first search', 'Greedy best-first search', 'A* search', 'None of the mentioned', 'Greedy best-first search'),
(182, 1, '6', 7, 'Which provides agents with information about the world they inhabit?', 'Sense', 'Perception', 'Reading', 'Hearing', 'Perception'),
(183, 1, '6', 7, 'What is the study of light?', 'Biology', 'Lightology', 'Photometry', 'All of the mentioned', 'Photometry'),
(184, 1, '6', 7, 'How many kinds of reflection are available in image perception?', '1', '2', '3', '4', '2'),
(185, 1, '6', 7, 'How many types of image processing techniques are there in image perception?', '1', '2', '3', '4', '3'),
(186, 1, '6', 7, 'Which is not the commonly used programming language for AI? ', 'Prolog', 'Java', 'LISP', 'Perl', 'Perl'),
(187, 1, '6', 7, 'How many parts does a problem consists of?', '1', '2', '3', '4', '4'),
(188, 1, '6', 7, 'Which search algorithm imposes a fixed depth limit on nodes?', 'Depth-limited search', 'Depth-first search', 'Iterative deepening search', 'Bidirectional search', 'Depth-limited search'),
(189, 1, '6', 7, 'How many types of informed search method are in artificial intelligence?', '1', '2', '3', '4', '4'),
(190, 1, '6', 7, 'Which search uses the problem specific knowledge beyond the definition of the problem?', 'Informed search', 'Depth-first search', 'Breadth-first search', 'Uninformed search', 'Informed search'),
(191, 1, '6', 7, 'Which function will select the lowest expansion node at first for evaluation?', 'Greedy best-first search', 'Best-first search', 'Both a & b', 'None of the mentioned', 'Best-first search'),
(192, 1, '6', 7, 'Which is used to improve the performance of heuristic search?', 'Quality of nodes', 'Quality of heuristic function', 'Simple form of nodes', 'None of the mentioned', 'Quality of heuristic function'),
(193, 1, '6', 7, 'What is meant by predicting the value of a state variable from the past?', 'Specular reflection', 'Diffuse reflection', 'Gaussian filter', 'Smoothing', 'Smoothing'),
(194, 1, '6', 7, 'Which is meant by assuming any two neighboring that are both edge pixels with consistent orientation?\r\n', 'Canny edge detection', 'Smoothing', 'Segmentation', 'None of the mentioned', 'Canny edge detection'),
(195, 1, '6', 7, 'How many types of 3-D image processing techniques are there in image perception?', '3', '4', '5', '6', '5'),
(196, 1, '6', 7, 'Though local search algorithms are not systematic, key advantages would include', 'Less memory', 'More time', 'Finds no solution in large infinite space', 'No optimum solution', 'Less memory'),
(197, 1, '6', 7, '___________ algorithm keeps track of k states rather than just one.', 'Hill-Climbing search', 'Local Beam search', 'Stochastic hill-climbing search', 'Random restart hill-climbing search', 'Local Beam search'),
(198, 1, '6', 7, 'What is viewed as problem of probabilistic inference?', 'Speech recognition', 'Speaking', 'Hearing', 'Utterance', 'Speech recognition'),
(199, 1, '6', 7, 'What is called as the properties of the signal that extend over interval?', 'Hops', 'Rate', 'Frames', 'All of the mentioned', 'Frames'),
(200, 1, '6', 7, 'Which is used to capture the internal structure of the phones?', 'One-state phone model', 'Two-state phone model', 'Three-state phone model', 'All of the mentioned', 'Three-state phone model'),
(201, 1, '6', 7, 'Which are partially captured by triphone model?', 'Aritculation effects', 'Coarticulation effects', 'Both a & b', 'None of the mentioned', 'Coarticulation effects'),
(202, 1, '6', 7, 'Which is the most straight forward appproach for planning algorithm?', 'Best-first search', 'State-space search', 'Depth-first search', 'Hill-climbing search', 'State-space search'),
(203, 1, '6', 7, 'What are taken into account of state-space search?', 'Postconditions', 'Preconditions', 'Effects', 'Both b & c', 'Both b & c'),
(204, 1, '6', 7, 'How many ways are available to solve the state-space search?', '1', '2', '3', '4', '2'),
(205, 1, '6', 7, 'What is the other name for forward state-space search?', 'Progression planning', 'Regression planning', 'Test planning', 'None of the mentioned', 'Progression planning'),
(206, 1, '6', 7, 'How many states are available in state-space search?', '1', '2', '3', '4', '4'),
(207, 1, '6', 7, 'What is the main advantage of backward state-space search?', 'Cost', 'Actions', 'Relevant actions', 'All of the mentioned', 'Relevant actions'),
(208, 1, '6', 7, 'What is the other name of backward state-space search?', 'Regression planning', 'Progression planning', 'State planning', 'Test planning', 'Regression planning'),
(209, 1, '6', 7, 'What will happen if a predecessor description is generated that is satisfied by the initial state of the planning problem?', 'Success', 'Error', 'Compilation', 'Termination', 'Termination'),
(210, 1, '6', 7, 'Which approach is to pretend that a pure divide and conquer algorithm will work?', 'Goal independence', 'Sub-goal independence', 'Both a & b', 'None of the mentioned', 'Sub-goal independence'),
(211, 1, '6', 7, 'General games involves,', 'Single-agent', 'Multi-agent', 'Neither a nor b', 'Only a and b', 'Only a and b'),
(212, 1, '6', 7, 'Adversarial search problems uses,', 'Competitive Environment', 'Cooperative Environment', 'Neither a nor b', 'Both a and b', 'Competitive Environment'),
(213, 1, '6', 7, 'Zero sum game has to be a ______ game.', 'Single player', 'Two player', 'Multiplayer', 'Three player', 'Multiplayer'),
(214, 1, '6', 7, 'The initial state and the legal moves for each side define the __________ for the game.', 'Search Tree', 'Game Tree', 'State Space Search', 'Forest', 'Game Tree'),
(215, 1, '6', 7, 'General algorithm applied on game tree for making decision of win/lose is ____________', 'DFS/BFS Search Algorithms', 'Heuristic Search Algorithms', 'Greedy Search Algorithms', 'MIN/MAX Algorithms', 'MIN/MAX Algorithms'),
(216, 1, '6', 7, 'The minimax algorithm  computes the minimax decision from the current state. It uses a simple recursive computation of the minimax values of each successor state, directly implementing the defining eq', 'True', 'False', 'Cant Say', 'No such thing like minimax algorithm', 'True'),
(217, 1, '6', 7, 'The complexity of minimax algorithm is', 'Same as of DFS', 'Space – bm and time – bm', 'Time – bm and space – bm', 'Same as BFS', 'Same as of DFS'),
(218, 1, '6', 6, 'Security in enterprise systems that connected in network share _________.', 'attacks', 'confidential information', 'threats', 'uncovered vulnerabilities', 'confidential information'),
(219, 1, '6', 6, 'The goals of secure computing include ________.', 'confidentiality ', 'integrity', 'availability', 'all the above', 'all the above'),
(220, 1, '6', 6, 'Which of the following is a computer based system that has three separate but valuable components?', 'Hardware', 'Attacks', 'Integrity', 'Vulnerabilities', 'Hardware'),
(221, 1, '6', 6, 'A ________ is a weakness in the security system', 'threat', 'software', 'vulnerability', 'confidentiality', 'vulnerability'),
(222, 1, '6', 6, 'A _________ to a computing system is a set of circumstances that has the potential to cause loss or harm', 'data', 'information', 'threat', 'integrity', 'threat'),
(223, 1, '6', 6, 'A human who exploits vulnerability perpetrates a ______ on the system.', 'control.', 'data.', 'security.', 'attack.', 'attack.'),
(224, 1, '6', 6, 'User can use ________ as a protective measure.', 'computer.', 'control.', 'information.', 'procedure.', 'control.'),
(225, 1, '6', 6, 'A threat is _______ by control of vulnerability.', 'blocked.', 'allowed.', 'released.', 'suspended.', 'blocked.'),
(226, 1, '6', 6, 'An _______ means that some unauthorized party has gained access to an asset.', 'interruption.', 'interception.', 'modification.', 'motivation.', 'interception.'),
(227, 1, '6', 6, 'In an __________, an asset of the system becomes lost, unavailable or unusable.', 'interruption.', 'interception.', 'fabrication.', 'motivation.', 'interruption.'),
(228, 1, '6', 6, 'A ________ studies encryption and encrypted messages, hoping to find the hidden meanings.', 'cryptographer.', 'cryptanalyst.', 'decoder.', 'crypto scientist.', 'cryptanalyst.'),
(229, 1, '6', 6, 'An unauthorized party might create a __________ of counterfeit objects on a computing system.', 'fabrication.', 'interception.', 'modification.', 'motivation.', 'fabrication.'),
(230, 1, '6', 6, '__________ is the skills, knowledge, tools and other things with which to be able to pull off the attack.', 'Opportunity', 'Method.', 'Tools.', 'Motive', 'Method.'),
(231, 1, '6', 6, '________ is a reason to want to perform this attack against this system.', 'Modification.', 'Motive.', 'Interception. ', 'Method.', 'Motive.'),
(232, 1, '6', 6, '_________ ensures that computer related assets are accessed only by authorized parties.', 'Confidentiality.', 'Integrity.', 'Availability.', ' All the above.', 'Confidentiality.'),
(233, 1, '6', 6, '___________ is sometimes called secrecy or privacy.', 'Interruption.', 'Confidentiality.', 'Fabrication.', 'Motivation.', 'Confidentiality.'),
(234, 1, '6', 6, 'Availability is sometimes known by its opposite, ___________.', 'secrecy.', 'privacy.', 'denial of service.', 'secrecy of serve', 'denial of service.'),
(235, 1, '6', 6, ' _______ is a program that has a secret entry point.', 'Trojan horse', 'Virus', 'Trapdoor', 'Information leaks', 'Trapdoor'),
(236, 1, '6', 6, 'Any crime involving a computer or aided by the use of one is __________.', 'propaganda vehicles.', 'computer crime.', 'attacks', 'privacy', 'computer crime.'),
(237, 1, '6', 6, 'IDS stands for ________.', 'intrusion detection system', 'instruction detection systeminstruction detection system', 'information detection system', 'instruction document section', 'intrusion detection system'),
(238, 1, '6', 6, 'The hackers in ________ class become crackers by using their talent and computer skills for\r\ndestruction of the computer systems', 'black hats', 'white hats', 'grey hats', 'blue hats', 'black hats'),
(239, 1, '6', 6, 'An encryption scheme that does not require the use of a key is called a __________.', 'plain text', 'key cipher', 'keyless cipher', 'ciphertext', 'keyless cipher'),
(240, 1, '6', 6, 'A permutation is a __________ of the elements of a sequence', 'reordering.', 'scramble.', 'arrangement.', 'prefix', 'reordering.'),
(241, 1, '6', 6, 'A _________ cipher encrypts a group of plaintext symbols as one block', 'stream.', 'column.', 'block.', 'key', 'block.'),
(242, 1, '6', 6, 'AES is a block cipher of block size ________ bits', '128.', '192.', '256.', '312.', '128.'),
(243, 1, '6', 6, 'A check is a _________ authorizing a financial transaction', 'stream.', 'tangible object.', 'trigrams.', 'secured.', 'tangible object.'),
(244, 1, '6', 6, 'A certificate is signed by _______.', 'certificate authority.', 'hacker.', 'trustee.', 'intruder.', 'certificate authority.'),
(245, 1, '6', 6, 'The block size of DES is ________ bits.', '64', '128', '312', '412', '64'),
(246, 1, '6', 6, 'Design of both AES and DES are ________.', 'open.', 'closed.', 'both open and closed.', 'none of the above.', 'open.'),
(247, 1, '6', 6, 'NBS stands for _________.', 'National Board of Standards', 'National Bureau of Standards.', 'National Board of Security', 'National Bureau of security', 'National Bureau of Standards.'),
(248, 1, '6', 6, 'Controlled access to data is done for _________ errors.', 'domain', 'block', 'boundary', 'logic.', 'domain'),
(249, 1, '6', 6, 'A _______ is a space in which data can be held.', 'key.', 'data.', 'buffer.', 'code', 'buffer.'),
(250, 1, '6', 6, '__________ is the general name for unanticipated or undesired effects in programs or program parts,\r\ncaused by an agent intent on damage.', 'Malicious code', 'Virus.', 'Buffer.', 'Domain.', 'Malicious code'),
(251, 1, '6', 6, 'A ________ is an unauthorized program that performs functions unknown by the user', 'virus', 'malicious code.', 'Trojan horse.', 'agent', 'Trojan horse.'),
(252, 1, '6', 6, 'Malicious code is also known as _________ program.', 'threat.', 'rogue.', 'resident.', 'transient.', 'rogue.'),
(253, 1, '6', 6, 'A virus that can change its appearance is called a ________ virus', 'mono', 'tetra', 'poly', 'polymorphic', 'polymorphic'),
(254, 1, '6', 6, 'A web bug is also called as _______.', 'pixel tag.', 'invisible gif', 'beacon gif', 'all the above', 'all the above'),
(255, 1, '6', 6, '_________ usually come with two functions such as online and offline recording.', 'Password sending trojans.', 'Remote access trojans.', 'Key loggers.', 'Destructive.', 'Key loggers.'),
(256, 1, '6', 6, '______ is the first example of general file integrity assessment tool.', 'Tripwire.', 'Trapdoors.', 'Denial of Service.', 'FTP Trojans', 'Tripwire.'),
(257, 1, '6', 6, 'A ________ attack is means for malicious code to be launched by a user with lower privileges but run with higher privileges.', 'patching penetration.', 'privilege escalation.', 'rootkit revealer.', 'rootkit.', 'privilege escalation.'),
(258, 1, '6', 6, 'An ________ is a spoofing attack in which all or part of a web page is false', 'denial of service.', 'privilege escalation.', 'transient.', 'interface illusion', 'interface illusion'),
(259, 1, '6', 6, 'The general name for extraordinary paths of communication is _____________.', 'covert channels.', 'timing attacks.', 'salami attacks.', 'web bugs', 'covert channels.'),
(260, 1, '6', 6, ' A simple example of covert channel is the ________ channel.', 'file.', 'stored.', 'block.', 'file lock.', 'file lock.'),
(261, 1, '6', 6, ' ___________ is the process of dividing a task into subtasks.', 'Encapsulation.', 'Information Hiding ', 'Modularization', 'Distribution', 'Modularization'),
(262, 1, '6', 6, 'The concept of ________ is to describe the relationship between two programs.', 'mutual exclusion', 'mutual encapsulation.', 'mutual suspicion.', 'all the above.', 'mutual suspicion.'),
(263, 1, '6', 6, '_________ analysis is a set of systematic techniques intended to expose potentially hazardous system states.', 'Harm.', 'Hazard.', 'Threat.', 'Security', 'Hazard.'),
(264, 1, '6', 6, 'A ________ evaluates the system to determine whether the functions described by the requirements\r\nspecification are actually performed by the integrated system', 'installation test.', 'unit test.', 'system test', 'performance test', 'installation test.'),
(265, 1, '6', 6, 'To check the system against the customer’s requirements description ________ test is used', 'unit.', 'integration.', 'acceptance.', 'system.', 'acceptance.'),
(266, 1, '6', 6, '_________ allows visibility.', 'Black-box testing.', 'Clear-box testing.', 'Integration testing.', 'Validation testing', 'Clear-box testing.'),
(267, 1, '6', 6, '________ sets up baselines to which all other code will be compared after changes are made', 'Configuration management.', 'Software management.', 'Configuration identification.', 'Software identification.', 'Configuration identification.'),
(268, 1, '6', 6, '_________ contains editing commands to describe the ways to transform the main version into the variation', 'Delta.', 'Status accounting', 'File.', 'Records', 'Delta.'),
(269, 1, '6', 6, '_________ is a single code component addresses all versions, relying on the compiler to determine which statements to apply to which version?', 'Configuration audit', 'Status accounting', 'Change control board.', 'Conditional compilation', 'Conditional compilation'),
(270, 1, '6', 6, ' __________ records information about the components.', 'Change control board', 'Conditional compilation', 'Delta', 'Status accounting.', 'Status accounting.'),
(271, 1, '6', 6, '__________ involves making initial assertions about the inputs and then checking to see if the desired output is generated.', 'Interface channels', 'Intercepted channels', 'Program verification', 'Integrity constraint', 'Program verification'),
(272, 1, '6', 6, 'In a __________, an independent security evaluation team arrives unannounced to check each project’s compliance with standards and guidelines.', 'tripwire', 'security audit.', 'denial of service', 'ftp trojans', 'security audit.'),
(273, 1, '6', 6, 'SSE stands for ________.', 'system security engineering.', 'software security engineering.', 'system software engineering', 'security system engineering', 'system security engineering.'),
(274, 1, '6', 6, 'The use of ________ compares the results of two or more processes to see that they agree, before we use their result in a task.', 'static analysis', 'genetic diversity.', 'redundancy.', 'peer reviews', 'redundancy.'),
(275, 1, '6', 6, '__________ testing ensures that all remaining functions are still working and that performance has not been degraded by the change', 'Unit.', 'Performance.', 'Integration.', 'Regression', 'Regression'),
(276, 1, '6', 6, 'In _______, the information is hidden from one component to other', 'trojan horse.', 'information hiding', 'trapdoor', 'information leaks', 'information hiding'),
(277, 1, '6', 6, 'In ______ testing, programmers test each small component of the system separate from the other component', 'unit.', 'integration.', 'acceptance', 'system', 'unit.'),
(278, 1, '6', 6, 'In _________ separation, the different processes use different physical objects, such as separate\r\nprinters for output requiring different levels of security', 'physical.', 'temporal.', 'logical.', 'cryptographic', 'physical.'),
(279, 1, '6', 6, 'A _________ is the method to confine users to one side of a boundary.', 'base registers.', 'fence.', 'relocation.', 'block', 'fence.'),
(280, 1, '6', 6, ' ________ register contains the address of end of the operating system', 'fence.', 'file.', 'block', 'variable', 'fence.'),
(281, 1, '6', 6, ' _________ register includes upper address limit', 'Bound register.', 'Tagged register', 'Base register', 'Offset register', 'Bound register.'),
(282, 1, '6', 6, 'In _________ architecture, every word of machine memory has one or more extra bits to identify the access rights to that word', 'primary.', 'secondary.', 'timed.', 'tagged', 'tagged'),
(283, 1, '6', 6, ' __________ involves dividing a program into separate pieces', 'Code.', 'Bound', 'Tester', 'Segmentation.', 'Segmentation.'),
(284, 1, '6', 6, 'In paging, the memory is divided into equal-sized units called', 'pages.', 'records', 'segments ', 'page frames', 'page frames'),
(285, 1, '6', 6, ' _________ is placeholders that designate “any user”.', 'Control matrix.', 'Wild cards.', 'Buffer.', 'Block.', 'Wild cards.'),
(286, 1, '6', 6, ' ________ is an unforgeable token that gives the possessor certain rights to an object', 'Vulnerability.', 'Capability.', 'Interception.', 'Coupling.', 'Capability.'),
(287, 1, '6', 6, 'Kerberos implements both authentication and access authorization by means of capabilities called ___________.', 'tokens.', 'tickets', 'server', 'distribution', 'tickets'),
(288, 1, '6', 6, '___________ access control lets us associate privileges with groups.', 'Group protection', 'Token-based.', 'Data.', 'Role-based', 'Role-based'),
(289, 1, '6', 6, 'The use of set userid (suid) is to provide protection level to file’s _______.', 'executor.', 'owner.', 'to all.', 'None of the above', 'owner.'),
(290, 1, '6', 6, 'The use of set userid (suid) is to provide protection level to file’s _______.', 'executor.', 'owner.', 'to all.', 'None of the above', 'owner.'),
(291, 1, '6', 6, 'KDC stands for __________.', 'key distribution center.', 'key data center', 'knowledge distribution center.', 'knowledge data center', 'key distribution center.'),
(292, 1, '6', 6, 'Exhaustive attack also known as', 'malicious.', 'salami', 'attack code', 'brute force', 'brute force'),
(293, 1, '6', 6, 'In _________ engineering the attacker contacts the system’s administrator or a user to elicit the password in some way', 'system.', 'software.', 'social', 'none of these', 'social'),
(294, 1, '6', 6, 'A _________ password is one that changes every time it is used', 'one-time', 'two-time', 'three-time', 'four-time', 'one-time'),
(295, 1, '6', 6, 'Protection features provided by general-purpose operating systems are _________.', 'protecting memory', 'files.', 'execution environment.', 'all the above', 'all the above'),
(296, 1, '6', 6, 'A single user cannot belong to two groups is _________.', 'multiple personalities.', 'group affiliation.', 'all groups', 'limited sharing', 'group affiliation.'),
(297, 1, '6', 6, 'Even if a user identifies a set of trustworthy users, there is no convenient way to allow access only to them is _________.', 'lack of trust.', 'too coarse.', 'rise of sharing.', 'complexity', 'too coarse.');
INSERT INTO `question_master` (`Question_Id`, `Quiz_Id`, `Semester`, `Subject_Id`, `Question`, `Option1`, `Option2`, `Option3`, `Option4`, `Answer`) VALUES
(298, 1, '6', 6, 'Kerberos implements _________ so that the user signs on once and from that point on all the user’s actions are authorized without the user needing to sign on again', 'single sign-on.', 'double sign-on.', 'multiple sign-on.', 'all the above', 'single sign-on.'),
(299, 1, '6', 6, 'In _________ separation, the processes having different security requirements are executed in different times', 'physical.', 'temporal.', 'logical.', 'cryptographic', 'temporal.'),
(300, 1, '6', 6, 'The basis of protection is __________ which keeps one user’s objects separate from other users', 'separation', 'branching.', 'allocation.', 'grouping', 'separation'),
(301, 1, '6', 6, 'Operating system functions can be categorized as _________.', 'access control', 'identify and credential management.', 'information flow.', 'all the above', 'all the above'),
(302, 1, '6', 6, 'The software is ________ if the code has been rigorously developed and analyzed', 'trusted.', 'malicious.', 'uncovered vulnerability.', 'threat', 'trusted.'),
(303, 1, '6', 6, 'Trusted product is ________.', 'evaluated and approved product.', 'evaluated product.', 'approved product.', 'computing base', 'evaluated and approved product.'),
(304, 1, '6', 6, ' ____________ is a set of all protection mechanisms within a computing system, including hardware, firmware, and software that together enforce a unified security policy over a product or system', 'Trusted base.', 'Trusted product.', 'Trusted process.', 'Trusted computing base', 'Trusted computing base'),
(305, 1, '6', 6, ' _________ is a system that employs sufficient hardware and software integrity measures to allow its use for processing sensitive information', 'Threat system.', 'Trusted system', 'Approved system.', 'Computing system', 'Trusted system'),
(306, 1, '6', 6, 'A __________ policy is a statement of the security that user expect the system to enforce', 'software.', 'security.', 'authenticated.', 'authorized', 'security.'),
(307, 1, '6', 6, '________ policy is based on protecting classified information, which ranked at a particular sensitivity level', 'Military security', 'Formal security.', 'Informal security.', 'Trusted security', 'Military security'),
(308, 1, '6', 6, 'Each piece of classified information may be associated with one or more projects are called __________.', 'records.', 'compartments.', 'blocks.', 'file.', 'compartments'),
(309, 1, '6', 6, 'A __________ may include information at only one sensitivity level', 'sensitive information.', 'alpha project.', 'records', 'compartments', 'compartments'),
(310, 1, '6', 6, 'Sensitivity requirements are known as _________ requirements because they reflect the hierarchy of sensitivity levels', 'branching.', 'looping.', 'hierarchical.', 'non-hierarchical', 'hierarchical.'),
(311, 1, '6', 6, '_________ restrictions are nonhierarchical because compartments do not necessarily reflect a hierarchical structure', 'man-in-middle.', 'need-to-know.', 'beta.', 'alpha', 'need-to-know.'),
(312, 1, '6', 6, 'Clark and Wilson present their policy in terms of __________ data items', 'ordered.', 'unordered.', 'unconstrained.', 'constrained', 'constrained'),
(313, 1, '6', 6, 'The constraint data item policies are processed by __________ procedures.', 'access triples.', 'transformation.', 'well-formed.', 'checked.', 'transformation.'),
(314, 1, '6', 6, 'Clark and Wilson propose defining the policy in terms of ________.', 'redundancy.', 'overlapping.', 'access doubles.', 'access triples', 'access triples'),
(315, 1, '6', 6, 'The required division of responsibility is called _________ of duty.', 'overlapping.', 'division.', 'separation.', 'arrangement', 'division.'),
(316, 1, '6', 6, 'The largest element of lattice is the _________.', 'hierarchical.', 'non-hierarchical.', 'classification.', 'well-formed', 'classification.'),
(317, 1, '6', 6, 'The smallest element of lattice is the __________.', 'sensitive information.', 'alpha project.', 'compartments.', 'no compartments.', 'no compartments.');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_category`
--

CREATE TABLE IF NOT EXISTS `quiz_category` (
  `Quiz_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Quiz_Name` varchar(20) NOT NULL,
  `Quiz_level` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Quiz_Id`,`Quiz_level`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `quiz_category`
--

INSERT INTO `quiz_category` (`Quiz_Id`, `Quiz_Name`, `Quiz_level`) VALUES
(1, 'Level Easy', 1),
(1, 'Level Medium', 2),
(1, 'Level Hard', 3);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_schedule`
--

CREATE TABLE IF NOT EXISTS `quiz_schedule` (
  `Schedule_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Quiz_Id` int(11) NOT NULL,
  `Semester` varchar(10) NOT NULL,
  `Subject_Id` int(11) NOT NULL,
  `QuizDate` date NOT NULL,
  `QuizTime` time NOT NULL,
  PRIMARY KEY (`Schedule_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `quiz_schedule`
--

INSERT INTO `quiz_schedule` (`Schedule_Id`, `Quiz_Id`, `Semester`, `Subject_Id`, `QuizDate`, `QuizTime`) VALUES
(1, 0, '6', 7, '2014-04-11', '09:00:00'),
(2, 0, '1', 7, '2014-04-11', '09:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `result_master`
--

CREATE TABLE IF NOT EXISTS `result_master` (
  `Result_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Exam_Id` int(11) NOT NULL,
  `Subject_Id` int(11) NOT NULL,
  `Student_Id` int(11) NOT NULL,
  `Total` int(11) NOT NULL,
  `Correct` int(11) NOT NULL,
  `Wrong` int(11) NOT NULL,
  `Result` int(11) NOT NULL,
  PRIMARY KEY (`Result_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `result_master`
--

INSERT INTO `result_master` (`Result_Id`, `Exam_Id`, `Subject_Id`, `Student_Id`, `Total`, `Correct`, `Wrong`, `Result`) VALUES
(23, 0, 1, 1, 0, 0, 0, 0),
(24, 0, 1, 1, 0, 0, 0, 0),
(25, 0, 1, 1, 0, 0, 0, 0),
(26, 0, 1, 1, 0, 0, 0, 0),
(27, 0, 1, 1, 0, 0, 0, 0),
(28, 0, 1, 1, 0, 0, 0, 0),
(29, 0, 1, 1, 0, 0, 0, 0),
(30, 0, 1, 1, 0, 0, 0, 0),
(31, 0, 1, 1, 0, 0, 0, 0),
(32, 0, 1, 1, 3, 3, 0, 15);

-- --------------------------------------------------------

--
-- Table structure for table `student_registration`
--

CREATE TABLE IF NOT EXISTS `student_registration` (
  `Student_Id` int(11) NOT NULL AUTO_INCREMENT,
  `RollNumber` varchar(20) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Semester` varchar(10) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Mobile` varchar(10) NOT NULL,
  `UserName` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Status` varchar(10) NOT NULL,
  `running_avg` float DEFAULT NULL,
  PRIMARY KEY (`Student_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `student_registration`
--

INSERT INTO `student_registration` (`Student_Id`, `RollNumber`, `Name`, `Semester`, `Email`, `Mobile`, `UserName`, `Password`, `Status`, `running_avg`) VALUES
(1, '1011112', 'Patel Jagruti', '6', 'jagruti@gmail.com', '9898989898', 'jagruti', 'jagruti', 'Active', 4.7677),
(2, '1011120', 'Patel Monika', '1', 'monika@gmail.com', '7878787878', 'monika', 'monika', 'Active', 3.5);

-- --------------------------------------------------------

--
-- Table structure for table `subject_master`
--

CREATE TABLE IF NOT EXISTS `subject_master` (
  `Subject_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Subject_Name` varchar(30) NOT NULL,
  `Semester` varchar(10) NOT NULL,
  PRIMARY KEY (`Subject_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `subject_master`
--

INSERT INTO `subject_master` (`Subject_Id`, `Subject_Name`, `Semester`) VALUES
(5, 'DSIP', '6'),
(6, 'SS', '6'),
(7, 'RAI', '6');

-- --------------------------------------------------------

--
-- Table structure for table `user_master`
--

CREATE TABLE IF NOT EXISTS `user_master` (
  `User_Id` int(11) NOT NULL AUTO_INCREMENT,
  `User_Name` varchar(20) NOT NULL,
  `User_Password` varchar(20) NOT NULL,
  PRIMARY KEY (`User_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user_master`
--

INSERT INTO `user_master` (`User_Id`, `User_Name`, `User_Password`) VALUES
(1, 'admin', 'admin');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
