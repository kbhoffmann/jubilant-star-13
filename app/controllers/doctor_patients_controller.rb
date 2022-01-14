class DoctorPatientsController < ApplicationController
  def destroy
    doctor_patient = DoctorPatient.find_by(doctor_id: params[:id], patient_id: params[:patient_id])
    doctor_patient.destroy

    redirect_to "/doctors/#{params[:id]}"
  end
end
