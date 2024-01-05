namespace materialmanagement;

using { SalesOrderA2X } from '../srv/external/SalesOrderA2X.cds';

using
{
    Country,
    Currency,
    Language,
    User,
    cuid,
    extensible,
    managed,
    temporal
}
from '@sap/cds/common';

entity Materials : managed
{
    key ID : UUID;
    key MaterialNumber : String(40);
    MaterialType : String(4);
    MaterialGroup : String(9);
    UnitOfMeasure : String(3);
    LastChangeDate : Date;
    plant : Association to MaterialPlant;
    SalesOrderNumber : Association to one SalesOrderA2X.A_SalesOrder;
}

entity MaterialPlant : managed
{
    key ID : UUID;
    Matplant : String(4);
    MaterialNumber : String(40);
    MaintanenceStatus : String(15);
    PurchasingGroup : String(3);
    materials : Association to many Materials on materials.plant = $self;
}
