# SeaSkimmer
def chkformat(s):
    if "$GPGGA" in s:
        print("GPGGA format")
        s=s.split(",")
        Data=(float(s[2]), s[3], float(s[4]), s[5], float(s[8]))
        print(Data)
        latitude_formated = str(Data[0])
        latitude_formated = latitude_formated[:2].lstrip('0') + "." + "%.7s" % str(float(latitude_formated[2:]) * 1.0 / 60.0).lstrip("0.")
        if Data[1] == "S":
            lat = float(latitude_formated)*-1
            print("Latitude = " + str(lat))
        else:
            lat = float(latitude_formated)
            print("Latitude = " + str(lat))
        longitude_formatted = str(Data[2])
        longitude_formatted = longitude_formatted[:3].lstrip('0') + "." + "%.7s" % str(float(longitude_formatted[3:]) * 1.0 / 60.0).lstrip("0.")
        if Data[3] == "W":
            long = float(longitude_formatted)*-1
            print("Longitude = " + str(long))
        else:
            long = float(longitude_formatted)
            print("Longitude = " + str(long))
        print("hdop = " + str(Data[4]))
    elif "$GPVTG" in s:
        print("GPVTG format")
        s=s.split(",")
        Data=(float(s[1]), s[2], float(s[7]), s[8])
        print(Data)
    else:
        print("not valid")    
line=input()
print(chkformat(line))
