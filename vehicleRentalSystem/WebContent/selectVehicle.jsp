<%@page import="vehicleRental.model.Reservation"%>
<%@page import="java.util.ArrayList"%>
<%@page import="vehicleRental.service.ReservationService"%>  


<%@page import="vehicleRental.model.Feedback"%>

<%@page import="vehicleRental.service.FeedbackService"%> 
 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
 <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
 
 
 
 <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

<!-- ------for footer -->
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<style>
.card {
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
  transition: 0.3s;
  width: 30%;
 
 
  
}

.card:hover {
  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
}

.container {
  padding: 2px 6px;
 
}
h4{
font-size:30px;
font-weight:bold;
color:red;
}
</style>

</head>
<body>
<h2></h2>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <a class="navbar-brand" href="#"></a>
  
    <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
      <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
        <li class="nav-item active">
          <a class="nav-link" href="customerHome.jsp">Home</a>
        </li>
        <li class="nav-item active">
          <a class="nav-link" href="home.jsp">About Us</a>
        </li>
        <li class="nav-item active">
          <a class="nav-link" href="reservation1.jsp">Reservation<span class="sr-only">(current)</span></a>
        </li>
          <li class="nav-item active">
          <a class="nav-link" href="AddAd.jsp">Add</a>
        </li>
        <li class="nav-item active">
          <a class="nav-link" href="AddNotifi.jsp">Notifications</a>
        </li>
        <li class="nav-item active">
          <a class="nav-link " href="inquiryForm.jsp" >Inquiries</a>
        </li>
      </ul>

        
        
        <button class="btn btn-outline-success my-2 my-sm-8" type="submit"  ><a href="login.jsp">Sign In</a></button>
        <button class="btn btn-outline-success my-2 my-sm-8" type="submit" ><a href="register.jsp">Sign up</a></button>
        
        
    </div>
  </nav>
  
  
  

<!---------------------------- End of the Navigation--------------------------------------------- -->






<div class="w3-card-4 w3-margin" style="width:98%" id="home">
  
  <div class="w3-row">
    <div class="w3-third w3-center">
     
      <h3 style="color:red;">Select Your Vehicle Category</h3>
      
    
      <div class="card" style="width:190%">
        <div class="container">
  <h2 style="color:blak;">Create Reservation</h2>
  
  <ul class="nav nav-tabs">
    <li class="nav-item">
      <a class="nav-link " href="reservation1.jsp">Reservation</a>
    </li>
    <li class="nav-item">
      <a class="nav-link active" href="selectVehicle.jsp">Vehicles</a>
    </li>
     <li class="nav-item">
       <a class="nav-link " href="extras.jsp">Extras</a>
    </li>
   
    <li class="nav-item">
      <a class="nav-link disabled" href="charges.jsp">Pay</a>
    </li>
  </ul>
</div>
        
      
  <img src="koda Octavia or similar.png" alt="Avatar" style="width:90%">
  <div class="container">
  	<h4><b>Skoda Octavia or similar</b></h4> 
  	<p>Price for model : Rs 15 000/=</p> 
    <p>person :4</p> 
    <p>Bags :3</p>
    <p>Charges : 60 rs/km</p>
    
     
     
     
      <div class="w3-container" >
      
      
     <form name="myForm" method="POST" action="UpdateVehiReservation" >
     <input type="hidden" name="price" value="15000" />
     <input type="hidden" name="charge" value="60" />
    
<br><br>
      
      <button  class="w3-button w3-black" name="vtype" value="Skoda Octavia or similar" >Select</button>
 </form>
 <button onclick="document.getElementById('id01').style.display='block'" class="w3-button w3-black" Style="margin-left:80%">More Information</button>
 
  <div id="id01" class="w3-modal">
    <div class="w3-modal-content">
      <header class="w3-container w3-teal"> 
        <span onclick="document.getElementById('id01').style.display='none'" 
        class="w3-button w3-display-topright">&times;</span>
        <h2>More Information</h2>
      </header>
      <div class="w3-container">
      <p>Intermediate car hire: A Great Mid-Range Solution</p>
        <p>
        Intermediate car hire is the perfect solution for all types of general purpose driving, 
        and when you are looking for more space to carry family and friends than you get small car.
         Intermediate cars also provide a greater degree of comfort for those longer journeys.
          Enterprise Rent-A-Car offers a great choice of intermediate cars; all popular models from leading manufacturers.
           They have enough space to carry five passengers in comfort. Intermediate cars have four doors,
            so there is no need to be climbing over tilted front seats,
             a feature welcomed by passengers who aren’t very agile. You also get the benefit of a separate,
              generously-sized boot, capable of taking three cases, the family shopping, or other light cargo.
               An intermediate hire car gives you a greater sense of confidence than smaller vehicles and 
               you can be assured that with sturdy enhanced safety features,
                you and your passengers can travel in safety. Whether you are hiring an intermediate car for business or
                 personal use, for short trips or long journeys, you will find it more than meets your requirements,
                  and with Enterprise, you get the benefit of their great backup team. Take a look at
                   the Enterprise web site today to see what intermediate cars are on offer.
                   
                   </p>
        <p>Intermediate car hire to suit many occasions</p>
        
         <p>You are used to driving your own small car, but are planning a long journey or touring holiday with others, 
         and want more room and a little more engine power. Besides, you don’t want to put another 500 miles 
         or more on your own car’s mileage or absorb the wear and tear. You can afford to hire a car,
          but you have a limited budget. If this sounds like you, then an intermediate car would provide all you
           need and Enterprise will tailor a deal for you that won’t break the bank. Alternatively, 
           perhaps you own an intermediate car, but are traveling abroad and need to hire a car that provides
            the kind of motoring you are used to. Enterprises have 6,000 branches in 70 different countries,
             and a presence at most major airports.
             Book your intermediate car online and it will be ready for you when your plane lands. Even better,
              by arrangement, you can return it to any Enterprise branch. Whether you need more room so your partner 
              and children can enjoy that family holiday in comfort, and take everything they need with them,
               or are taking elderly parents for a drive in the country and a nice meal, an intermediate car
                from Enterprise will fit the bill nicely.</p>
      </div>
      <footer class="w3-container w3-teal">
        <p>Thanks for reading...</p>
      </footer>
    </div>
  </div>
</div>
  </div>
</div>




<div class="card" style="width:190%">
  <img src="Vauxhall Corsa or similar.png" alt="Avatar" style="width:90%">
  <div class="container">
    <h4><b>Vauxhall Corsa or similar</b></h4> 
     
       <p>Price for model : Rs 10 000/=</p> 
      <p>person :4</p> 
       <p>Bags :2</p>
       <p>Charges : 50 rs/km</p>
  
    <div class="w3-container">
    <form name="myForm" method="POST" action="UpdateVehiReservation" >
    <input type="hidden" name="price" value="10000" />
    <input type="hidden" name="charge" value="50" />
    
<br><br>
      
      <button  class="w3-button w3-black" name="vtype" value="Vauxhall Corsa or similar">Select</button>
    </form>
  <button onclick="document.getElementById('id01').style.display='block'" class="w3-button w3-black" Style="margin-left:80%">More Information</button>

  <div id="id01" class="w3-modal">
    <div class="w3-modal-content">
      <header class="w3-container w3-teal"> 
        <span onclick="document.getElementById('id01').style.display='none'" 
        class="w3-button w3-display-topright">&times;</span>
        <h2>More Information</h2>
      </header>
      <div class="w3-container">
        <p>Economy vehicle car hire features</p>
          <p>When it comes to ship around or taking advantage of those sometimes difficult on-street parking spaces – or
           navigating tight turns in few store car parks – the benefits of economy car hire takes some beating. 
           Compact enough to handle conveniently, yet with enough comfort for longer trips to drive out of the city
            and explore the surrounding areas with ease, these agile cars are between minimum and large compact cars 
            in terms of size. The fuel efficiency of economy cars is, of course, a great advantage at the fuel pump,
             so they are an excellent choice for getting around while maintaining control over costs. Additionally,
              as these vehicles can accommodate up to four passengers and three light to medium-size bags,
               they work well for couples or small families with light luggage for short trips away. At Enterprise,
                customers can select from a wide range of reliable, late-model vehicles with super specifications
                 – all cleaned, maintained to perfection and double-checked before each hire so that customers can
                  count on a reliable vehicle and a stress-free hire experience – whether for business, personal or holiday
                   travel.
</p>
            <p>Why hire an Economy car</p>
        <p>Whether the planned trip is to attend a special event, go on holiday or visit family and friends,
         drivers will find economy car hire a great choice for two to four people with limited bags. Alternatively, 
         smaller compact three-door hire vehicles are very suitable for individual travelers and couples who need a car
          for transport around town or to discover an area. In contrast, five-door economy vehicles offer extra comfort
           for groups with back seat passengers. All the vehicles in these categories are noticeably lighter on fuel than
            their larger counterparts. Daily, weekly and monthly hire deals are available with the best prices online, with 
            pictures of different models of small and medium-sized cars on offer for hire, as well as straightforward booking
             in just a few clicks. There is a great choice of cars and locations across the UK and mainland Europe, including
              major cities and airports, so customers can be assured of a convenient collection and return point to suit 
              their planned journey. Now, it is easier than ever to book economy car hire car online for a location and time
               to fit in with other travel plans, while also enjoying the peace of mind expected when dealing with 
               the internationally identify Enterprise name.</p>
      </div>
      <footer class="w3-container w3-teal">
        <p>Thanks for reading...</p>
      </footer>
    </div>
  </div>
</div>
  </div>
</div>





 
<div class="card" style="width:190%" >
  <img src="Ford Focus or similar.png" alt="Avatar" style="width:90%">
  <div class="container">
    <h4><b>Ford Focus or similar</b></h4> 
   
      <p>Price for model : Rs 15 000/=</p> 
      <p>person :5</p> 
       <p>Bags :4</p> 
       <p>Charges : 60 rs/km</p>
      <div class="w3-container">
       <form name="myForm" method="POST" action="UpdateVehiReservation" >
      	<input type="hidden" name="price" value="15000" />
    	<input type="hidden" name="charge" value="60" />
    
<br><br>
      
      <button  class="w3-button w3-black" name="vtype" value="Ford Focus or similar">Select</button>
 </form>
  <button onclick="document.getElementById('id01').style.display='block'" class="w3-button w3-black" Style="margin-left:80%">More Information</button>

  <div id="id01" class="w3-modal">
    <div class="w3-modal-content">
      <header class="w3-container w3-teal"> 
        <span onclick="document.getElementById('id01').style.display='none'" 
        class="w3-button w3-display-topright">&times;</span>
        <h2>More Information</h2>
      </header>
      <div class="w3-container">
       <p>Hire a compact car</p>
        <p>If you are looking for compact car hire, then the choice offered by Enterprise Rent-A-Car is sure to exceed
         your expectations. Enterprise has a great range of three-door hatch backs, all from leading manufacturers. 
         The dash board tells you all you need to know in a way that is easy to understand, and controls are designed
          to make driving easy. This makes these cars great for squeezing into that last parking space.
           Whether you are shipping around town or taking a leisurely drive into the countryside,
            you will be impressed by their fuel economy and smart, comfortable interiors. 
            Don’t let the word compact fool you, either. These cars are ideal for two people who aren’t planning
             on a lot of long distance or motor way driving. And don’t worry about luggage; the generous boot
              offers more than enough space for two overnight bags or a suitcase. You can even fit in a golf bag or two,
               or a couple of sports umbrellas. For comfort, space, economy and convenience, it is hard to beat a compact
                car for those short to medium length journeys.</p>
        <p>A car for any situation</p>
        <p>Enterprise’s customers hire compact cars for all kinds of reasons. Some are parents whose own car has
         let them down. If you have ever experienced this, you will know the problems it can cause. How are you going
          to do the school run, let alone get yourself to work in the next town or nearby city? Let Enterprise solve
           your problems by hiring one of their compact three-door hatch backs at a very competitive rate for as long as
            you need it. Or perhaps you are someone who is traveling and has arrived in an area by train or plane and want
             to hire a car so that you can explore the surrounding area – a compact car should meet your needs very nicely.
              People often hire cars simply to save the wear and tear on their own vehicles, particularly if they know they
               are going to be doing a lot of running around, for example, before a wedding or a big celebration when there
                are lots of things to pick up, people to collect, etc. Remember, with Enterprise, you get great backup from 
                their expert team should you need it. With a great choice of small cars and highly competitive prices, why 
                not take a look at compact car hire from Enterprise – they have lots to offer.</p>
      </div>
      <footer class="w3-container w3-teal">
        <p>Thanks for reading...</p>
      </footer>
    </div>
  </div>
</div>
  </div>
</div>


  
<div class="card" style="width:190%">
  <img src="Mercedes E Class or similar.png" alt="Avatar" style="width:90%">
  <div class="container">
    <h4><b>Mercedes E Class or similar</b></h4> 
   
      <p>Price for model : Rs 12 000/=</p> 
      <p>person :4</p> 
       <p>Bags :2</p> 
       <p>Charges : 80 rs/km</p>
    
      <div class="w3-container">
      <form name="myForm" method="POST" action="UpdateVehiReservation" >
      <input type="hidden" name="price" value="12000" />
    	<input type="hidden" name="charge" value="80" />
       
<br><br>
      
      <button  class="w3-button w3-black" name="vtype" value="Mercedes E Class or similar">Select</button>
 </form>
  <button onclick="document.getElementById('id01').style.display='block'" class="w3-button w3-black" Style="margin-left:80%">More Information</button>

  <div id="id01" class="w3-modal">
    <div class="w3-modal-content">
      <header class="w3-container w3-teal"> 
        <span onclick="document.getElementById('id01').style.display='none'" 
        class="w3-button w3-display-topright">&times;</span>
        <h2>More Information</h2>
      </header>
      <div class="w3-container">
        <p>Large premium car hire</p>
          <p>For large premium car hire, you won’t find a better deal than with Enterprise Rent-A-Car.
           Enterprise maintains a superb fleet of luxury premium vehicles, just waiting to be collected by their more
            discerning customers. These are top-drawer cars that come backed by a long legacy of development from leading
             manufacturers who have tried to produce the ultimate in luxury driving. A large premium car gives you great 
             command of the road and you will be sure to attract many envious glances as you cruise smoothly along in comfort
              and style. Enterprise’s large premium cars are four-door models and seat five passengers in their bold, stylish
               interiors. Engine sizes start at 2.0L, so accelerating from 0-60 in a matter of seconds does not present a 
               challenge to these vehicles. The enhanced safety systems in premium cars work to protect not only drivers and
                passengers, but pedestrians too. Premium cars are available at most of Enterprise’s branches – book online to 
                get the best rates. You might be surprised at just how affordable these vehicles can be. When you hire a 
                premium car from Enterprise, you get fantastic support from industry professionals able to offer the best in
                 luxury motors.</p>
            <p>Exceptional comfort and room</p>
        <p>What better way to see a new country or do some exploring in your own country than from the seat of a 
        large premium car? Whether driving on the motor way, navigating country lanes or motoring in and around cities,
         these cars offer so much in terms of comfort and drive ability. If you want to see as much as you can during your
          holiday, you are going to be putting some miles in, so why settle for a smaller car where passengers will be 
          hunched together with scarcely room to move, let alone enjoy a short meals or a hot drink in route? There is a lot of
           boot room for picnics, luggage, or whatever else you might be carrying. Many people just book out a large premium 
           car to see what it feels like to drive a prestige motor; perhaps they are thinking of buying one and want to test
            it out beyond the limits of a normal main dealer test drive. Maybe they are just rewarding themselves for 
            achieving a particular goal. Large premium vehicles are always popular with corporate clients; they can seat 
            five employees comfortably, enabling work to continue during the journey.
</p>
      </div>
      <footer class="w3-container w3-teal">
        <p>Thanks for reading...</p>
      </footer>
    </div>
  </div>
</div>
     
  </div>
</div>


  

<div class="card"style="width:190%">
  <img src="Vauxhall Insignia or similar.png" alt="Avatar" style="width:90%">
  <div class="container">
    <h4><b>Vauxhall Insignia or similar</b></h4> 
    
      <p>Price for model : Rs 7 000/=</p> 
      <p>person :4</p> 
       <p>Bags :3</p>
       <p>Charges : 60 rs/km</p> 
    
      <div class="w3-container">
       <form name="myForm" method="POST" action="UpdateVehiReservation" >
       <input type="hidden" name="price" value="7000" />
    	<input type="hidden" name="charge" value="60" />
        
<br><br>
      
      <button  class="w3-button w3-black" name="vtype" value="Vauxhall Insignia or similar">Select</button>
 
 </form>
  <button onclick="document.getElementById('id01').style.display='block'" class="w3-button w3-black" Style="margin-left:80%">More Information</button>

  <div id="id01" class="w3-modal">
    <div class="w3-modal-content">
      <header class="w3-container w3-teal"> 
        <span onclick="document.getElementById('id01').style.display='none'" 
        class="w3-button w3-display-topright">&times;</span>
        <h2>More Information</h2>
      </header>
      <div class="w3-container">
        <p>Contact Enterprise Rent-A-Car for everyday low rates on standard car hire. Business or personal use,
         short trips or lengthy road trips, Enterprise has the saloon car you're looking for.</p>
        
      </div>
      <footer class="w3-container w3-teal">
        <p>Thanks for reading...</p>
      </footer>
    </div>
  </div>
</div>


    
    
  </div>
</div>



  

<div class="card" style="width:190%" >
  <img src="Toyota Aygo or similar.png" alt="Avatar" style="width:90%">
  <div class="container">
    <h4><b>Toyota Aygo or similar</b></h4> 
   
      <p>Price for model : Rs 10 000/=</p> 
      <p>person :4</p> 
       <p>Bags :3</p>
       <p>Charges : 50 rs/km</p> 
    
      <div class="w3-container">
      <form name="myForm" method="POST" action="UpdateVehiReservation" >
      <input type="hidden" name="price" value="10000" />
    	<input type="hidden" name="charge" value="50" />
       
<br><br>
      
      <button  class="w3-button w3-black" name="vtype" value="Toyota Aygo or similar">Select</button>
 </form>
  <button onclick="document.getElementById('id01').style.display='block'" class="w3-button w3-black"  Style="margin-left:80%">More Information</button>

  <div id="id01" class="w3-modal">
    <div class="w3-modal-content">
      <header class="w3-container w3-teal"> 
        <span onclick="document.getElementById('id01').style.display='none'" 
        class="w3-button w3-display-topright">&times;</span>
        <h2>More Information</h2>
      </header>
      <div class="w3-container">
        <p>Smaller car hire</p>
        <p>Enterprise Rent-A-Car maintains a great fleet of small cars, so if you are looking for minimum car hire,
         Enterprise is the place to go. You will be choosing a great looking, three-door hatch back from a major 
         manufacturer. Engine size will be somewhere in the range of 1.0L to 1.4L and it will be front wheel drive.
          Small cars are the ideal choice for one or two people who aren’t planning on long-distance driving. There is
           even room to squeeze in a couple of passengers, although it must be said that they will experience the greatest
            comfort over short distances. Minimum cars provide the ultimate in economic motoring, with high mileage from 
            one gallon of fuel, and they are easy to park and  especially out of trouble. If you haven’t driven a minimum
             car before, you should give it a try. Some small car drivers derive so much pleasure from the different driving
              experience that they wouldn’t swap their small car for anything. Minimum cars are reliable, their small engines 
              are more than powerful enough to get you up to the speed limit, and overall, they are less complex than larger 
              vehicles, so there is less to go wrong and faults occur less often.</p>
        <p>Why hire a Smaller car?</p>
        <p>If you are a sole traveler, or perhaps traveling with a partner, a minimum car makes a great run about
in which to explore the area you are visiting. With branches all over the world, there is bound to be an Enterprise
 outlet close to where you are. You can even arrange for Enterprise to bring the car to you and collect it again when 
 you are ready to move on. Mini cars are good for exploring large urban areas such as War wick, Stratford-on-Avon and
  Royal Leamington Spa, or the market towns of the Yorkshire Dales, where there are many interesting things to see in
   close proximity. They have enough power to motor from town to town and are ideal for driving in built-up areas. 
   When you want to get from A to B, on your own, hiring a minimum car gives you enough space for luggage and a good 
   level of comfort, all for a very competitive price. Why risk the vagaries of public transport,
    or have to shell out for expensive train and taxi fares, not to mention the walking involved? A minimum
     car will enable you to drive door-to-door and save you money.</p>
      </div>
      <footer class="w3-container w3-teal">
        <p>Thanks for reading...</p>
      </footer>
    </div>
  </div>
</div>
    
    
  </div>
</div>

      
    </div>
    
     
    <div class="w3-third w3-center" style="margin-left:450px" >
     
      
      <div class="card" style="width:110%">
  <img src="cars.png" alt="Avatar" style="width:100%">
  <div class="container">
    <h4><b>Your Reservation</b></h4> 
   
   <div class="w3-container">
  <h2>Reservation details</h2>

  <table  class="w3-table-all w3-hoverable">
    <thead>
      
   
		<%
			
		ReservationService reservationService = new ReservationService();
			ArrayList <Reservation> arrayList=reservationService.viewReservations();
            

		for(Reservation reservation:arrayList){
		%>
		
		<tr>
				<td>Reservation No		
			<td><%=reservation.getRno() %></td>
		</tr>
		<tr>	
				<td>Name
			<td><%=reservation.getName() %></td>
		</tr>	
		<tr>
				<td>Pick Up Location
			<td><%=reservation.getLocation() %></td>
		</tr>	
		<tr>	
				<td>Date
			<td><%=reservation.getDate() %></td>
		</tr>
		<tr>	
				<td>Time
			<td><%=reservation.getTime() %></td>
		</tr>
		<tr>
				<td>Drop Off Location
			<td><%=reservation.getDlocation() %></td>
		</tr>	
		<tr>	
				<td>Date
			<td><%=reservation.getDdate() %></td>
		</tr>
		<tr>	
				<td>Time
			<td><%=reservation.getDtime() %></td>
		</tr>
		<tr>	
				<td>Distance
			<td><%=reservation.getDistance() %>km</td>
		</tr>	
					
			
			
		
		<%
			}
		%>	
 
   
  </table>
</div>

   
   
  </div>
</div>
    </div>
    
    
       <div class="w3-third w3-center" style="margin-left:450px" >
     
      
      <div class="card" style="width:110%">
       <h2><b>Customer Views</b></h2> 
  <img src="feedback.gif" alt="Avatar" style="width:100%">
  <div class="container">
    <h4><b>Customer Views</b></h4> 
   
   <div class="w3-container">
  <h2></h2>

  <table  class="w3-table-all w3-hoverable">
    <thead>
      <tr class="w3-hover-text-green">
      
           
			
   
      </tr>
   
		<%
			
		FeedbackService feedbackService = new FeedbackService();
			ArrayList <Feedback> arrayList1=feedbackService.viewfeedback();

			for(Feedback feedback:arrayList1){
		%>
		
		<tr class="w3-hover-text-green">
			<td><%=feedback.getName() %></td>
			<td><%=feedback.getMsg() %></td>
			
		
			
			
			
			
		</tr>
		<%
			}
		%>	
 
   
  </table>
</div>

   
   
  </div>
</div>

 <div id="map" style="width:100%;height:800px;"></div>
    </div>
    
   
   
    
    
     
      
    
    
    
    
    
    
    
    
   
  </div>
  
 <footer class="w3-center w3-black w3-padding-64 w3-opacity w3-hover-opacity-off">
  <a href="#home" class="w3-button w3-light-grey"><i class="fa fa-arrow-up w3-margin-right"></i>To the top</a>
  <div class="w3-xlarge w3-section">
    <i class="fa fa-facebook-official w3-hover-opacity"></i>
    <i class="fa fa-instagram w3-hover-opacity"></i>
    <i class="fa fa-snapchat w3-hover-opacity"></i>
    <i class="fa fa-pinterest-p w3-hover-opacity"></i>
    <i class="fa fa-twitter w3-hover-opacity"></i>
    <i class="fa fa-linkedin w3-hover-opacity"></i>
  </div>
  <p>Powered by e-journey</p>
</footer>
  
  
</div>


</body>
</html>