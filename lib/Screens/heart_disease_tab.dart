import 'package:flutter/material.dart';
// import 'package:flutter_lorem/flutter_lorem.dart';

class HeartDiseaseTab extends StatelessWidget {
  HeartDiseaseTab({Key? key}) : super(key: key);

  String txt1 =
      "\n1.	Age -> Study shows around 82% people among the people who have heart disease are above the age of 65. \n User should enter between number 1 to patient’s age in this field.\n";
  String txt2 =
      "2.	Gender -> heart disease in female is very hard to find. Mostly females who have diabetes are likely to have heart disease. \nMale user should enter 1 for this field and female user enter 0.\n";
  String txt3 =
      "3.	Chest Pain -> Chest Pain caused due to reduced blood flow to the heart. User should enter values between 0 to 3 for this field. \nValue 0: typical angina \nValue 1: atypical angina \nValue 2: non-anginal pain \nValue 3: asymptomatic\n";
  String txt4 =
      "4.	Resting Blood Pressure -> Normal people’s Blood Pressure is less than 120/80 mmHg and high Blood Pressure value is above 140/90mmHg. \nUser can enter his/ her resting blood pressure in this field.\n";
  String txt5 =
      "5.	Serum Cholesterol -> healthy patient’s serum Cholesterol value is less than 200 mg/dL. High cholesterol can limit blood flow & increase the risk of heart attack. \nUser can enter his/her serum Cholesterol value in this field which is in mg/dL.\n";
  String txt6 =
      "6.	Fasting Blood Sugar -> This measures your blood sugar after an overnight fast (not eating). Normal patient’s blood sugar is less  99 mg/dL and patient’s who have greater than 126 mg/dL have diabetes. \nUser enter 0 for normal blood sugar and 1 for greater than 126 mg/dL.\n";

  String txt7 =
      "7.	Resting Electrocardiograph -> This can detect abnormalities including arrhythmias, evidence of coronary heart disease, left ventricular hypertrophy and bundle branch blocks. Resting ECG can detect previously undiagnosed cardiovascular disease. In this field user can enter values 0, 1 and 2. \nValue 0: normal \nValue 1: having ST-T wave abnormality (T wave inversions and/or ST elevation or depression of > 0.05 mV) \nValue 2: showing probable or definite left ventricular hypertrophy by Estes’ criteria.\n";

  String txt8 =
      "8.	Maximum heart rate-> user can calculate his/her maximum heart rate by subtracting  his/her age from 220.\n";

  String txt9 =
      "9.	Exercise induced angina -> induced angina is common in cardiac patients, particularly when exercising in the cold. This field should be enter in 0 or 1. \n1 for yes 0 for no.\n";

  String txt10 =
      "10.	OldPeak -> Values of ST segment depression limited to the recovery phase of an exercise stress test, as compared with that of ST segment depression appearing during exercise. \nThis value can be in decimal point.\n";

  String txt11 =
      "11.	Slope of Peak -> The maximum ST/HR slope can be used reliably to predict the presence or absence & the severity of coronary artery disease. \nValue 0: upsloping \nValue 1: flat \nValue 2: down sloping\n";

  String txt12 =
      "12.	Number of major vessels -> Blood vessels seen through fluoroscopy. \nValues are between 0 to 3.\n";
  String txt13 =
      "13.	Thal -> Thalassemia is an inherited blood disorder that causes your body to have less haemoglobin than normal. The healthy range for hemoglobin is: For men, 13.2 to 16.6 grams per deciliter. For women, 11.6 to 15 grams per deciliter. Values: 1 = fixed defect 2 = normal 3 = reversible defect\n";

  String text =
      "\nThe heart is a muscular organ about the size of a fist, located just behind and slightly left of the breastbone. The heart pumps blood through the network of arteries and veins called the cardiovascular system.\n";
  String text1 = "The heart has four chambers:";
  String text2 =
      "• The right atrium receives blood from the veins and pumps it to the right ventricle. \n • The right ventricle receives blood from the right atrium and pumps it to the lungs, where it is loaded with oxygen. \n • The left atrium receives oxygenated blood from the lungs and pumps it to the left ventricle. The left ventricle (the strongest chamber) pumps oxygen-rich blood to the rest of the body. \n • The left ventricle’s vigorous contractions create our blood pressure.\n";
  String text3 =
      "The coronary arteries run along the surface of the heart and provide oxygen-rich blood to the heart muscle. A web of nerve tissue also runs through the heart, conducting the complex signals that govern contraction and relaxation. Surrounding the heart is a sac called the pericardium.\n";
  String text4 = "HEART CONDITIONS";
  String text5 = "\n•	Coronary artery disease";
  String text6 =
      " Over the years, cholesterol plaques can narrow the arteries supplying blood to the heart. The narrowed arteries are at higher risk for complete blockage from a sudden blood clot (this blockage is called a heart attack).";
  String text7 = "\n•	Stable angina pectoris";
  String text8 =
      "Narrowed coronary arteries cause predictable chest pain or discomfort with exertion. The blockages prevent the heart from receiving the extra oxygen needed for strenuous activity. Symptoms typically get better with rest.";

  String text9 = "\n•	Unstable angina pectoris";
  String text10 =
      "Chest pain or discomfort that is new, worsening, or occurs at rest. This is an emergency situation as it can precede a heart attack, serious abnormal heart rhythm, or cardiac arrest.";

  String text11 = "\n•	Myocardial infarction (heart attack)";
  String text12 =
      "A coronary artery is suddenly blocked. Starved of oxygen, part of the heart muscle dies.";

  String text13 = "\n•	Arrhythmia (dysrhythmia)";
  String text14 =
      "An abnormal heart rhythm due to changes in the conduction of electrical impulses through the heart. Some arrhythmias are benign, but others are life-threatening.";

  String text15 = "\n•	Congestive heart failure";
  String text16 =
      "The heart is either too weak or too stiff to effectively pump blood through the body. Shortness of breath and leg swelling are common symptoms.";

  String text17 = "\n•	Cardiomyopathy";
  String text18 =
      "A disease of heart muscle in which the heart is abnormally enlarged, thickened, and/or stiffened. As a result, the heart's ability to pump blood is weakened.";

  String text19 = "\n•	Myocarditis";
  String text20 =
      "Inflammation of the heart muscle, most often due to a viral infection.";

  String text21 = "\n•	Pericarditis";
  String text22 =
      "Inflammation of the lining of the heart (pericardium). Viral infections, kidney failure, and autoimmune conditions are common causes.";

  String text23 = "\n•	Pericardial effusion";
  String text24 =
      "Fluid between the lining of the heart (pericardium) and the heart itself. Often, this is due to pericarditis.";

  String text25 = "\n•	Atrial fibrillation";
  String text26 =
      "Abnormal electrical impulses in the atria cause an irregular heartbeat. Atrial fibrillation is one of the most common arrhythmias.";

  String text27 = "\n•	Pulmonary embolism";
  String text28 =
      "Typically a blood clot  travels through the heart to the lungs. ";

  String text29 = "\n•	Heart valve disease";
  String text30 =
      "There are four heart valves, and each can develop problems. If severe, valve disease can cause congestive heart failure.";

  String text31 = "\n•	Heart murmur";
  String text32 =
      "An abnormal sound heard when listening to the heart with a stethoscope. Some heart murmurs are benign; others suggest heart disease.";
  String text33 = "\n•	Endocarditis";
  String text34 =
      "Inflammation of the inner lining or heart valves of the heart. Usually, endocarditis is due to a serious infection of the heart valves.";
  String text35 = "\n•	Mitral valve prolapses";
  String text36 =
      "The mitral valve is forced backward slightly after blood has passed through the valve. ";
  String text37 = "\n•	Sudden cardiac death";
  String text38 =
      "Death caused by a sudden loss of heart function (cardiac arrest).";
  String text39 = "\n• Cardiac arrest";
  String text40 = "Sudden loss of heart function.\n";
  String text41 = "HEART TESTS";
  String text42 = "\n•	Electrocardiogram (ECG or EKG)";
  String text43 =
      "A tracing of the heart’s electrical activity. Electrocardiograms can help diagnose many heart conditions.";
  String text44 = "\n•	Echocardiogram";
  String text45 =
      "An ultrasound of the heart. An echocardiogram provides direct viewing of any problems with the heart muscle’s pumping ability and heart valves.";
  String text46 = "\n•	Cardiac stress test";
  String text47 =
      "By using a treadmill or medicines, the heart is stimulated to pump to near-maximum capacity. This may identify people with coronary artery disease.";
  String text48 = "\n•	Cardiac catheterization";
  String text49 =
      "A catheter is inserted into the femoral artery in the groin and threaded into the coronary arteries. A doctor can then view X-ray images of the coronary arteries or any blockages and perform stenting or other procedures.";
  String text50 = "\n•	Holter monitor";
  String text51 =
      "If a doctor suspects an arrhythmia, a portable heart monitor can be worn. Called a Holter monitor, it records the heart's rhythm continuously for a 24-hour period.";
  String text52 = "\n•	Event monitor";
  String text53 =
      "If a doctor suspects an infrequent arrhythmia, a portable heart monitor called an event monitor can be worn. When you develop symptoms, you can push a button to record the heart's electrical rhythm.\n";
  String text54 = "HEART TREATMENTS";
  String text55 = "\n•	Exercise";
  String text56 =
      "Regular exercise is important for heart health and most heart conditions. Talk to your doctor before starting an exercise program if you have heart problems.";
  String text57 = "\n•	Angioplasty";
  String text58 =
      "During cardiac catheterization, a doctor inflates a balloon inside a narrowed or blocked coronary artery to widen the artery. A stent is often then placed to keep the artery open.";
  String text59 = "\n•	Percutaneous coronary intervention (PCI)";
  String text60 =
      "Angioplasty is sometimes called a PCI or PTCA (percutaneous transluminal coronary angioplasty) by doctors.";
  String text61 = "\n•	Coronary artery stenting";
  String text62 =
      "During cardiac catheterization, a doctor expands a wire metal stent inside a narrowed or blocked coronary artery to open up the area. This lets blood flow better and can abort a heart attack or relieve angina (chest pain).";
  String text63 = "\n•	Thrombolysis";
  String text64 =
      "“Clot-busting” drugs injected into the veins can dissolve a blood clot causing a heart attack. Thrombolysis is generally only done if stenting is not possible.";
  String text65 = "\n•	Lipid-lowering agents";
  String text66 =
      "Statins and other cholesterol (lipid) lowering drugs reduce the risk for heart attack in high-risk people.";
  String text67 = "\n•	Diuretics";
  String text68 =
      "Commonly called water pills, diuretics increase urination and fluid loss. This reduces blood volume, improving symptoms of heart failure.";
  String text69 = "\n•	Beta-blockers";
  String text70 =
      "These medicines reduce strain on the heart and lower heart rate. Beta-blockers are prescribed for many heart conditions, including heart failure and arrhythmias.";
  String text71 =
      "\n•	Angiotensin-converting enzyme inhibitors (ACE inhibitors)";
  String text72 =
      "These blood pressure medicines also help the heart after some heart attacks or in congestive heart failure.";
  String text73 = "\n•	Aspirin";
  String text74 =
      "This powerful medicine helps prevent blood clots (the cause of heart attacks). Most people who have had heart attacks should take aspirin.";

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            color: Colors.orange,
            padding: const EdgeInsets.all(8),
            child: const Text(
              "Attribute values entered for prediction:",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  height: 1.5),
            ),
          ),
          Text(
            txt1,
            style: const TextStyle(letterSpacing: 1.0),
            textAlign: TextAlign.center,
          ),
          Text(
            txt2,
            style: const TextStyle(letterSpacing: 1.0),
            textAlign: TextAlign.center,
          ),
          Text(
            txt3,
            style: const TextStyle(letterSpacing: 1.0),
            textAlign: TextAlign.center,
          ),
          Text(
            txt4,
            style: const TextStyle(letterSpacing: 1.0),
            textAlign: TextAlign.center,
          ),
          Text(
            txt5,
            style: const TextStyle(letterSpacing: 1.0),
            textAlign: TextAlign.center,
          ),
          Text(
            txt6,
            style: const TextStyle(letterSpacing: 1.0),
            textAlign: TextAlign.center,
          ),
          Text(
            txt7,
            style: const TextStyle(letterSpacing: 1.0),
            textAlign: TextAlign.center,
          ),
          Text(
            txt8,
            style: const TextStyle(letterSpacing: 1.0),
            textAlign: TextAlign.center,
          ),
          Text(
            txt9,
            style: const TextStyle(letterSpacing: 1.0),
            textAlign: TextAlign.center,
          ),
          Text(
            txt10,
            style: const TextStyle(letterSpacing: 1.0),
            textAlign: TextAlign.center,
          ),
          Text(
            txt11,
            style: const TextStyle(letterSpacing: 1.0),
            textAlign: TextAlign.center,
          ),
          Text(
            txt12,
            style: const TextStyle(letterSpacing: 1.0),
            textAlign: TextAlign.center,
          ),
          Text(
            txt13,
            style: const TextStyle(letterSpacing: 1.0),
            textAlign: TextAlign.center,
          ),
          Container(
            color: Colors.green,
            padding: const EdgeInsets.all(8),
            child: const Text(
              "CHAMBER OF THE HEART",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  height: 1.5),
            ),
          ),
          Text(
            text,
            style: const TextStyle(letterSpacing: 1.0),
            textAlign: TextAlign.center,
          ),
          Text(
            text1,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                height: 1.5,
                letterSpacing: 1.0),
          ),
          Text(
            text2,
            style: const TextStyle(letterSpacing: 1.0),
            textAlign: TextAlign.center,
          ),
          Text(
            text3,
            style: const TextStyle(letterSpacing: 1.0),
            textAlign: TextAlign.center,
          ),
          Container(
            color: Colors.redAccent,
            padding: const EdgeInsets.all(8),
            child: Text(
              text4,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  height: 1.5),
            ),
          ),
          Text(
            text5,
            style: const TextStyle(color: Colors.blue, letterSpacing: 1.0),
          ),
          Text(
            text6,
            style: const TextStyle(letterSpacing: 1.0),
            textAlign: TextAlign.center,
          ),
          Text(
            text7,
            style: const TextStyle(
                height: 1.5, color: Colors.blue, letterSpacing: 1.0),
          ),
          Text(
            text8,
            style: const TextStyle(letterSpacing: 1.0),
            textAlign: TextAlign.center,
          ),
          Text(
            text9,
            style: const TextStyle(
                height: 1.5, color: Colors.blue, letterSpacing: 1.0),
          ),
          Text(
            text10,
            style: const TextStyle(letterSpacing: 1.0),
            textAlign: TextAlign.center,
          ),
          Text(
            text11,
            style: const TextStyle(
                height: 1.5, color: Colors.blue, letterSpacing: 1.0),
          ),
          Text(
            text12,
            style: const TextStyle(letterSpacing: 1.0),
            textAlign: TextAlign.center,
          ),
          Text(
            text13,
            style: const TextStyle(
                height: 1.5, color: Colors.blue, letterSpacing: 1.0),
          ),
          Text(
            text14,
            style: const TextStyle(letterSpacing: 1.0),
            textAlign: TextAlign.center,
          ),
          Text(
            text15,
            style: const TextStyle(
                height: 1.5, color: Colors.blue, letterSpacing: 1.0),
          ),
          Text(
            text16,
            style: const TextStyle(letterSpacing: 1.0),
            textAlign: TextAlign.center,
          ),
          Text(
            text17,
            style: const TextStyle(
                height: 1.5, color: Colors.blue, letterSpacing: 1.0),
          ),
          Text(
            text18,
            style: const TextStyle(letterSpacing: 1.0),
            textAlign: TextAlign.center,
          ),
          Text(
            text19,
            style: const TextStyle(
                height: 1.5, color: Colors.blue, letterSpacing: 1.0),
          ),
          Text(
            text20,
            style: const TextStyle(letterSpacing: 1.0),
            textAlign: TextAlign.center,
          ),
          Text(
            text21,
            style: const TextStyle(
                height: 1.5, color: Colors.blue, letterSpacing: 1.0),
          ),
          Text(
            text22,
            style: const TextStyle(letterSpacing: 1.0),
            textAlign: TextAlign.center,
          ),
          Text(
            text23,
            style: const TextStyle(
                height: 1.5, color: Colors.blue, letterSpacing: 1.0),
          ),
          Text(
            text24,
            style: const TextStyle(letterSpacing: 1.0),
            textAlign: TextAlign.center,
          ),
          Text(
            text25,
            style: const TextStyle(
                height: 1.5, color: Colors.blue, letterSpacing: 1.0),
          ),
          Text(
            text26,
            style: const TextStyle(letterSpacing: 1.0),
            textAlign: TextAlign.center,
          ),
          Text(
            text27,
            style: const TextStyle(
                height: 1.5, color: Colors.blue, letterSpacing: 1.0),
          ),
          Text(
            text28,
            style: const TextStyle(letterSpacing: 1.0),
            textAlign: TextAlign.center,
          ),
          Text(
            text29,
            style: const TextStyle(
                height: 1.5, color: Colors.blue, letterSpacing: 1.0),
          ),
          Text(
            text30,
            style: const TextStyle(letterSpacing: 1.0),
            textAlign: TextAlign.center,
          ),
          Text(
            text31,
            style: const TextStyle(
                height: 1.5, color: Colors.blue, letterSpacing: 1.0),
          ),
          Text(
            text32,
            style: const TextStyle(letterSpacing: 1.0),
            textAlign: TextAlign.center,
          ),
          Text(
            text33,
            style: const TextStyle(
                height: 1.5, color: Colors.blue, letterSpacing: 1.0),
          ),
          Text(
            text34,
            style: const TextStyle(letterSpacing: 1.0),
            textAlign: TextAlign.center,
          ),
          Text(
            text35,
            style: const TextStyle(
                height: 1.5, color: Colors.blue, letterSpacing: 1.0),
          ),
          Text(
            text36,
            style: const TextStyle(letterSpacing: 1.0),
            textAlign: TextAlign.center,
          ),
          Text(
            text37,
            style: const TextStyle(
                height: 1.5, color: Colors.blue, letterSpacing: 1.0),
          ),
          Text(
            text38,
            style: const TextStyle(letterSpacing: 1.0),
            textAlign: TextAlign.center,
          ),
          Text(
            text39,
            style: const TextStyle(
                height: 1.5, color: Colors.blue, letterSpacing: 1.0),
          ),
          Text(
            text40,
            style: const TextStyle(letterSpacing: 1.0),
            textAlign: TextAlign.center,
          ),
          Container(
            color: Colors.amber,
            padding: const EdgeInsets.all(8),
            child: Text(
              text41,
              style: const TextStyle(
                  height: 1.5,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  letterSpacing: 1.0),
            ),
          ),
          Text(
            text42,
            style: const TextStyle(
                height: 1.5, color: Colors.blue, letterSpacing: 1.0),
          ),
          Text(
            text43,
            style: const TextStyle(letterSpacing: 1.0),
            textAlign: TextAlign.center,
          ),
          Text(
            text44,
            style: const TextStyle(
                height: 1.5, color: Colors.blue, letterSpacing: 1.0),
          ),
          Text(
            text45,
            style: const TextStyle(letterSpacing: 1.0),
            textAlign: TextAlign.center,
          ),
          Text(
            text46,
            style: const TextStyle(
                height: 1.5, color: Colors.blue, letterSpacing: 1.0),
          ),
          Text(
            text47,
            style: const TextStyle(letterSpacing: 1.0),
            textAlign: TextAlign.center,
          ),
          Text(
            text48,
            style: const TextStyle(
                height: 1.5, color: Colors.blue, letterSpacing: 1.0),
          ),
          Text(
            text49,
            style: const TextStyle(letterSpacing: 1.0),
            textAlign: TextAlign.center,
          ),
          Text(
            text50,
            style: const TextStyle(
                height: 1.5, color: Colors.blue, letterSpacing: 1.0),
          ),
          Text(
            text51,
            style: const TextStyle(letterSpacing: 1.0),
            textAlign: TextAlign.center,
          ),
          Text(
            text52,
            style: const TextStyle(
                height: 1.5, color: Colors.blue, letterSpacing: 1.0),
          ),
          Text(
            text53,
            style: const TextStyle(letterSpacing: 1.0),
            textAlign: TextAlign.center,
          ),
          Container(
            color: Colors.pink.shade400,
            padding: const EdgeInsets.all(8),
            child: Text(
              text54,
              style: const TextStyle(
                  fontSize: 18,
                  height: 1.5,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.0),
            ),
          ),
          Text(
            text55,
            style: const TextStyle(
                height: 1.5, color: Colors.blue, letterSpacing: 1.0),
          ),
          Text(
            text56,
            style: const TextStyle(letterSpacing: 1.0),
            textAlign: TextAlign.center,
          ),
          Text(
            text57,
            style: const TextStyle(
                height: 1.5, color: Colors.blue, letterSpacing: 1.0),
          ),
          Text(
            text58,
            style: const TextStyle(letterSpacing: 1.0),
            textAlign: TextAlign.center,
          ),
          Text(
            text59,
            style: const TextStyle(
                height: 1.5, color: Colors.blue, letterSpacing: 1.0),
          ),
          Text(
            text60,
            style: const TextStyle(letterSpacing: 1.0),
            textAlign: TextAlign.center,
          ),
          Text(
            text61,
            style: const TextStyle(
                height: 1.5, color: Colors.blue, letterSpacing: 1.0),
          ),
          Text(
            text62,
            style: const TextStyle(letterSpacing: 1.0),
            textAlign: TextAlign.center,
          ),
          Text(
            text63,
            style: const TextStyle(
                height: 1.5, color: Colors.blue, letterSpacing: 1.0),
          ),
          Text(
            text64,
            style: const TextStyle(letterSpacing: 1.0),
            textAlign: TextAlign.center,
          ),
          Text(
            text65,
            style: const TextStyle(
                height: 1.5, color: Colors.blue, letterSpacing: 1.0),
          ),
          Text(
            text66,
            style: const TextStyle(letterSpacing: 1.0),
            textAlign: TextAlign.center,
          ),
          Text(
            text67,
            style: const TextStyle(
                height: 1.5, color: Colors.blue, letterSpacing: 1.0),
          ),
          Text(
            text68,
            style: const TextStyle(letterSpacing: 1.0),
            textAlign: TextAlign.center,
          ),
          Text(
            text69,
            style: const TextStyle(
                height: 1.5, color: Colors.blue, letterSpacing: 1.0),
          ),
          Text(
            text70,
            style: const TextStyle(letterSpacing: 1.0),
            textAlign: TextAlign.center,
          ),
          Text(
            text71,
            style: const TextStyle(
                height: 1.5, color: Colors.blue, letterSpacing: 1.0),
            textAlign: TextAlign.center,
          ),
          Text(
            text72,
            style: const TextStyle(letterSpacing: 1.0),
            textAlign: TextAlign.center,
          ),
          Text(
            text73,
            style: const TextStyle(
                height: 1.5, color: Colors.blue, letterSpacing: 1.0),
          ),
          Text(
            text74,
            style: const TextStyle(letterSpacing: 1.0),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
