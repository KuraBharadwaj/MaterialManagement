sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'materialmanagement/materialmanagement/test/integration/FirstJourney',
		'materialmanagement/materialmanagement/test/integration/pages/MaterialsList',
		'materialmanagement/materialmanagement/test/integration/pages/MaterialsObjectPage'
    ],
    function(JourneyRunner, opaJourney, MaterialsList, MaterialsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('materialmanagement/materialmanagement') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheMaterialsList: MaterialsList,
					onTheMaterialsObjectPage: MaterialsObjectPage
                }
            },
            opaJourney.run
        );
    }
);