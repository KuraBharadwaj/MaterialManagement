using materialmanagementService as service from '../../srv/service';

annotate service.Materials with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'MaterialNumber',
            Value : MaterialNumber,
        },
        {
            $Type : 'UI.DataField',
            Label : 'MaterialType',
            Value : MaterialType,
        },
        {
            $Type : 'UI.DataField',
            Label : 'MaterialGroup',
            Value : MaterialGroup,
        },
        {
            $Type : 'UI.DataField',
            Label : 'UnitOfMeasure',
            Value : UnitOfMeasure,
        },
        {
            $Type : 'UI.DataField',
            Label : 'LastChangeDate',
            Value : LastChangeDate,
        },
        {
            $Type : 'UI.DataField',
            Value : SalesOrderNumber_SalesOrder,
            Label : 'SalesOrderNumber_SalesOrder',
        },
        {
            $Type : 'UI.DataField',
            Value : plant.Matplant,
            Label : 'Matplant',
        },
    ]
);
annotate service.Materials with {
    plant @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'MaterialPlant',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : plant_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'MaterialNumber',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'Plant',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'MaintanenceStatus',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'PurchasingGroup',
            },
        ],
    }
};
annotate service.Materials with {
    SalesOrderNumber @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'A_SalesOrder',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : SalesOrderNumber_SalesOrder,
                ValueListProperty : 'SalesOrder',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'SalesOrderType',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'SalesGroup',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'SoldToParty',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'PurchaseOrderByShipToParty',
            },
        ],
    }
};
annotate service.Materials with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'MaterialNumber',
                Value : MaterialNumber,
            },
            {
                $Type : 'UI.DataField',
                Label : 'MaterialType',
                Value : MaterialType,
            },
            {
                $Type : 'UI.DataField',
                Label : 'MaterialGroup',
                Value : MaterialGroup,
            },
            {
                $Type : 'UI.DataField',
                Label : 'UnitOfMeasure',
                Value : UnitOfMeasure,
            },
            {
                $Type : 'UI.DataField',
                Label : 'LastChangeDate',
                Value : LastChangeDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'SalesOrderNumber_SalesOrder',
                Value : SalesOrderNumber_SalesOrder,
            },
            {
                $Type : 'UI.DataField',
                Value : plant.Matplant,
                Label : 'Matplant',
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
annotate service.MaterialPlant with {
    Matplant @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'MaterialPlant',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : Matplant,
                    ValueListProperty : 'Matplant',
                },
            ],
            Label : 'Material Plant',
        },
        Common.ValueListWithFixedValues : true
)};
