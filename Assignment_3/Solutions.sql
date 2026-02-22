--Entering Data into Department

INSERT INTO Department VALUES ('A01','Computer Science and Engineering','Block A');
INSERT INTO Department VALUES ('A02','Computer Science and Engineering (AI & ML)','Block B');
INSERT INTO Department VALUES ('A03','3D Animation and Graphics','Block C');
INSERT INTO Department VALUES ('A04','Electronics and Electrical Engineering','Block D');
INSERT INTO Department VALUES ('A05','Mechanical Engineering','Block E');
INSERT INTO Department VALUES ('A06','Civil Engineering','Block F');
INSERT INTO Department VALUES ('A07','Civil Engineering with Computer Application','Block F');
INSERT INTO Department VALUES ('A08','Software Engineering','Block F');
INSERT INTO Department VALUES ('A09','Data Science','Block F');
INSERT INTO Department VALUES ('A10','Information Technology','Block J');

--Entering Data into Faculty

INSERT INTO Faculty VALUES ('F01','Prof. Murlidhar Prasad Singh (HoD)','Assistant Professor, HOD','singhmurlidhar@gmail.com','A01');
INSERT INTO Faculty VALUES ('F02','Prof. Md. Ehtashamoul Haque','Assistant Professor','ehtasham47@gmail.com','A01');
INSERT INTO Faculty VALUES ('F03','Prof. Arun Kumar','Assistant Professor (Guest)','arunkr75@gmail.com','A01');
INSERT INTO Faculty VALUES ('F04','Prof. Amit Kumar','Associate Professor','amitbcebhagalpur@gmail.com','A01');
INSERT INTO Faculty VALUES ('F05','Pro. Sujeet Kumar','Assistant Professor','ksujeet.cs@gmail.com','A02');
INSERT INTO Faculty VALUES ('F06','Prof. Praveen Kumar','Assistant Professor','manisha.ks241@gmail.com','A02');
INSERT INTO Faculty VALUES ('F07','Prof. Md. Izhar','Assistant Professor','akumar@bpmce.ac.in','A03');
INSERT INTO Faculty VALUES ('F08','Prof. Hare Krishna Mishra','Assistant Professor','hare.dbit@gmail.com','A04');
INSERT INTO Faculty VALUES ('F09','Prof. Ashish Kumar Suman','Assistant Professor','sumanashish.rkt@gmail.com','A04');
INSERT INTO Faculty VALUES ('F10','Prof. Kunal Kumar (HoD)','Assistant Professor & HOD','kunal1989kumar@gmail.com','A05');
INSERT INTO Faculty VALUES ('F11','Prof. Nishikant Kumar','Assistant Professor','nishikantbpmce32@gmail.com','A05');

--Entering Data into Course

INSERT INTO Course VALUES ('C02','Data Structures',4,'A01','F01');
INSERT INTO Course VALUES ('C01','Database Management Systems',4,'A01','F02');
INSERT INTO Course VALUES ('C03','Operating Systems',4,'A01','F01');
INSERT INTO Course VALUES ('C05','Computer Networks',4,'A01','F02');
INSERT INTO Course VALUES ('C04','Software Engineering',3,'A01','F01');
INSERT INTO Course VALUES ('C06','Engineering Mechanics',3,'A02','F03');
INSERT INTO Course VALUES ('C07','Thermodynamics',4,'A02','F03');
INSERT INTO Course VALUES ('C08','Structural Analysis',4,'A03','F04');
INSERT INTO Course VALUES ('C10','Concrete Technology',3,'A03','F04');
INSERT INTO Course VALUES ('C09','Basic Electrical Engineering',3,'A04','F04');

--Entering Data into Student

INSERT INTO Student VALUES ('S01','Vijay Kumar', TO_DATE('2004-01-11','YYYY-MM-DD'),'M','9000145236','A01');
INSERT INTO Student VALUES ('S02','Kunal Singh', TO_DATE('2004-12-15','YYYY-MM-DD'),'M','8498703830','A01');
INSERT INTO Student VALUES ('S03','Aman Verma', TO_DATE('2004-01-23','YYYY-MM-DD'),'M','3479730333','A01');
INSERT INTO Student VALUES ('S04','Abhishek Gupta', TO_DATE('2004-03-05','YYYY-MM-DD'),'M','5782897029','A02');
INSERT INTO Student VALUES ('S05','Rahul Yadav', TO_DATE('2004-01-22','YYYY-MM-DD'),'M','2789212782','A02');
INSERT INTO Student VALUES ('S06','Pooja Sharma', TO_DATE('2004-10-08','YYYY-MM-DD'),'F','9973209086','A03');
INSERT INTO Student VALUES ('S07','Rohit Patel', TO_DATE('2004-11-19','YYYY-MM-DD'),'M','7389270297','A03');
INSERT INTO Student VALUES ('S08','Hare Krishna Mishra', TO_DATE('2004-07-22','YYYY-MM-DD'),'M','7904830375','A01');
INSERT INTO Student VALUES ('S09','Kanish Kumar', TO_DATE('2004-04-20','YYYY-MM-DD'),'M','5688795547','A04');
INSERT INTO Student VALUES ('S10','Aishwarya Rai', TO_DATE('2004-06-14','YYYY-MM-DD'),'F','5698706657','A04');

--Entering Data into Enrollment

INSERT INTO Enrollment VALUES ('S01','C01',3,'A');
INSERT INTO Enrollment VALUES ('S01','C02',3,'A');
INSERT INTO Enrollment VALUES ('S02','C01',3,'C');
INSERT INTO Enrollment VALUES ('S03','C03',4,'B');
INSERT INTO Enrollment VALUES ('S04','C06',2,'C');
INSERT INTO Enrollment VALUES ('S05','C07',3,'B');
INSERT INTO Enrollment VALUES ('S06','C08',4,'B');
INSERT INTO Enrollment VALUES ('S07','C09',4,'A');
INSERT INTO Enrollment VALUES ('S08','C04',3,'A');
INSERT INTO Enrollment VALUES ('S09','C10',1,'A');

