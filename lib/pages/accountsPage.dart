import 'package:flutter/material.dart';
import 'package:sure_count_app/utilities/utility.dart';

class SureCountAccountsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Organizations (Accounts)",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w800,
            fontFamily: 'Californian FB',
            letterSpacing: 1.0,
            fontSize: 30,
          ),
        ),
        backgroundColor: Colors.blueGrey,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.home,
              color: Colors.white,
              size: 40.0,
            ),
            onPressed: () => Utility().onHomeButtonPress(context),
          ),
          IconButton(
            icon: Icon(
              Icons.add,
              color: Colors.white,
              size: 40.0,
            ),
            onPressed: null,
          ),
          IconButton(
            icon: Icon(
              Icons.exit_to_app,
              color: Colors.white,
              size: 40.0,
            ),
            onPressed: () => Utility().onLogoutButtonPress(context),
          )
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/Background.png"),
            fit: BoxFit.fill,  
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
              child: Table(
                border: TableBorder.all(),
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: <TableRow>[
                  TableRow(
                    decoration: BoxDecoration(
                      color: Color(0xff222A35),
                    ),
                    children: <Widget>[
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Align(
                          alignment: Alignment.center,
                          child: Text('ID',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Californian FB',
                              letterSpacing: 1.0,
                              fontSize: 30,
                            ),
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Align(
                          alignment: Alignment.center,
                          child: Text('Name',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Californian FB',
                              letterSpacing: 1.0,
                              fontSize: 30,
                            ),
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Email',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Californian FB',
                              letterSpacing: 1.0,
                              fontSize: 30,
                            ),
                          ),
                        ),
                      ),
                    ]
                  )
                ],
              ),
            ),
          ],
        )
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blueGrey,
        child: Text(
          'Developed by Cognovare Solution Private Limited.',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
            fontFamily: 'Californian FB',
            letterSpacing: 1.0,
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}