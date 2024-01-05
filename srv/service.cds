using { SalesOrderA2X } from './external/SalesOrderA2X.cds';

using { materialmanagement as my } from '../db/schema';

@path : '/service/materialmanagement'
service materialmanagementService
{
    annotate A_SalesOrder with @restrict :
    [
        { grant : [ '*' ], to : [ 'MaterialManager' ] }
    ];

    annotate MaterialPlant with @restrict :
    [
        { grant : [ 'READ' ], to : [ 'MaterialViewer' ] },
        { grant : [ '*' ], to : [ 'MaterialManager' ] }
    ];

    annotate Materials with @restrict :
    [
        { grant : [ 'READ' ], to : [ 'MaterialViewer' ] },
        { grant : [ '*' ], to : [ 'MaterialManager' ] }
    ];

    @odata.draft.enabled
    entity Materials as
        projection on my.Materials;

    @odata.draft.enabled
    entity MaterialPlant as
        projection on my.MaterialPlant;

    entity A_SalesOrder as projection on SalesOrderA2X.A_SalesOrder
    {
        SalesOrder,
        SalesOrderType,
        SalesGroup,
        SoldToParty,
        PurchaseOrderByShipToParty
    };
}

annotate materialmanagementService with @requires :
[
    'authenticated-user',
    'MaterialViewer',
    'MaterialManager'
];
