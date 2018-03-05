<%@page import="java.util.Date"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.UUID"%>
<%@page import="org.mongodb.Musique"%>
<%@page import="org.mongodb.MusiqueDAO"%>
<%@page import="org.mongodb.UserDAO"%>
<!DOCTYPE html>
<html >
<head>
  <!-- Site made with Mobirise Website Builder v4.6.1, https://mobirise.com -->
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="generator" content="Mobirise v4.6.1, mobirise.com">
  <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
  <link rel="shortcut icon" href="assets/images/logomini-1-80x80.png" type="image/x-icon">
  <meta name="description" content="">
  <title>TiaCaraks</title>
  <link rel="stylesheet" href="assets/web/assets/mobirise-icons/mobirise-icons.css">
  <link rel="stylesheet" href="assets/tether/tether.min.css">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap-grid.min.css">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap-reboot.min.css">
  <link rel="stylesheet" href="assets/dropdown/css/style.css">
  <link rel="stylesheet" href="assets/socicon/css/styles.css">
  <link rel="stylesheet" href="assets/theme/css/style.css">
  <link rel="stylesheet" href="assets/mobirise/css/mbr-additional.css" type="text/css">
		<!-- Fontawesome Icon font -->
        <link rel="stylesheet" href="css/font-awesome.min.css">
		<!-- bootstrap.min -->
        <link rel="stylesheet" href="css/jquery.fancybox.css">
		<!-- bootstrap.min -->
        <link rel="stylesheet" href="css/owl.carousel.css">
		<!-- bootstrap.min -->
        <link rel="stylesheet" href="css/slit-slider.css">
		<!-- bootstrap.min -->
        <link rel="stylesheet" href="css/animate.css">
		<!-- Main Stylesheet -->
        <link rel="stylesheet" href="css/main.css">
		<!-- Modernizer Script for old Browsers -->
        <script src="js/modernizr-2.6.2.min.js"></script>
        <link rel="stylesheet" type="text/css" href="sweetalert2/dist/sweetalert2.css">
</head>
        
<body>
        <%
            MusiqueDAO mus = new MusiqueDAO();
            Musique[] musique = mus.listMusique();
            UserDAO user = new UserDAO();
            if(request.getParameter("email") != null && request.getParameter("pseudo") != null && request.getParameter("mdp") != null && request.getParameter("sexe") != null && request.getParameter("nationalite") != null) {
                String email = request.getParameter("email");
                String pseudo = request.getParameter("pseudo");
                String mdp = request.getParameter("mdp");
                String sexe = request.getParameter("sexe");
                String nationalite = request.getParameter("nationalite");
                UUID idOne = UUID.randomUUID();
                String keyGen = String.valueOf(idOne);
                Calendar c = Calendar.getInstance();
                c.add(Calendar.DAY_OF_WEEK,2);
                Date after=c.getTime();
                user.insertUsers(email, pseudo, mdp, sexe, nationalite, "0", keyGen, ""+after);
        %>    
                    <script src="sweetalert2/dist/sweetalert2.min.js"></script>
                    <script type="text/javascript">
                        swal("Inscription reussie", "Vous pouvez desormais acceder au jeu par le compte que vous venez de creer!", "success");
                    </script>
        <%  } %>
  <section class="menu cid-qJ9Wz9txd7" once="menu" id="menu1-e">

    
    <nav class="navbar navbar-expand beta-menu navbar-dropdown align-items-center navbar-fixed-top navbar-toggleable-sm" style="background: #005983">
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <div class="hamburger">
                <span></span>
                <span></span>
                <span></span>
                <span></span>
            </div>
        </button>
        <div class="menu-logo">
            <div class="navbar-brand">
                <span class="navbar-logo">
                    <a href="index.jsp">
                         <img src="assets/images/logomini-1-80x80.png" alt="Mobirise" title="" style="height: 3.8rem;">
                    </a>
                </span>
            </div>
        </div>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav nav-dropdown" data-app-modern-menu="true">
                <li class="nav-item">
                    <a class="nav-link link text-white display-4" href="#home-slider">
                        <span class="mbri-home mbr-iconfont mbr-iconfont-btn"></span>
                        Apercu
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link link text-white display-4" href="#header2-h">
                        <span class="mbri-search mbr-iconfont mbr-iconfont-btn"></span>A propos &nbsp;
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link link text-white display-4" href="#header2-f">
                        <span class="mbri-edit mbr-iconfont mbr-iconfont-btn"></span>
                        Inscription
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link link text-white display-4" href="#atyO">
                        <span class="socicon socicon-viber mbr-iconfont mbr-iconfont-btn"></span>
                        Contacts
                    </a>
                </li>
            </ul>
            <div class="navbar-buttons mbr-section-btn"><a class="btn btn-sm btn-primary display-4" id="downloadButton" style="color:white">
                    <span class="mbri-save mbr-iconfont mbr-iconfont-btn "></span>
                    Telecharger APK</a></div>
<script src="https://www.gstatic.com/firebasejs/4.10.1/firebase.js"></script>
<script>
  // Initialize Firebase
  var config = {
    apiKey: "AIzaSyD86ZtmguusPuKPDEGTFrHXCexAkxOARI8",
    authDomain: "tcaraks-645e5.firebaseapp.com",
    databaseURL: "https://tcaraks-645e5.firebaseio.com",
    projectId: "tcaraks-645e5",
    storageBucket: "tcaraks-645e5.appspot.com",
    messagingSenderId: "10313177630"
  };
  firebase.initializeApp(config);
  var storage = firebase.storage();
  
  var progress = document.getElementById('uploadProgress')
  var button = document.getElementById('uploadButton')
  var downloadButton = document.getElementById('downloadButton')
  
  var refDown = storage.ref('tiaCaraks.apk')
  
  downloadButton.addEventListener('click',function(){
	refDown.getDownloadURL().then(function(url){
            console.log("APK download")
            document.location.href=url
            console.log(url)
	})
  })
</script>
        </div>
    </nav>
</section>
        <section id="home-slider">
            <div id="slider" class="sl-slider-wrapper">
                <div class="sl-slider">
                    <div class="sl-slide" data-orientation="horizontal" data-slice1-rotation="-25" data-slice2-rotation="-25" data-slice1-scale="2" data-slice2-scale="2">
                        <div class="bg-img bg-img-1"></div>
                        <div class="slide-caption">
                            <div class="caption-content">
                                <br>
                                <h2 style="color:black; margin-left: 500px;"><strong>TiaCaraks</strong></h2>
                                <span class="animated fadeInDown" style="color:black; margin-left: 500px;">Un jeu fun, fait pour tous!</span>
                            </div>
                        </div>
                    </div>
                    <div class="sl-slide" data-orientation="vertical" data-slice1-rotation="10" data-slice2-rotation="-15" data-slice1-scale="1.5" data-slice2-scale="1.5">
                        <div class="bg-img bg-img-2"></div>
                        <div class="slide-caption">
                            <div class="caption-content">
                                <h2>Chanter</h2>
                                <span>En Malagasy ou en Francais ...</span>
                            </div>
                        </div>
                    </div>
                    <div class="sl-slide" data-orientation="horizontal" data-slice1-rotation="3" data-slice2-rotation="3" data-slice1-scale="2" data-slice2-scale="1">
                        <div class="bg-img bg-img-3"></div>
                        <div class="slide-caption">
                            <div class="caption-content">
                                <span>Il ne te reste plus qu'a t'inscrire ;-)</span>
                            </div>
                        </div>
                    </div>
                </div><!-- /sl-slider -->
                
                <nav id="nav-arrows" class="nav-arrows hidden-xs hidden-sm visible-md visible-lg">
                    <a href="javascript:;" class="sl-prev">
                        <i class="fa fa-angle-left fa-3x"></i>
                    </a>
                    <a href="javascript:;" class="sl-next">
                        <i class="fa fa-angle-right fa-3x"></i>
                    </a>
                </nav>
                <nav id="nav-dots" class="nav-dots visible-xs visible-sm hidden-md hidden-lg">
                    <span class="nav-dot-current"></span>
                    <span></span>
                    <span></span>
                </nav>
            </div><!-- /slider-wrapper -->
        </section>
    <div class="mbr-arrow hidden-sm-down" aria-hidden="true">
        <a href="#next">
            <i class="mbri-down mbr-iconfont"></i>
        </a>
    </div>

<section class="cid-qJ9WzbJoWs mbr-fullscreen" id="header2-p">
    <div class="container align-center">
        <h2>APERCU DE LA PLAYLIST</h2>
        <div class="row justify-content-md-center">
            <div class="col-md-6">
                <table class="table table-sm table-dark">
                <% for(int i = 0; i < 5; i++) { %>                        
                <tbody>
                    <tr class="table-primary">
                        <td class="table-info"><img src='<% out.print(musique[i].getImage()); %>' width="80px"></br>
                        </td>
                        <td><% out.print(musique[i].getArtiste()); %> - 
                                <% out.print(musique[i].getTitre()); %><br><audio src="<% out.print(musique[i].getFichier()); %>" controls></audio></td>
                    </tr>
                </tbody>
                <% } %>
                </table>
            </div>
            <div class="mbr-whites col-md-6">
                <table class="table table-sm table-dark">
                <% for(int i = 5; i < musique.length; i++) { %>                        
                <tbody>
                    <tr class="table-dark">
                        <td class="table-danger"><img src='<% out.print(musique[i].getImage()); %>' width="80px"></br>
                        </td>
                        <td><% out.print(musique[i].getArtiste()); %> - 
                                <% out.print(musique[i].getTitre()); %><br><audio src="<% out.print(musique[i].getFichier()); %>" controls></audio></td>
                    </tr>
                </tbody>
                <% } %>
                </table>
            </div>
        </div>
    </div>
    <div class="mbr-arrow hidden-sm-down" aria-hidden="true">
        <a href="#next">
            <i class="mbri-down mbr-iconfont"></i>
        </a>
    </div>
</section>

<section class="cid-qJa6MtuOkp mbr-fullscreen" id="header2-h">
    <div class="container align-left" id="regle">
	</br></br></br>
        <div class="row justify-content-md-left">
            <div class="mbr-white col-md-7">
                <h1 class="mbr-section-title mbr-bold pb-3 mbr-fonts-style display-1">Regle du jeu</h1>
                
                <p class="mbr-text pb-3 mbr-fonts-style display-5">Deviner le mot manquant de la chanson qui marche&nbsp;<br>afin de completer les paroles et de gagner des points.<br>Rien de plus facile ;-) Amusez-vous!</p>
                <div class="mbr-section-btn"><a class="btn btn-md btn-secondary display-4" href=""><span class="mbri-play mbr-iconfont mbr-iconfont-btn"></span>VIDEO DEMO</a></div>
            </div>
        </div>
    </div>
    <div class="mbr-arrow hidden-sm-down" aria-hidden="true">
        <a href="#next">
            <i class="mbri-down mbr-iconfont"></i>
        </a>
    </div>
</section>

<section class="cid-qJ9WzbJoWL mbr-fullscreen" id="header2-f">
    <div class="container align-center">
        <div class="row justify-content-md-center">
            <div class="col-md-6"></div>
            <div class="mbr-whites col-md-6" style="background: rgba(0,0,0,0.2)">
                <h1 class="mbr-section-title mbr-bold pb-3 mbr-fonts-style display-1" style="text-align: center">INSCRIPTION</h1>
                <form action="index.jsp" method="post">
                    <div class="input-group">
                        <span class="input-group-addon" id="basic-addon1">Email</span>
                        <input type="mail" name="email" class="form-control" placeholder="" required>
                    </div><br>
                    <div class="input-group">
                        <span class="input-group-addon" id="sizing-addon-2">Pseudo</span>
                        <input type="text" name="pseudo" class="form-control" placeholder="" required>
                    </div><br>
                    <div class="input-group">
                        <span class="input-group-addon" id="sizing-addon-2">Mot de passe</span>
                        <input type="password" name="mdp" class="form-control" placeholder="" required>
                    </div><br>
                    <div class="input-group">
                        <span class="input-group-addon" id="sizing-addon-2">Sexe</span>
                        <select class="form-control" name="sexe" aria-describedby="sizing-addon-2" required>
                            <option value="Homme">Homme</option>
                            <option value="Femme">Femme</option>
                        </select>
                    </div><br>
                    <div class="input-group">
                        <span class="input-group-addon" id="sizing-addon-2">Nationalite</span>
                            <select class="form-control" name="nationalite" aria-describedby="sizing-addon-2" required>
                                <option value="Malagasy">Malagasy</option>
                                <option value="Francais">Francais</option>
                                <option value="Autre">Autre</option>
                            </select>		
                    </div><br>
                    <button type="submit" class="btn btn-block btn-info" style="background: #28a745"> S'inscrire </button>
                </form>
            </div>
        </div>
    </div>
    <div class="mbr-arrow hidden-sm-down" aria-hidden="true">
        <a href="#next">
            <i class="mbri-down mbr-iconfont"></i>
        </a>
    </div>
</section>
    
<section class="cid-qJ9WzeYpDo mbr-reveal" id="atyO">

    <div class="container">
        <div class="media-container-row content text-white">
            <div class="col-12 col-md-3">
                <div class="media-wrap">
                    <img src="assets/images/shure-3300x3000.png" alt="Mobirise" title="">
                </div>
            </div>
            <div class="col-12 col-md-3 mbr-fonts-style display-7">
                <h5 class="pb-3"></h5>
                <p class="mbr-text"></p>
            </div>
            <div class="col-12 col-md-3 mbr-fonts-style display-7">
                <h5 class="pb-3" style="color:white">
                    <strong>Adresse</strong></h5>
                <p class="mbr-text">IT-University Andoharanofotsy<br></p>
            </div>
            <div class="col-12 col-md-3 mbr-fonts-style display-7">
                <h5 class="pb-3" style="color:white"><strong>Contacts</strong></h5>
                <p class="mbr-text">Phone: +261 34 91 251 70<br>Email: bentsiory@gmail.com 
				<br>et cedrickrandria@gmail.com
				<br></p>
            </div>
        </div>
        <div class="footer-lower">
            <div class="media-container-row">
                <div class="col-sm-12">
                    <hr>
                </div>
            </div>
            <div class="media-container-row mbr-white">
                <div class="col-sm-6 copyright">
                    <p class="mbr-text mbr-fonts-style display-7">
                        © Copyright 2018 - Tsiory &amp; Cedrick</p>
                </div>
                <div class="col-md-6">
                    
                </div>
            </div>
        </div>
    </div>
</section>


  <script src="assets/web/assets/jquery/jquery.min.js"></script>
  <script src="assets/popper/popper.min.js"></script>
  <script src="assets/tether/tether.min.js"></script>
  <script src="assets/bootstrap/js/bootstrap.min.js"></script>
  <script src="assets/smoothscroll/smooth-scroll.js"></script>
  <script src="assets/dropdown/js/script.min.js"></script>
  <script src="assets/touchswipe/jquery.touch-swipe.min.js"></script>
  <script src="assets/theme/js/script.js"></script>
  
		<!-- Main jQuery -->
        <script src="js/jquery-1.11.1.min.js"></script>
		<!-- Single Page Nav -->
        <script src="js/jquery.singlePageNav.min.js"></script>
		<!-- jquery.fancybox.pack -->
        <script src="js/jquery.fancybox.pack.js"></script>
		<!-- Owl Carousel -->
        <script src="js/owl.carousel.min.js"></script>
        <!-- jquery easing -->
        <script src="js/jquery.easing.min.js"></script>
        <!-- Fullscreen slider -->
        <script src="js/jquery.slitslider.js"></script>
        <script src="js/jquery.ba-cond.min.js"></script>
		<!-- onscroll animation -->
        <script src="js/wow.min.js"></script>
		<!-- Custom Functions -->
        <script src="js/main.js"></script>
</body>
</html>