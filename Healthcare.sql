CREATE DATABASE healthcare;

USE healthcare;

CREATE TABLE diseases (
    id INT AUTO_INCREMENT PRIMARY KEY,
    disease_name VARCHAR(255) NOT NULL,
    symptoms VARCHAR(500) NOT NULL
);
INSERT INTO diseases (disease_name, symptoms) VALUES
('Common Cold', 'cough,runny nose,sneezing,sore throat'),
('Flu', 'fever,headache,body ache,fatigue'),
('Malaria', 'fever,chills,sweating,headache'),
('Diabetes', 'frequent urination,increased thirst,weight loss,fatigue'),
('Pneumonia', 'cough,fever,shortness of breath,chest pain'),
('Asthma', 'wheezing,coughing,shortness of breath,chest tightness'),
('COVID-19', 'fever,cough,loss of taste,loss of smell,shortness of breath'),
('Hypertension', 'headache,dizziness,blurred vision,nausea'),
('Tuberculosis', 'cough,weight loss,fever,night sweats'),
('Bronchitis', 'cough,chest discomfort,shortness of breath,wheezing'),
('Migraine', 'headache,nausea,sensitivity to light,sensitivity to sound'),
('Gastritis', 'abdominal pain,nausea,vomiting,indigestion'),
('Dengue Fever', 'fever,joint pain,rash,muscle pain'),
('Anemia', 'fatigue,weakness,pale skin,shortness of breath'),
('Arthritis', 'joint pain,stiffness,swelling,limited movement'),
('Chickenpox', 'rash,fever,itching,fatigue'),
('Meningitis', 'fever,headache,stiff neck,sensitivity to light'),
('Hepatitis', 'fatigue,jaundice,abdominal pain,nausea'),
('Heart Attack', 'chest pain,shortness of breath,nausea,sweating'),
('Stroke', 'weakness in one side of the body,difficulty speaking,vision problems,dizziness');

INSERT INTO diseases (disease_name, symptoms) VALUES
('Allergic Rhinitis', 'sneezing,runny nose,itchy eyes,nasal congestion'),
('Alzheimer\'s Disease', 'memory loss,confusion,difficulty concentrating,disorientation'),
('Appendicitis', 'abdominal pain,loss of appetite,nausea,fever'),
('Arteriosclerosis', 'chest pain,shortness of breath,weakness,fatigue'),
('Bacterial Pneumonia', 'fever,shortness of breath,productive cough,chest pain'),
('Bipolar Disorder', 'mood swings,hyperactivity,irritability,low energy'),
('Bladder Infection', 'painful urination,frequent urination,lower abdominal pain,blood in urine'),
('Brain Tumor', 'headache,vision problems,nausea,seizures'),
('Breast Cancer', 'breast lump,skin changes,nipple discharge,pain in breast'),
('Celiac Disease', 'diarrhea,bloating,weight loss,anemia'),
('Chlamydia', 'painful urination,abnormal discharge,pelvic pain,fever'),
('Chronic Bronchitis', 'chronic cough,mucus production,shortness of breath,chest tightness'),
('Chronic Fatigue Syndrome', 'extreme fatigue,sore throat,headache,joint pain'),
('Cirrhosis', 'fatigue,jaundice,swollen abdomen,loss of appetite'),
('Cystic Fibrosis', 'persistent cough,lung infections,wheezing,difficulty breathing'),
('Deep Vein Thrombosis', 'swelling in leg,pain in leg,red skin,warmth in leg'),
('Depression', 'persistent sadness,loss of interest,fatigue,sleep disturbances'),
('Dermatitis', 'red rash,itching,blisters,cracking skin'),
('Eczema', 'dry skin,itching,redness,swelling'),
('Epilepsy', 'seizures,confusion,muscle stiffness,loss of consciousness'),
('Food Poisoning', 'nausea,vomiting,diarrhea,stomach cramps'),
('Gallstones', 'severe abdominal pain,nausea,vomiting,jaundice'),
('Gastroesophageal Reflux Disease (GERD)', 'heartburn,acid reflux,chest pain,regurgitation'),
('Gout', 'joint pain,swelling,redness,warmth in affected joints'),
('Graves\' Disease', 'weight loss,rapid heartbeat,sweating,irritability'),
('Heart Failure', 'shortness of breath,fatigue,swollen legs,rapid heartbeat'),
('HIV/AIDS', 'fever,fatigue,swollen lymph nodes,weight loss'),
('Hyperthyroidism', 'weight loss,tremors,increased appetite,anxiety'),
('Hypothyroidism', 'weight gain,fatigue,cold intolerance,slow heart rate'),
('Irritable Bowel Syndrome', 'abdominal pain,bloating,diarrhea,constipation'),
('Kidney Infection', 'fever,chills,back pain,nausea'),
('Kidney Stones', 'severe pain in back,blood in urine,nausea,vomiting'),
('Leukemia', 'fatigue,bruising,frequent infections,weight loss'),
('Liver Cancer', 'abdominal pain,jaundice,nausea,weight loss'),
('Lung Cancer', 'persistent cough,shortness of breath,chest pain,coughing up blood'),
('Lupus', 'joint pain,skin rash,fatigue,fever'),
('Lyme Disease', 'fever,headache,fatigue,bullseye rash'),
('Measles', 'fever,cough,rash,red eyes'),
('Mumps', 'swollen salivary glands,fever,headache,muscle aches'),
('Osteoarthritis', 'joint pain,stiffness,swelling,limited range of motion'),
('Ovarian Cancer', 'abdominal bloating,weight loss,pelvic pain,frequent urination'),
('Pancreatitis', 'abdominal pain,nausea,vomiting,fever'),
('Parkinson\'s Disease', 'tremors,slow movement,muscle stiffness,impaired balance'),
('Pelvic Inflammatory Disease', 'abdominal pain,fever,irregular periods,painful urination'),
('Pleurisy', 'sharp chest pain,cough,shortness of breath,fever'),
('Psoriasis', 'red patches on skin,scaly skin,itching,joint pain'),
('Rheumatoid Arthritis', 'joint pain,swelling,stiffness,fatigue'),
('Shingles', 'painful rash,blisters,fever,headache'),
('Sinusitis', 'facial pain,nasal congestion,headache,cough'),
('Stomach Ulcer', 'abdominal pain,heartburn,nausea,bloating');

CREATE TABLE patients (
    patient_id INT AUTO_INCREMENT PRIMARY KEY,
    patient_name VARCHAR(100),
    age INT,
    gender ENUM('Male', 'Female', 'Other'),
    disease VARCHAR(100),
    city VARCHAR(100)
);

INSERT INTO patients (patient_name, age, gender, disease, city) VALUES
('Amit Sharma', 35, 'Male', 'Diabetes', 'Mumbai'),
('Priya Singh', 42, 'Female', 'Hypertension', 'Delhi'),
('Rajesh Patel', 55, 'Male', 'Asthma', 'Bangalore'),
('Neha Gupta', 29, 'Female', 'COVID-19', 'Chennai'),
('Ravi Kumar', 47, 'Male', 'Bronchitis', 'Hyderabad'),
('Anjali Joshi', 39, 'Female', 'Heart Attack', 'Kolkata'),
('Suresh Nair', 61, 'Male', 'Stroke', 'Pune'),
('Kavita Rao', 52, 'Female', 'Tuberculosis', 'Ahmedabad'),
('Rohit Verma', 31, 'Male', 'Malaria', 'Jaipur'),
('Anita Roy', 26, 'Female', 'Migraine', 'Surat'),
('Deepak Chauhan', 48, 'Male', 'Dengue Fever', 'Mumbai'),
('Pooja Bhat', 56, 'Female', 'Pneumonia', 'Delhi'),
('Simran Kaur', 23, 'Female', 'Arthritis', 'Bangalore'),
('Arjun Rao', 49, 'Male', 'Anemia', 'Chennai'),
('Rajiv Sen', 44, 'Male', 'Chronic Bronchitis', 'Hyderabad'),
('Sonia Iyer', 33, 'Female', 'Cirrhosis', 'Kolkata'),
('Manoj Reddy', 59, 'Male', 'Leukemia', 'Pune'),
('Meena Malhotra', 27, 'Female', 'Liver Cancer', 'Ahmedabad'),
('Ravi Shankar', 50, 'Male', 'Kidney Stones', 'Jaipur'),
('Anita Gupta', 46, 'Female', 'Gastritis', 'Surat'),
('Gaurav Jain', 30, 'Male', 'Diabetes', 'Mumbai'),
('Isha Thakur', 28, 'Female', 'Hypertension', 'Delhi'),
('Siddharth Sharma', 62, 'Male', 'Asthma', 'Bangalore'),
('Abhay Deshmukh', 40, 'Male', 'COVID-19', 'Chennai'),
('Nisha Chauhan', 37, 'Female', 'Bronchitis', 'Hyderabad'),
('Siddharth Roy', 53, 'Male', 'Heart Attack', 'Kolkata'),
('Rakesh Soni', 60, 'Male', 'Stroke', 'Pune'),
('Seema Tiwari', 33, 'Female', 'Tuberculosis', 'Ahmedabad'),
('Pankaj Dubey', 41, 'Male', 'Malaria', 'Jaipur'),
('Rohini Singh', 25, 'Female', 'Migraine', 'Surat'),
('Rahul Jain', 57, 'Male', 'Dengue Fever', 'Mumbai'),
('Shivani Desai', 34, 'Female', 'Pneumonia', 'Delhi'),
('Suman Mishra', 45, 'Female', 'Arthritis', 'Bangalore'),
('Akash Gupta', 50, 'Male', 'Anemia', 'Chennai'),
('Rohit Sen', 36, 'Male', 'Chronic Bronchitis', 'Hyderabad'),
('Manish Kapoor', 38, 'Male', 'Cirrhosis', 'Kolkata'),
('Ravi Khanna', 29, 'Male', 'Leukemia', 'Pune'),
('Ankita Bhat', 52, 'Female', 'Liver Cancer', 'Ahmedabad'),
('Ajay Nair', 54, 'Male', 'Kidney Stones', 'Jaipur'),
('Nandini Iyer', 24, 'Female', 'Gastritis', 'Surat'),
('Saurabh Roy', 63, 'Male', 'Diabetes', 'Mumbai'),
('Preeti Reddy', 28, 'Female', 'Hypertension', 'Delhi'),
('Mahesh Patel', 49, 'Male', 'Asthma', 'Bangalore'),
('Kiran Chauhan', 46, 'Female', 'COVID-19', 'Chennai'),
('Rajat Deshmukh', 55, 'Male', 'Bronchitis', 'Hyderabad'),
('Pooja Sharma', 31, 'Female', 'Heart Attack', 'Kolkata'),
('Amit Kumar', 47, 'Male', 'Stroke', 'Pune'),
('Neha Kapoor', 42, 'Female', 'Tuberculosis', 'Ahmedabad'),
('Suresh Sen', 53, 'Male', 'Malaria', 'Jaipur'),
('Priyanka Verma', 34, 'Female', 'Migraine', 'Surat'),
('Rahul Singh', 30, 'Male', 'Dengue Fever', 'Mumbai'),
('Richa Thakur', 40, 'Female', 'Pneumonia', 'Delhi'),
('Vijay Gupta', 39, 'Male', 'Arthritis', 'Bangalore'),
('Sunita Rao', 51, 'Female', 'Anemia', 'Chennai'),
('Manish Sinha', 61, 'Male', 'Chronic Bronchitis', 'Hyderabad'),
('Ankita Sharma', 27, 'Female', 'Cirrhosis', 'Kolkata'),
('Vikas Reddy', 45, 'Male', 'Leukemia', 'Pune'),
('Prakash Chauhan', 33, 'Male', 'Liver Cancer', 'Ahmedabad'),
('Deepak Verma', 58, 'Male', 'Kidney Stones', 'Jaipur'),
('Simran Roy', 25, 'Female', 'Gastritis', 'Surat'),
('Arun Iyer', 32, 'Male', 'Diabetes', 'Mumbai'),
('Sonia Kapoor', 44, 'Female', 'Hypertension', 'Delhi'),
('Pradeep Reddy', 48, 'Male', 'Asthma', 'Bangalore'),
('Rajesh Khanna', 60, 'Male', 'COVID-19', 'Chennai'),
('Anjali Sen', 41, 'Female', 'Bronchitis', 'Hyderabad'),
('Poonam Roy', 36, 'Female', 'Heart Attack', 'Kolkata'),
('Ajay Patel', 59, 'Male', 'Stroke', 'Pune'),
('Rakesh Rao', 50, 'Male', 'Tuberculosis', 'Ahmedabad'),
('Vikram Chauhan', 46, 'Male', 'Malaria', 'Jaipur'),
('Kavita Sen', 33, 'Female', 'Migraine', 'Surat'),
('Rajesh Verma', 38, 'Male', 'Dengue Fever', 'Mumbai'),
('Sakshi Gupta', 25, 'Female', 'Pneumonia', 'Delhi'),
('Manoj Tiwari', 55, 'Male', 'Arthritis', 'Bangalore'),
('Ritika Malhotra', 39, 'Female', 'Anemia', 'Chennai'),
('Ashok Roy', 62, 'Male', 'Chronic Bronchitis', 'Hyderabad'),
('Pooja Iyer', 29, 'Female', 'Cirrhosis', 'Kolkata'),
('Ajay Patel', 43, 'Male', 'Leukemia', 'Pune'),
('Suman Rao', 54, 'Female', 'Liver Cancer', 'Ahmedabad'),
('Pankaj Sen', 47, 'Male', 'Kidney Stones', 'Jaipur'),
('Anita Reddy', 28, 'Female', 'Gastritis', 'Surat'),
('Vivek Khanna', 41, 'Male', 'Diabetes', 'Mumbai'),
('Seema Sharma', 35, 'Female', 'Hypertension', 'Delhi'),
('Naveen Sen', 48, 'Male', 'Asthma', 'Bangalore'),
('Sunil Reddy', 50, 'Male', 'COVID-19', 'Chennai'),
('Shivani Gupta', 27, 'Female', 'Bronchitis', 'Hyderabad'),
('Ramesh Verma', 51, 'Male', 'Heart Attack', 'Kolkata');

CREATE TABLE disease_cost (
    disease_id INT AUTO_INCREMENT PRIMARY KEY,
    disease_name VARCHAR(255) NOT NULL,
    cost DECIMAL(10, 2) NOT NULL,
    expected_recovery_time VARCHAR(50) NOT NULL
);
INSERT INTO disease_cost (disease_name, cost, expected_recovery_time) 
VALUES
('Influenza', 2000.00, '7-10 days'),
('Diabetes', 5000.00, 'Ongoing management'),
('Hypertension', 4000.00, 'Ongoing management'),
('Chickenpox', 1500.00, '7-14 days'),
('Asthma', 3500.00, 'Ongoing management'),
('Pneumonia', 3000.00, '2-3 weeks'),
('Tuberculosis', 8000.00, '6-9 months'),
('Dengue Fever', 2500.00, '7-10 days'),
('Malaria', 2200.00, '10-14 days'),
('COVID-19', 6000.00, '2-4 weeks'),
('Common Cold', 500.00, '3-7 days'),
('Bronchitis', 1800.00, '1-2 weeks'),
('Arthritis', 4500.00, 'Ongoing management'),
('Hepatitis B', 7000.00, '3-6 months'),
('Migraine', 2500.00, 'Ongoing management'),
('Chronic Kidney Disease', 10000.00, 'Ongoing management'),
('Stroke', 12000.00, '3-6 months'),
('HIV/AIDS', 20000.00, 'Lifelong management'),
('Appendicitis', 15000.00, '2-3 weeks'),
('Typhoid Fever', 3500.00, '2-4 weeks');

select * from disease_cost;
select * from patients;
select * from diseases;