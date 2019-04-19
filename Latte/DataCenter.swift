import Foundation
/*
 let formatter = DateFormatter()
 formatter.dateStyle = .short
 let str = formatter.string(from: Date())
 
 
 let yesterday = Date().addingTimeInterval(-60*24*60)
 
 let cal = Calendar.current
 let day = cal.component(.day, from: Date())
 */
var Birthdays:[Date] = []
var Albums:[Album] = []
var Messages:[Message] = []

 struct Date{
    var Name: String
    var Year: Int
    var Month: Int
    var Day: Int
 
    init(){
        self.Name = "None"
        self.Year = 0
        self.Month = 0
        self.Day = 0
    }
 
    init(Name: String, Year: Int, Month: Int, Day: Int){
        self.Name = Name
        self.Year = Year
        self.Month = Month
        self.Day = Day
    }
 }

 struct Time{
    let Hour: Int
    let Minute: Int
 
    init(){
        self.Hour = 0
        self.Minute = 0
    }
 
    init(Hour: Int, Minute: Int){
        self.Hour = Hour
        self.Minute =  Minute
    }
 }

 //대화 탭
 struct Message{
    let Content: String
    let SendDay: Date
    let SendTime: Time
 
    init(Content: String, SendDay: Date, SendTime: Time){
        self.Content = Content
        self.SendDay = SendDay
        self.SendTime = SendTime
    }
 }

 struct Emoticon{
    let Emoticon: String
    let SendDay: Date
    let SendTime: Time
 
    init(Emoticon: String, SendDay: Date, SendTime: Time){
        self.Emoticon = Emoticon
        self.SendDay = SendDay
        self.SendTime = SendTime
    }
 }

 //앨범 탭
 struct Photo{
    var Title: String
    let Image: String
    let UploadDay: Date
    let UploadTime: Time
 }

 struct Album{
    var Title: String
    var Number: Int
    let UploadDay: Date
 
    init(){
        Title = ""
        Number = 0
        UploadDay = Date.init()
    }
 
    init(Title: String, Number: Int, UploadDay: Date){
        self.Title = Title
        self.Number = Number
        self.UploadDay = UploadDay
    }
 }

 //기념일 탭
 struct LoveDay{
    var TrueLoveDays: Int
    var RealDays: Int
    let StartDate: Date
 
    init(){
        TrueLoveDays = 0
        RealDays = 0
        StartDate = Date.init()
    }
 
    init(TrueLoveDays: Int, RealDays: Int, StartDate: Date){
        self.TrueLoveDays = TrueLoveDays
        self.RealDays = RealDays
        self.StartDate = StartDate
    }
 
    mutating func Calculate(StartDate: Date, Today: Date) -> Date{
        var CalDays: Date = Date.init()
 /*
 calculate real days
 */
        CalDays.Year = Today.Year - StartDate.Year
        CalDays.Month = Today.Month - StartDate.Month
        CalDays.Day = Today.Day - StartDate.Day
 
        return CalDays
    }
 }

var Birthday = Date(Name: "Birthday", Year: 1997, Month: 3, Day: 29)
var NewAlbum = Album(Title: "with you", Number: 0, UploadDay: Date.init(Name: "UploadDay", Year: 2019,Month: 03,Day: 28))
let NewMessage = Message(Content: "Good Morning", SendDay: Date.init(Name: "SendDay", Year: 2019, Month: 03, Day: 28), SendTime: Time.init(Hour: 18, Minute: 25))

func createBirthday(){
    let MyDay = Date(Name: "MyDay", Year: 1997, Month: 3, Day: 29)
    let YourDay = Date(Name: "YourDay", Year: 1998, Month: 12, Day: 21)
    let Christmas = Date(Name: "Christmas", Year: 2019, Month: 12, Day: 25)
    let Valentines = Date(Name: "Valentines", Year: 2019, Month: 2, Day: 14)
    let NewYearsEve = Date(Name: "NewYearsEve", Year: 2019, Month: 12, Day: 31)
    let NewYearsDay = Date(Name: "NewYearsDay", Year: 2020, Month: 1, Day: 1)
    let ThanksGivingDay = Date(Name: "ThanksGivingDay", Year: 2019, Month: 9, Day: 13)
    let SummerVacation = Date(Name: "SummerVacation", Year: 2019, Month: 6, Day: 21)
    let WinterVacation = Date(Name: "WinterVacation", Year: 2019, Month: 12, Day: 20)
    let Anniversary = Date(Name: "Anniversary", Year: 2020, Month: 3, Day: 15)

    Birthdays.append(MyDay)
    Birthdays.append(YourDay)
    Birthdays += [Christmas, Valentines, NewYearsDay, NewYearsEve, ThanksGivingDay, SummerVacation, WinterVacation, Anniversary]
}
