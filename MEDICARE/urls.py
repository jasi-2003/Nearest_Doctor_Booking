from django.urls import  path

from MEDICARE import views

urlpatterns = [
    path('',views.login,name='login'),
    path('loginpost',views.loginpost,name='loginpost'),
    path('adddoctor',views.adddoctor,name='adddoctor'),
    path('add_doctor_post',views.add_doctor_post,name='add_doctor_post'),
    path('adminhome',views.adminhome,name='adminhome'),
    path('viewreview',views.viewreview,name='viereview'),
    path('register',views.register,name='register'),
    path('sendreply/<int:id>',views.sendreply,name='sendreply'),
    path('complaint',views.complaint,name='complaint'),
    path('sendreplypost',views.sendreplypost,name='sendreplypost'),
    path('feedback',views.feedback,name='feedback'),
    path('viwedoctor',views.viwedoctor,name=' viwedoctor'),
    path('viwedoctor_search',views.viwedoctor_search,name=' viwedoctor_search'),
    path('timeshadule',views.timeshadule,name='timeshadule'),
    path('Timeshedule_post',views.Timeshedule_post,name='Timeshedule_post'),
    path('doctorhome',views.doctorhome,name='doctorhome'),
    path('ManageTimeShedule',views.ManageTimeShedule,name='ManageTimeShedule'),
    path('edittimeschedule/<int:id>',views.edittimeschedule,name='edittimeschedule'),
    path('edittimeschedulepost',views.edittimeschedulepost,name='edittimeschedulepost'),
    path('TrackEmergency',views.TrackEmergency,name='TrackEmergency'),
    path('uploadpriscription',views.uploadpriscription,name='uploadpriscription'),
    path('AppoimentDetails',views.AppoimentDetails,name='AppoimentDetails'),
    path('patientAppoiment',views.patientAppoiment,name='patientAppoiment'),
    path('viewprescription/<int:id>',views.viewprescription,name='viewprescription,'),
    path('AppoimentDetails',views.AppoimentDetails,name='AppoimentDetails,'),
    path('add_presc',views.add_presc,name='add_presc,'),
    path('ins_presc',views.ins_presc,name='ins_presc,'),
    path('search_patientAppoiment',views.search_patientAppoiment,name='search_patientAppoiment,'),
    path('search_TrackEmergency',views.search_TrackEmergency,name='search_TrackEmergency,'),
    path('delete_sch/<int:id>',views.delete_sch,name='delete_sch,'),
    path('viwefeedback_search',views.viwefeedback_search,name='viwefeedback_search,'),
    path('patientcomplaint',views.patientcomplaint,name='patientcomplaint,'),
    path('viewreview_search',views.viewreview_search,name='viewreview_search,'),
    path('register__search',views.register__search,name='register__search,'),
    path('delete_dct/<int:id>',views.delete_dct,name='delete_dct'),
    path('edit_dct/<int:id>',views.edit_dct,name='edit_dct'),
    path('edit_dctpost',views.edit_dctpost,name='edit_dctpost'),









    path('chatwithuser', views.chatwithuser, name='chatwithuser'),
    path('chatview', views.chatview, name='chatview'),
    path('coun_msg/<int:id>', views.coun_msg, name='coun_msg'),
    path('coun_insert_chat/<str:msg>/<int:id>', views.coun_insert_chat, name='coun_insert_chat'),
    path(' users = login_table.objects.get(Username=username, Password=password'),








        ]