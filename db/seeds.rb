
puts "Seeding Admin"
User.create(username: "Messi", password: "leomessi", email:"messi@gmail.com", role: "admin")

puts "Admin? Done!"

puts "Seeding Category"

Category.create(name: "Business", description: "Discover tips and best practices to scale up your business.", image_url: "https://media.istockphoto.com/id/1273400289/photo/mature-businessman-giving-presentation-to-executive-team.jpg?s=612x612&w=0&k=20&c=UeOSAZVVWKcTIVBXEmxGSX473l8Q9rYplb6V4oChipk=")
Category.create(name: "Technology", description: "Get to learn new trends in tech from the best.", image_url: "https://images.pexels.com/photos/4665064/pexels-photo-4665064.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load")
Category.create(name: "Art Workshops", description: "Expand your hobbies in our diverse and interactive workshops.", image_url: "https://media.istockphoto.com/id/510568014/photo/young-couple-visits-an-art-gallery.jpg?s=612x612&w=0&k=20&c=04TeOSkEzW0khjbDg-rXIaNEN0y4371j9Uu81oUxfhg=")
Category.create(name: "Sports", description: "Spike your adrenaline by the mind-blowing sports events.", image_url: "https://media.istockphoto.com/id/530479339/photo/quarterback-changing-play-at-line-of-scrimmage-during-football-game.jpg?s=612x612&w=0&k=20&c=u1wkrvhPr1OcEfNeDHC2qtt2NDMZKN8ZaQ0W-FF54Fg=")
Category.create(name: "Music Concerts", description: "Let's replenish and raise your spirits once more.", image_url: "https://media.istockphoto.com/id/1137781483/photo/black-male-guitarist-singing-and-playing-acoustic-guitar-on-stage.jpg?s=612x612&w=0&k=20&c=FumC-iuwoUWijPo6wcx4V162mV5PB8g7FQGOR7A1a88=")
Category.create(name: "Community", description: "Get support and gain the accountability to achieve your goals.", image_url: "https://media.istockphoto.com/id/468563368/photo/group-of-happy-young-people-showing-thumbs-up.jpg?s=612x612&w=0&k=20&c=XPy5djLrojuutTF_KspQZBoJ3WZQK9dcWJ8G5iO7mXs=")

puts "Done seeding init"

puts "Seeding Events"

Event.create([
    {
        name: "Forbes Today",
        description: "Some random words about being rich and all",
        image_url: "https://images.unsplash.com/photo-1556761175-5973dc0f32e7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1032&q=80",
        location: "Kasarani",
        start_date: Date.today + 1.days,
    end_date: Date.today + 2.days,
    start_time: "10:00 AM",
    end_time: "5:00 PM",
    total_tickets: 30000,
    remaining_tickets: 30000,
    amount: 1000,
    category_id:1

    },
    {
        name: "Hackathon",
        description: "Some random words about tech and all",
        image_url: "https://images.unsplash.com/photo-1526374965328-7f61d4dc18c5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
        location: "USIU",
        start_date: Date.today + 5.days,
    end_date: Date.today + 6.days,
    start_time: "10:00 AM",
    end_time: "5:00 PM",
    total_tickets: 3000,
    remaining_tickets: 3000,
    amount: 100,
    category_id:2
    },{
        name: "Picasso",
        description: "Artistry and all",
        image_url: "https://images.unsplash.com/flagged/photo-1572392640988-ba48d1a74457?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80",
        location: "Radisson",
        start_date: Date.today + 25.days,
    end_date: Date.today + 26.days,
    start_time: "10:00 AM",
    end_time: "5:00 PM",
    total_tickets: 300,
    remaining_tickets: 300,
    amount: 1500,
    category_id:3
    },{
        name: "Collympics",
        description: "Sport is what we do when we truly enjoy life",
        image_url: "https://images.unsplash.com/photo-1565992441121-4367c2967103?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=327&q=80",
        location: "Kasarani",
        start_date: Date.today + 30.days,
    end_date: Date.today + 32.days,
    start_time: "10:00 AM",
    end_time: "5:00 PM",
    total_tickets: 300000,
    remaining_tickets: 300000,
    amount: 100,
    category_id:4
    },{
        name: "Solfest",
        description: "When words fail, music speaks",
        image_url: "https://images.unsplash.com/photo-1459749411175-04bf5292ceea?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
        location: "KICC",
        start_date: Date.today + 40.days,
    end_date: Date.today + 41.days,
    start_time: "10:00 AM",
    end_time: "5:00 PM",
    total_tickets: 10000,
    remaining_tickets: 10000,
    amount: 1000,
    category_id:5
    },{
        name: "Natureit",
        description: "We are a community that loves nature and conserves it",
        image_url: "https://images.unsplash.com/photo-1433086966358-54859d0ed716?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
        location: "City Park",
        start_date: Date.today + 60.days,
    end_date: Date.today + 61.days,
    start_time: "10:00 AM",
    end_time: "5:00 PM",
    total_tickets: 50000,
    remaining_tickets: 50000,
    amount: 100,
    category_id:6
    }
    
])

puts "Done seeding events"

bookings = Booking.create([
    {
        no_of_tickets: 5,
        amount_paid:5000,
        user_id: 1,
        event_id: 1
    },
    {
        no_of_tickets: 10,
        amount_paid: 15000,
        user_id: 2,
        event_id: 2 
    },
    {
        no_of_tickets: 20,
        amount_paid: 2000,
        user_id: 3,
        event_id: 3
    },
    {
        no_of_tickets: 10,
        amount_paid:1000,
        user_id: 1,
        event_id: 4
    },
    {
        no_of_tickets: 5,
        amount_paid: 5000,
        user_id: 2,
        event_id: 5
    },
    {
        no_of_tickets: 20,
        amount_paid: 2000,
        user_id: 3,
        event_id: 6
    }
])

puts "Done seeding Bookings"