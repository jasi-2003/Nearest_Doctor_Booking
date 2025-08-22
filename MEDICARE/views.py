import json

from django.core.files.storage import FileSystemStorage
from django.http import HttpResponse, JsonResponse
from django.shortcuts import render
from datetime import datetime
# Create your views here.
from MEDICARE.models import *


def login(request):
    return render(request,"index.html")


def loginpost(request):
    try:
        username=request.POST['textfield']
        password=request.POST['textfield2']
        ob=login_table.objects.get(username=username,password=password)
        if ob.type == 'admin':
            return HttpResponse('''<script>alert("Login Successfull");window.location='/adminhome'</script>''')
        elif ob.type == 'doctor':
            request.session['lid']=ob.id
            return HttpResponse('''<script>alert("Welcome To Doctor Home");window.location='/doctorhome'</script>''')

        else:
            return HttpResponse('''<script>alert("Invalid Username Or Password");window.location='/'</script>''')
    except:
        return HttpResponse('''<script>alert("Invalid Username Or Password");window.location='/'</script>''')


def adddoctor(request):
    return render(request,"admin/Add doctor.html")

def add_doctor_post(request):
    name = request.POST['textfield']
    dob  = request.POST['textfield7']
    gender=request.POST['radiobutton' ]
    qulification=request.POST['textfield2']
    phonenumber=request.POST['textfield3']
    email=request.POST['textfield4']
    username=request.POST['textfield5']
    Password=request.POST['textfield6']
    image=request.FILES['file']
    fss = FileSystemStorage()
    image_file = fss.save(image.name, image)


    ob=login_table()
    ob.username=username
    ob.password=Password
    ob.type='doctor'
    ob.save()
    doc_obj = doctor_table()

    doc_obj.Name = name
    doc_obj.Image=image_file
    doc_obj.DOB=dob
    doc_obj.Phone=phonenumber
    doc_obj.Gender=gender
    doc_obj.Qualification=qulification
    doc_obj.Email=email
    doc_obj.LOGIN=ob
    doc_obj.save()
    return HttpResponse('''<script>alert("Added Suuccess");window.location='/viwedoctor'</script>''')


def \
        adminhome(request):
      return render(request,"admin/admin_index.html")


def viewreview(request):
    # ob=drreviw
    ob=Rating_table.objects.all()
    return render(request,"admin/Dr Rviews& WRINTING.html",{"val":ob})

def  viewreview_search(request):
    search = request.POST['textfield6']
    ob = Rating_table.objects.filter(Doctor__Name__istartswith=search)
    return render(request, "admin/Dr Rviews& WRINTING.html", {"val": ob, 'search': search})



def register(request):
    ob=patient_table.objects.all()
    return render(request,"admin/registered usetr.html",{'val':ob})

def register__search(request):
    search = request.POST['textfield6']
    ob=patient_table.objects.filter(First_name__istartswith=search)
    return render(request, "admin/registered usetr.html", {"val": ob, 'search': search})



def sendreply(request,id):
    request.session['sr']=id
    return render(request,"admin/Send Replay.html")

def sendreplypost(request):
    reply=request.POST['textfield']

    ob=complaint_table.objects.get(id=request.session['sr'])
    ob.Replay=reply
    ob.save()
    return HttpResponse('''<script>alert("Reply Sended");window.location='/complaint'</script>''')






def complaint(request):
    ob=complaint_table.objects.all()
    return render(request,"admin/View complaint&Date.html",{"val":ob})

def patientcomplaint(request):
    search = request.POST['textfield6']
    ob=complaint_table.objects.filter(Date__icontains=search)
    return render(request, "admin/View complaint&Date.html", {"val": ob, 'search': search})

def feedback(request):
    ob=feedback_table.objects.all()
    return render(request,"admin/view feedback.html",{"val":ob})

def viwefeedback_search(request):
    search = request.POST['Datefield']
    ob = feedback_table.objects.filter(Date=search)
    return render(request, "admin/view feedback.html", {"val": ob, 'search': search})


def viwedoctor(request):
    ob=doctor_table.objects.all()
    return render(request,"admin/viwe doctor.html",{"val":ob})


def viwedoctor_search(request):
    search = request.POST['textfield']
    ob = doctor_table.objects.filter(Name__istartswith=search)
    return render(request, "admin/viwe doctor.html", {"val": ob, 'search': search})

def delete_dct(request,id):
    ob=doctor_table.objects.get(id=id)
    ob.delete()
    return HttpResponse('''<script>alert("Deleted");window.location='/viwedoctor'</script>''')

def edit_dct(request,id):
    request.session['ed']=id
    ob=doctor_table.objects.get(id=id)
    return render(request, "admin/Edit doctor.html", {'val': ob, 'dob':str(ob.DOB)})

def edit_dctpost(request):
    try:
        name = request.POST['textfield']
        dob  = request.POST['textfield7']
        gender=request.POST['radiobutton' ]
        qulification=request.POST['textfield2']
        phonenumber=request.POST['textfield3']
        email=request.POST['textfield4']
        image=request.FILES['file']
        fss = FileSystemStorage()
        image_file = fss.save(image.name, image)

        doc_obj = doctor_table.objects.get(id=request.session['ed'])

        doc_obj.Name = name
        doc_obj.Image=image_file
        doc_obj.DOB=dob
        doc_obj.Phone=phonenumber
        doc_obj.Gender=gender
        doc_obj.Qualification=qulification
        doc_obj.Email=email
        doc_obj.save()
        return HttpResponse('''<script>alert("Edit Suuccess");window.location='/viwedoctor'</script>''')
    except:
        name = request.POST['textfield']
        dob = request.POST['textfield7']
        gender = request.POST['radiobutton']
        qulification = request.POST['textfield2']
        phonenumber = request.POST['textfield3']
        email = request.POST['textfield4']

        doc_obj = doctor_table.objects.get(id=request.session['ed'])

        doc_obj.Name = name
        doc_obj.DOB = dob
        doc_obj.Phone = phonenumber
        doc_obj.Gender = gender
        doc_obj.Qualification = qulification
        doc_obj.Email = email
        doc_obj.save()
        return HttpResponse('''<script>alert("Edit Suuccess");window.location='/viwedoctor'</script>''')


#___________________________DOCTOR___________________________________


def timeshadule(request):
    return render(request,"doctor/Add time shadule.html")

def Timeshedule_post(request):
    day=request.POST['day']
    fromtime=request.POST['textfield2']
    totime=request.POST['textfield3']

    ob=Timeshedule_table()
    ob.From_time=fromtime
    ob.Day=day
    ob.To_time=totime
    ob.Doctor=doctor_table.objects.get(LOGIN__id=request.session['lid'])
    ob.save()
    return HttpResponse('''<script>alert("Add Success");window.location='/ManageTimeShedule'</script>''')





def doctorhome(request):
    return render(request,"doctor/doctor_index.html")

def ManageTimeShedule(request):
    ob=Timeshedule_table.objects.filter(Doctor__LOGIN__id=request.session['lid'])
    return render(request,"doctor/Manage Time Shedule.html",{"val":ob})


def edittimeschedule(request,id):
    request.session['es']=id
    ob=Timeshedule_table.objects.get(id=id)
    return render(request,"doctor/Edit time shadule.html",{"val":ob})


def edittimeschedulepost(request):
    day=request.POST['day']
    fromtime=request.POST['textfield2']
    totime=request.POST['textfield3']

    ob=Timeshedule_table.objects.get(id=request.session['es'])
    ob.From_time=fromtime
    ob.Day=day
    ob.To_time=totime
    ob.save()
    return HttpResponse('''<script>alert("Edit Success");window.location='/ManageTimeShedule'</script>''')



def delete_sch(request,id):
    ob=Timeshedule_table.objects.get(id=id)
    ob.delete()
    return HttpResponse('''<script>alert("Deleted");window.location='/ManageTimeShedule'</script>''')


def TrackEmergency(request):
    ob = emergencyrequest_table.objects.all()
    return render(request,"doctor/Track Emergency.html",{"val":ob})


def search_TrackEmergency(request):
    d=request.POST['textfield4']
    ob = emergencyrequest_table.objects.filter(date=d)
    return render(request,"doctor/Track Emergency.html",{"val":ob,"d":d})



def uploadpriscription(request):
    return render(request,"doctor/upload priscription.html")

def  AppoimentDetails(request):
    ob = appoiment_table.objects.filter(doctor__LOGIN__id=request.session['lid'],date=datetime.today())
    return render(request,"doctor/View Appoiment Details.html",{"val":ob})

def patientAppoiment(request):
    ob=appoiment_table.objects.filter(doctor__LOGIN__id=request.session['lid'])
    return render(request,"doctor/view patient Appoiment.html",{"val":ob})


def search_patientAppoiment(request):
    d=request.POST['textfield']
    ob=appoiment_table.objects.filter(date__icontains=d)
    return render(request,"doctor/view patient Appoiment.html",{"val":ob,"d":d})





def viewprescription(request,id):
    request.session['aid']=id
    ob = appoiment_table.objects.get(id=id)
    obp=viewprescription_table.objects.filter(Patientid__id=ob.Patient.id)
    return render(request,"doctor/viewprescription.html",{"val":obp})


    

def add_presc(request):

    return render(request,"doctor/add_presc.html")



def ins_presc(request):
    p=request.POST['p']
    id=request.session['aid']
    ob = appoiment_table.objects.get(id=id)
    obp = viewprescription_table()
    obp.Patientid=ob.Patient
    obp.prescription=p
    obp.date=datetime.today()
    obp.doctor=doctor_table.objects.get(LOGIN__id=request.session['lid'])
    obp.save()
    return HttpResponse('''<script>alert("Inserted");window.location='/AppoimentDetails'</script>''')





"=====================================chat with user ======================================================"
def chatwithuser(request):
    ob = patient_table.objects.all()
    return render(request,"doctor/user_chat.html",{'val':ob})




def chatview(request):
    ob = patient_table.objects.all()
    d=[]
    for i in ob:
        r={"name":i.First_name,'photo':i.image.url,'email':i.Email,'loginid':i.LOGIN.id}
        d.append(r)
    return JsonResponse(d, safe=False)




def coun_insert_chat(request,msg,id):
    print("===",msg,id)
    ob=chat_table()
    ob.Fromid=login_table.objects.get(id=request.session['lid'])
    ob.Toid=login_table.objects.get(id=id)
    ob.Message=msg
    ob.Date=datetime.now().strftime("%Y-%m-%d")
    ob.save()

    return JsonResponse({"task":"ok"})
    # refresh messages chatlist



def coun_msg(request,id):

    ob1=chat_table.objects.filter(Fromid=id,Toid=request.session['lid'])
    ob2=chat_table.objects.filter(Fromid__id=request.session['lid'],Toid=id)
    combined_chat = ob1.union(ob2)
    combined_chat=combined_chat.order_by('id')
    res=[]
    for i in combined_chat:
        res.append({"from_id":i.Fromid.id,"msg":i.Message,"date":i.Date,"chat_id":i.id})

    obu=patient_table.objects.get(LOGIN__id=id)


    return JsonResponse({"data":res,"name":obu.First_name,"photo":obu.image.url,"user_lid":obu.LOGIN.id})


    





# %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% WEBSWERVICE%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

def login_code(request):
    username = request.POST['uname']
    password = request.POST['pass']
    try:
        users = login_table.objects.get(Username=username, Password=password)
        if users is None:
            data = {"task": "invalid"}

        else:
            data = {"task": "valid", "id": users.id}
            r = json.dumps(data)
            return HttpResponse(r)
    except:
        data = {"task": "invalid"}
        r = json.dumps(data)
        print(r)
        return HttpResponse(r)

