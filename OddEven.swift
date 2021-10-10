
enum NumError:Error
{
  case negative
  var msg:String
  {
    switch self
    {
        case .negative : return "negative value Not Allowed"
    }
  }
}

func CheckNum(num:Int) throws
{
 if(num<0)
 {
    throw NumError.negative
 }
 if(num%2==0)
 {
   print("Even")
 }
 else
 {
   print("Odd")
 }
}

do
{
  try CheckNum(num:1)
}catch
{
    if let error=error as?NumError
    {
      print(error.msg)
    }
}