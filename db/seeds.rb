# 5.times do
#     workout1 = Workout.create(
#         activity: Faker::GreekPhilosophers.quote,
#         frequency: rand(1..7),
#         info: Faker::Quotes::Shakespeare.hamlet_quote,
#         user: User.last
#     )
# end

# dates = [
#     '11/20/2020 17:00',
#     '11/20/2020 18:00',
#     '11/20/2020 19:00',
#     '11/20/2020 10:00',
#     '11/20/2020 11:00',
#     '11/23/2020 17:00',
#     '11/24/2020 17:00',
#     '11/26/2020 17:00',
#     '11/27/2020 17:00',
#     '11/28/2020 17:00',
#     '11/29/2020 17:00',
#     '11/30/2020 17:00',
# ]

# dates.each do |date| 
#     a = Availability.create(
#         datetime: DateTime.strptime(date,"%m/%d/%Y %H:%M"),
#         location: "Rovella's athletic club"
#     )
#     Appointment.create(user: User.all.sample, availability: a)
# end

# more_dates = [
#     '11/23/2020 15:00',
#     '11/24/2020 15:00',
#     '11/26/2020 15:00',
#     '11/27/2020 15:00',
#     '11/28/2020 15:00',
#     '11/29/2020 15:00',
#     '11/30/2020 15:00',
# ]

# more_dates.each do |date|
#     Availability.create(
#         datetime: DateTime.strptime(date,"%m/%d/%Y %H:%M"),
#         location: "Rovella's athletic club"
#     )
# end




