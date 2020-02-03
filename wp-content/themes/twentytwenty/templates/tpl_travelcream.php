<?php
/**
 * Template Name: Travelcream
 * Template Post Type: post, page
 *
 * @package WordPress
 * @subpackage Twenty_Twenty
 * @since 1.0
 */
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>travelcream</title>
    <link rel="stylesheet" href="css/font-awesome-4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <div id = "container">
        <div id="banner">
            <header>
                <div id = "left_part">
                    <div id="logo">
                        TravelCream
                    </div>
                </div>
                <nav id="header-menu">
                    <ul>
                        <li id="flights_in_header_menu"><a href="#flights">Flights</a></li>
                        <li id="hotels_in_header_menu"><a href="#hotels">Hotels</a></li>
                        <li id="attractions_in_header_menu"><a href="#attractions">Attractions</a></li>
                        <li id="trips_in_header_menu"><a href="#trips">Trips</a></li>
                    </ul>
                </nav>
                <div id = "right_part">
                    <a href="#">
                        Login
                    </a>
                </div>
            </header>
            <!--<img src="img/Layer-24.png" alt="">-->
            <div id="navigation">
                <div id="MintoText">
                    <span id="minto">Do you whant to visit Paris?</span>
                    <span>Why not</span>
                </div>
            </div>
            <div id="form_wrapper">
                <form action="#" method="post">
                    <input type="text" name="from" placeholder="Where are you leaving from?">
                    <input type="text" name="to" placeholder="Where do you whant to go?">
                    <input placeholder="Date" type="text" name="date" onfocus="(this.type='date')">
                    <input type="submit" value="Send">
                </form>
            </div>
        </div>
        <div class="flights" id="flights">
            <div class="wrapper_menu_flights">
                <div class = "left">
                    <div class="fl">
                        Flights
                    </div>
                </div>
                <nav class="flights_menu">
                    <ul>
                        <li id="non_stop_flights"><a href="#">Non stop</a></li>
                        <li id="best_price_flights"><a href="#">Best Price</a></li>
                        <li id="airline_flights"><a href="#">Airline</a></li>
                        <li id="schedule_flights"><a href="#">Schedule</a></li>
                    </ul>
                </nav>
            </div>
            <div id="flights_table">
                <table>
                    <tr>
                        <th>Airline</th>
                        <th>Date</th>
                        <th>Departure</th>
                        <th>Arrival</th>
                        <th>Time</th>
                        <th>Price</th>
                    </tr>
                    <tr>
                        <td><h5 id="vueling">Vueling</h5><span>VO1367<span></td>
                        <td><h5>03/11/2017</h5><span>in 3 days<span></td>
                        <td><h5>Paris(CDI)</h5><span>07:45<span></td>
                        <td><h5>Miami</h5><span>5:00<span></td>
                        <td><h5>08:45</h5><span>CDG-MIA<span></td>
                        <td><a href="#">870 $</a></td>
                    </tr>
                    <tr>
                        <td><h5 id="af">Air France</h5><span>VO1367<span></td>
                        <td><h5>03/11/2017</h5><span>in 3 days<span></td>
                        <td><h5>Paris(CDI)</h5><span>07:45<span></td>
                        <td><h5>Miami</h5><span>5:00<span></td>
                        <td><h5>08:45</h5><span>CDG-MIA<span></td>
                        <td><a href="#">1023 $</a></td>
                    </tr>
                    <tr>
                        <td><h5 id="am">American</h5><span>VO1367<span></td>
                        <td><h5>03/11/2017</h5><span>in 3 days<span></td>
                        <td><h5>Paris(CDI)</h5><span>07:45<span></td>
                        <td><h5>Miami</h5><span>5:00<span></td>
                        <td><h5>08:45</h5><span>CDG-MIA<span></td>
                        <td><a href="#">980 $</a></td>
                    </tr>
                    <tr>
                        <td><h5 id="delta">Delta</h5><span>VO1367<span></td>
                        <td><h5>03/11/2017</h5><span>in 3 days<span></td>
                        <td><h5>Paris(CDI)</h5><span>07:45<span></td>
                        <td><h5>Miami</h5><span>5:00<span></td>
                        <td><h5>08:45</h5><span>CDG-MIA<span></td>
                        <td><a href="#">1340 $</a></td>
                    </tr>
                    <tr>
                        <td><h5 id="trans">Transavia</h5><span>VO1367<span></td>
                        <td><h5>03/11/2017</h5><span>in 3 days<span></td>
                        <td><h5>Paris(CDI)</h5><span>07:45<span></td>
                        <td><h5>Miami</h5><span>5:00<span></td>
                        <td><h5>08:45</h5><span>CDG-MIA<span></td>
                        <td><a href="#">930 $</a></td>
                    </tr>
                </table>
            </div>
            <div id="see_all_flights">
                <a href="#">See all flights</a>
            </div>
        </div>
        <div class="flights" id="hotels">
            <div class="wrapper_menu_flights">
                <div class = "left">
                    <div class="fl">
                        Hotels
                    </div>
                </div>
                <nav class="flights_menu">
                    <ul>
                        <li id="best_price_hotels"><a href="#">Best price</a></li>
                        <li id="distance_hotels"><a href="#">Distance</a></li>
                    </ul>
                </nav>
            </div>
            <div class="hotels_view">
                <div class="picture_text_buttom">
                    <img src="/img/pod.png" alt="">
                    <div class="text_buttom">
                        <span>Hotel Paris Quest Acheres</span>
                        <div class="text">
                            <div class="km">12,3 km</div>
                            <div class="wifi">Free Wi-Fi</div>
                        </div>
                        <a href="#">30 $</a>
                    </div>
                </div>
                <div class="picture_text_buttom">
                    <img src="/img/lamp.png" alt="">
                    <div class="text_buttom">
                        <span>Hotel Paris Quest Acheres</span>
                        <div class="text">
                            <div class="km">12,3 km</div>
                            <div class="wifi">Free Wi-Fi</div>
                        </div>
                        <a href="#">38 $</a>
                    </div>
                </div>
                <div class="picture_text_buttom">
                    <img src="/img/room.png" alt="">
                    <div class="text_buttom">
                        <span>Hotel Paris Quest Acheres</span>
                        <div class="text">
                            <div class="km">12,3 km</div>
                            <div class="wifi">Free Wi-Fi</div>
                        </div>
                        <a href="#">42 $</a>
                    </div>
                </div>
                <div class="picture_text_buttom">
                    <img src="/img/bedroom.png" alt="">
                    <div class="text_buttom">
                        <span>Hotel Paris Quest Acheres</span>
                        <div class="text">
                            <div class="km">12,3 km</div>
                            <div class="wifi">Free Wi-Fi</div>
                        </div>
                        <a href="#">46 $</a>
                    </div>
                </div>
                <div class="picture_text_buttom">
                    <img src="/img/living_room.png" alt="">
                    <div class="text_buttom">
                        <span>Hotel Paris Quest Acheres</span>
                        <div class="text">
                            <div class="km">12,3 km</div>
                            <div class="wifi">Free Wi-Fi</div>
                        </div>
                        <a href="#">52 $</a>
                    </div>
                </div>
                <div class="picture_text_buttom">
                    <img src="/img/flower.png" alt="">
                    <div class="text_buttom">
                        <span>Hotel Paris Quest Acheres</span>
                        <div class="text">
                            <div class="km">12,3 km</div>
                            <div class="wifi">Free Wi-Fi</div>
                        </div>
                        <a href="#">56 $</a>
                    </div>
                </div>
            </div>
            <div id="see_all_flights">
                <a href="#">See all hotels</a>
            </div>
        </div>
        <div class="attractions" id="attractions">
            <div class="wrapper_menu_flights">
                <div class = "left">
                    <div class="fl">
                        Attractions
                    </div>
                </div>
                <nav class="flights_menu">
                    <ul>
                        <li id="all_attractions"><a href="#">All</a></li>
                        <li id="shopping_attractions"><a href="#">Shopping</a></li>
                        <li id="shows_attractions"><a href="#">Shows</a></li>
                        <li id="parks_attractions"><a href="#">Parks</a></li>
                        <li id="circuits_attractions"><a href="#">Circuits</a></li>
                        <li id="museums_attractions"><a href="#">Museums</a></li>
                        <li id="monuments_attractions"><a href="#">Monuments</a></li>
                    </ul>
                </nav>
            </div>
            <div class="wrap_attr">
                <div class="img-block">
                    <img src="/img/et.png" alt="">
                </div>
                <div id="vert_pictures">
                    <div>
                        <img src="/img/louvres.png" alt="">
                    </div>
                    <div>
                        <img src="/img/ntdp.png" alt="">
                    </div> 
                </div>
                <div id="horiz_pictures">
                    <div>
                        <img src="/img/fdh.png" alt="">
                    </div>
                    <div>
                        <img src="/img/adt.png" alt="">
                    </div>
                    <div>
                        <img src="/img/sc.pdg" alt="">
                    </div>
                </div>
            </div>
            <div id="see_all_attractions">
                <a href="#">See all attractions</a>
            </div>
        </div>
        <div class="flights" id="trips">
            <div class="wrapper_menu_flights">
                <div class = "left">
                    <div class="fl">
                        Trips
                    </div>
                </div>
                <nav class="flights_menu">
                    <ul>
                        <li id="best_price_hotels"><a href="#">Best Trips</a></li>
                        <li id="distance_hotels"><a href="#">Popularity</a></li>
                    </ul>
                </nav>
            </div>
            <div class="trips_view">
                <div class="trips_pic_text">
                    <img src="/img/et_trips.png" alt="">
                    <div class="trips_text">
                        <h6>
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                        </h6>
                        <span>
                            Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.
                        </span>
                    </div>
                </div>
            </div>
            <div class="trips_view">
                <div class="trips_pic_text">
                    <img src="/img/boat.png" alt="">
                    <div class="trips_text">
                        <h6>
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                        </h6>
                        <span>
                            Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.
                        </span>
                    </div>
                </div>
            </div>
            <div class="trips_view">
                <div class="trips_pic_text">
                    <img src="/img/pyram.png" alt="">
                    <div class="trips_text">
                        <h6>
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                        </h6>
                        <span>
                            Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.
                        </span>
                    </div>
                </div>
            </div>
            <div id="see_all_flights">
                <a href="#">See all Trips</a>
            </div>
        </div>
    </div>
    <footer>
        <div class="wrapper_footer">
            <div>
                <h4>
                  Cities  
                </h4>
                <div class="menu_footer">
                    <ul>
                        <li><a href="#">Paris</a></li>
                        <li><a href="#">Miami</a></li>
                        <li><a href="#">Madrid</a></li>
                        <li><a href="#">Tokyo</a></li>
                        <li><a href="#">Pekin</a></li>
                    </ul>
                </div>
            </div>
            <div>
                <h4>
                  Explore  
                </h4>
                <div class="menu_footer">
                    <ul>
                        <li><a href="#">Register</a></li>
                        <li><a href="#">Login</a></li>
                        <li><a href="#">Assistence</a></li>
                        <li><a href="#">Eco</a></li>
                    </ul>
                </div>
            </div>
            <div>
                <h4>
                  About us
                </h4>
                <div class="menu_footer">
                    <ul>
                        <li><a href="#">About TavelCream</a></li>
                        <li><a href="#">Careers</a></li>
                        <li><a href="#">Blog</a></li>
                        <li><a href="#">Privacy Policy</a></li>
                        <li><a href="#">Terms of Usage</a></li>
                    </ul>
                </div>
            </div>
            <div>
                <h4>
                  Contact
                </h4>
                <div class="menu_footer">
                    <ul>
                        <li>Feel free to get in touch via email</li>
                        <li><a href="mailto:support@travelcream.com">support@travelcream.com</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </footer>
</body>
</html>