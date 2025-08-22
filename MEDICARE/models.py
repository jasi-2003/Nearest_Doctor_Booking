from django.db import models

class login_table(models.Model):
    username=models.CharField(max_length=90)
    password=models.CharField(max_length=80)
    type=models.CharField(max_length=80)

class doctor_table(models.Model):
    LOGIN=models.ForeignKey(login_table,on_delete=models.CASCADE)
    Name=models.CharField(max_length=100)
    Image=models.FileField()
    DOB=models.DateField()
    Phone=models.BigIntegerField()
    Gender=models.CharField(max_length=100)
    Qualification=models.CharField(max_length=90)
    Email=models.CharField(max_length=90)

class patient_table(models.Model):
    LOGIN=models.ForeignKey(login_table,on_delete=models.CASCADE)
    First_name=models.CharField(max_length=80)
    Last_name=models.CharField(max_length=80)
    Gender=models.CharField(max_length=80)
    DOB=models.DateField()
    Place=models.CharField(max_length=70)
    Post=models.CharField(max_length=80)
    Pin=models.BigIntegerField()
    Phone=models.BigIntegerField()
    image=models.FileField()
    Email=models.CharField(max_length=70)

class complaint_table(models.Model):
    Patient=models.ForeignKey(patient_table,on_delete=models.CASCADE)
    complints=models.TextField()
    Date=models.DateField()
    Replay=models.CharField(max_length=100)
    Doctor=models.ForeignKey(doctor_table,on_delete=models.CASCADE)

class feedback_table(models.Model):
    Patient=models.ForeignKey(patient_table,on_delete=models.CASCADE)
    Feedback=models.TextField()
    Date=models.DateField()
    Doctor=models.ForeignKey(doctor_table,on_delete=models.CASCADE)


class chat_table(models.Model):
    Fromid=models.ForeignKey(login_table,on_delete=models.CASCADE,related_name="Fromid")
    Toid=models.ForeignKey(login_table,on_delete=models.CASCADE,related_name="Toid")
    Message=models.TextField()
    Date=models.DateField()



class Rating_table (models.Model):
    Rating = models.CharField(max_length=90)
    Riview = models.CharField(max_length=90)
    Date = models.CharField(max_length=90)
    Doctor= models.ForeignKey(doctor_table,on_delete=models.CASCADE)
    User = models.ForeignKey(patient_table,on_delete=models.CASCADE)


class Timeshedule_table(models.Model):
    Doctor= models.ForeignKey(doctor_table,on_delete=models.CASCADE)
    From_time= models.TimeField()
    To_time= models.TimeField()
    Day = models.CharField(max_length=90)


class appoiment_table(models.Model):
    Patient = models.ForeignKey(patient_table,on_delete=models.CASCADE)
    doctor = models.ForeignKey(doctor_table,on_delete=models.CASCADE)
    date = models.DateField()
    time = models.TimeField()
    status = models.CharField(max_length=100)

class viewprescription_table(models.Model):
    Patientid = models.ForeignKey(patient_table, on_delete=models.CASCADE)
    doctor=models.ForeignKey(doctor_table,on_delete=models.CASCADE)
    prescription = models.TextField()
    date=models.DateTimeField()






