import 'package:flutter/material.dart';
import 'prediction.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CKDAssessment',
      
      home: CKDAssessmentScreen(),
    );
  }
}

class CKDAssessmentScreen extends StatefulWidget {
  @override
  _CKDAssessmentScreenState createState() => _CKDAssessmentScreenState();
}

class _CKDAssessmentScreenState extends State<CKDAssessmentScreen> {
  TextEditingController _ageController = TextEditingController();//1
  TextEditingController _bloodPressureController = TextEditingController();//2
  TextEditingController _sgController = TextEditingController();//3
  TextEditingController _albuminController = TextEditingController();//4
  TextEditingController _suController = TextEditingController();//5
  String _selectedRedBloodCells = '';//6
  String _selectedPusCell = '';//7
  String _selectedPusCellClumps = '';//8
  String _selectedBacteria = '';//9
  TextEditingController _bgrController = TextEditingController();//10
  TextEditingController _bloodUreaController = TextEditingController();//11
  TextEditingController _serumCreatinineController = TextEditingController();//12
  TextEditingController _sodiumController = TextEditingController();//13
  TextEditingController _potassiumController = TextEditingController();//14
  TextEditingController _hemoglobinController = TextEditingController();//15
  TextEditingController _packedCellVolumeController = TextEditingController();//16
  TextEditingController _whiteBloodCellCountController = TextEditingController();//17
  TextEditingController _redBloodCellCountController = TextEditingController();//18
  

  String _selectedHypertension = '';//19
  String _selectedDiabetes = '';//20
  String _selectedCoronaryArteryDisease = '';//21
  String _selectedPedalEdema = '';//22
  String _selectedAnemia = '';//23
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 167, 60, 53),
        title: Text(
          'Medical Information',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.save,
              color: Colors.white,
            ),
            onPressed: () {
              // Implement save functionality here
              // You can access entered data using controllers and boolean variables
              // Save data to database or perform any necessary action
            },
          ),
        ],
      ),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: _ageController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Age',
                  labelStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ),
              SizedBox(height: 16.0),

              TextFormField(
                controller: _bloodPressureController,
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                decoration: InputDecoration(
                  labelText: 'Blood Pressure',
                  labelStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ),
               SizedBox(height: 16.0),
               TextFormField(
                controller: _sgController,
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                decoration: InputDecoration(
                  labelText: 'Specific Gravity',
                  labelStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ),
               SizedBox(height: 16.0),

               TextFormField(
                controller: _albuminController,
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                decoration: InputDecoration(
                  labelText: 'Albumin',
                  labelStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ),
              SizedBox(height: 16.0),

              TextFormField(
                controller: _suController,
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                decoration: InputDecoration(
                  labelText: 'Sugar',
                  labelStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ),
              SizedBox(height: 16.0),

              ListTile(
                title: Text('Red Blood Cells', style: TextStyle(fontWeight: FontWeight.bold,color:  Colors.black)),
                subtitle: Row(
                  children: [
                    Radio(
                      value: 'Normal',
                      groupValue: _selectedRedBloodCells,
                      onChanged: (value) {
                        setState(() {
                          _selectedRedBloodCells = value.toString();
                        });
                      },
                    ),
                    Text('Normal', style: TextStyle(color: Colors.black)),
                    Radio(
                      value: 'Abnormal',
                      groupValue: _selectedRedBloodCells,
                      onChanged: (value) {
                        setState(() {
                          _selectedRedBloodCells = value.toString();
                        });
                      },
                    ),
                    Text('Abnormal', style: TextStyle(color: Colors.black)),
                  ],
                ),
              ),
               SizedBox(height: 16.0),

              ListTile(
                title: Text('Pus Cell', style: TextStyle(fontWeight: FontWeight.bold,color:  Colors.black)),
                subtitle: Row(
                  children: [
                    Radio(
                      value: 'Normal',
                      groupValue: _selectedPusCell,
                      onChanged: (value) {
                        setState(() {
                          _selectedPusCell = value.toString();
                        });
                      },
                    ),
                    Text('Normal', style: TextStyle(color: Colors.black)),
                    Radio(
                      value: 'Abnormal',
                      groupValue: _selectedPusCell,
                      onChanged: (value) {
                        setState(() {
                          _selectedPusCell = value.toString();
                        });
                      },
                    ),
                    Text('Abnormal', style: TextStyle(color: Colors.black)),
                  ],
                ),
              ),
               SizedBox(height: 16.0),

              ListTile(
                title: Text('Pus Cell Clumps', style: TextStyle(fontWeight: FontWeight.bold,color:  Colors.black)),
                subtitle: Row(
                  children: [
                    Radio(
                      value: 'Present',
                      groupValue: _selectedPusCellClumps,
                      onChanged: (value) {
                        setState(() {
                          _selectedPusCellClumps = value.toString();
                        });
                      },
                    ),
                    Text('Present', style: TextStyle(color: Colors.black)),
                    Radio(
                      value: 'Not Present',
                      groupValue: _selectedPusCellClumps,
                      onChanged: (value) {
                        setState(() {
                          _selectedPusCellClumps = value.toString();
                        });
                      },
                    ),
                    Text('Not Present', style: TextStyle(color: Colors.black)),
                  ],
                ),
              ),
               SizedBox(height: 16.0),

              ListTile(
                title: Text('Bacteria', style: TextStyle(fontWeight: FontWeight.bold,color:  Colors.black)),
                subtitle: Row(
                  children: [
                    Radio(
                      value: 'Present',
                      groupValue: _selectedBacteria,
                      onChanged: (value) {
                        setState(() {
                          _selectedBacteria = value.toString();
                        });
                      },
                    ),
                    Text('Present', style: TextStyle(color: Colors.black)),
                    Radio(
                      value: 'Not Present',
                      groupValue: _selectedBacteria,
                      onChanged: (value) {
                        setState(() {
                          _selectedBacteria = value.toString();
                        });
                      },
                    ),
                    Text('Not Present', style: TextStyle(color: Colors.black)),
                  ],
                ),
              ),
               SizedBox(height: 16.0),

               TextFormField(
                controller: _bgrController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Blood Glucose Random',
                  labelStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ),
              SizedBox(height: 16.0),

              TextFormField(
                controller: _bloodUreaController,
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                decoration: InputDecoration(
                  labelText: 'Blood Urea',
                  labelStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ),
              SizedBox(height: 16.0),



              TextFormField(
                controller: _serumCreatinineController,
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                decoration: InputDecoration(
                  labelText: 'Serum Creatinine',
                  labelStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ),
              SizedBox(height: 16.0),

              TextFormField(
                controller: _sodiumController,
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                decoration: InputDecoration(
                  labelText: 'Sodium',
                  labelStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ),
              SizedBox(height: 16.0),

              TextFormField(
                controller: _potassiumController,
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                decoration: InputDecoration(
                  labelText: 'Potassium',
                  labelStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ),
              SizedBox(height: 16.0),

              TextFormField(
                controller: _hemoglobinController,
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                decoration: InputDecoration(
                  labelText: 'Hemoglobin',
                  labelStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ),
              SizedBox(height: 16.0),


              TextFormField(
                controller: _packedCellVolumeController,
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                decoration: InputDecoration(
                  labelText: 'Packed Cell Volume',
                  labelStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ),
              SizedBox(height: 16.0),

              TextFormField(
                controller: _whiteBloodCellCountController,
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                decoration: InputDecoration(
                  labelText: 'White Blood Cell Count',
                  labelStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ),
              SizedBox(height: 16.0),

              TextFormField(
                controller: _redBloodCellCountController,
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                decoration: InputDecoration(
                  labelText: 'Red Blood Cell Count',
                  labelStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ),
              SizedBox(height: 16.0),

              ListTile(
                title: Text('Hypertension', style: TextStyle(fontWeight: FontWeight.bold,color:  Colors.black)),
                subtitle: Row(
                  children: [
                    Radio(
                      value: 'Yes',
                      groupValue: _selectedHypertension,
                      onChanged: (value) {
                        setState(() {
                          _selectedHypertension = value.toString();
                        });
                      },
                    ),
                    Text('Yes', style: TextStyle(color: Colors.black)),
                    Radio(
                      value: 'No',
                      groupValue: _selectedHypertension,
                      onChanged: (value) {
                        setState(() {
                          _selectedHypertension = value.toString();
                        });
                      },
                    ),
                    Text('No', style: TextStyle(color: Colors.black)),
                  ],
                ),
              ),
               SizedBox(height: 16.0),

              ListTile(
                title: Text('Diabetes', style: TextStyle(fontWeight: FontWeight.bold,color:  Colors.black)),
                subtitle: Row(
                  children: [
                    Radio(
                      value: 'Yes',
                      groupValue: _selectedDiabetes,
                      onChanged: (value) {
                        setState(() {
                          _selectedDiabetes = value.toString();
                        });
                      },
                    ),
                    Text('Yes', style: TextStyle(color: Colors.black)),
                    Radio(
                      value: 'No',
                      groupValue: _selectedDiabetes,
                      onChanged: (value) {
                        setState(() {
                          _selectedDiabetes = value.toString();
                        });
                      },
                    ),
                    Text('No', style: TextStyle(color: Colors.black)),
                  ],
                ),
              ),
               SizedBox(height: 16.0),

               Text(
                'Select Yes if your bp is 90 or more. Otherwise, select No ',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600
                ),
               ),

              

              ListTile(
                title: Text('Coronary Artery Disease', style: TextStyle(fontWeight: FontWeight.bold,color:  Colors.black)),
                subtitle: Row(
                  children: [
                    Radio(
                      value: 'Yes',
                      groupValue: _selectedCoronaryArteryDisease,
                      onChanged: (value) {
                        setState(() {
                          _selectedCoronaryArteryDisease = value.toString();
                        });
                      },
                    ),
                    Text('Yes', style: TextStyle(color: Colors.black)),
                    Radio(
                      value: 'No',
                      groupValue: _selectedCoronaryArteryDisease,
                      onChanged: (value) {
                        setState(() {
                          _selectedCoronaryArteryDisease = value.toString();
                        });
                      },
                    ),
                    Text('No', style: TextStyle(color: Colors.black)),
                  ],
                ),
              ),
               SizedBox(height: 16.0),
              ListTile(
                title: Text('Pedal Edema', style: TextStyle(fontWeight: FontWeight.bold,color:  Colors.black)),
                subtitle: Row(
                  children: [
                    Radio(
                      value: 'Yes',
                      groupValue: _selectedPedalEdema,
                      onChanged: (value) {
                        setState(() {
                          _selectedPedalEdema = value.toString();
                        });
                      },
                    ),
                    Text('Yes', style: TextStyle(color: Colors.black)),
                    Radio(
                      value: 'No',
                      groupValue: _selectedPedalEdema,
                      onChanged: (value) {
                        setState(() {
                          _selectedPedalEdema = value.toString();
                        });
                      },
                    ),
                    Text('No', style: TextStyle(color: Colors.black)),
                  ],
                ),
              ),
               SizedBox(height: 16.0),

              ListTile(
                title: Text('Anemia', style: TextStyle(fontWeight: FontWeight.bold,color:  Colors.black)),
                subtitle: Row(
                  children: [
                    Radio(
                      value: 'Yes',
                      groupValue: _selectedAnemia,
                      onChanged: (value) {
                        setState(() {
                          _selectedAnemia = value.toString();
                        });
                      },
                    ),
                    Text('Yes', style: TextStyle(color: Colors.black)),
                    Radio(
                      value: 'No',
                      groupValue: _selectedAnemia,
                      onChanged: (value) {
                        setState(() {
                          _selectedAnemia = value.toString();
                        });
                      },
                    ),
                    Text('No', style: TextStyle(color: Colors.black)),
                  ],
                ),
              ),
               SizedBox(height: 16.0),

              
              
              ElevatedButton(
                style: ButtonStyle(
                    foregroundColor:
                        MaterialStatePropertyAll(Colors.white),
                    backgroundColor: MaterialStatePropertyAll(
                        const Color.fromARGB(255, 167, 60, 53))),
                onPressed: () {
                  
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PredictionScreen (age: '', bloodPressure: '',)),
            );
            
                  // Implement CKD status check functionality here
                  // You can access entered data using controllers and boolean variab les
                  // Perform CKD assessment based on entered data
                },
                child: Text('Assess Status'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}