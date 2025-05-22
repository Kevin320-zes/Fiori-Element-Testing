using CatalogService from '../../srv/cat-service';

// UI-level annotations
annotate CatalogService.Items with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Item Name',
                Value : ItemName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Item Description',
                Value : ItemDescription,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Expiration Date',
                Value : ListingExpDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Status',
                Value : Status,
            },
            {
                $Type : 'UI.DataField',
                Label : 'In Stock',
                Value : InStock,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Category',
                Value : Category_Category,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Seller',
                Value : Seller_SellerName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Country',
                Value : CountryOrigin_Country,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Total Sales',
                Value : TotalSales,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Sales Pas Month',
                Value : SalesPastMonth,
            },
        ],
    },
    UI.FieldGroup #SellerInfo : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : Seller.SellerName,
                Label: 'Seller Name'
            },
            {
                $Type : 'UI.DataField',
                Value : Seller.SellerDescription,
                Label: 'Seller Description'
            },
            {
                $Type : 'UI.DataField',
                Value : Seller.Region,
                Label: 'Region'
            },
            {
                $Type : 'UI.DataField',
                Value : Seller.JoiningDate,
                Label: 'Joining Date'
            },
        ],
    },
    UI.FieldGroup #CategoryInfo : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : Category.Category,
                Label: 'Category'
            },
            {
                $Type : 'UI.DataField',
                Value : Category.CategoryDescription,
                Label: 'Category Description'
            },
            {
                $Type : 'UI.DataField',
                Value : Category.CategoryRank,
                Label: 'Category Rank'
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'Item Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Target : '@UI.FieldGroup#SellerInfo',
            Label: 'Seller Information',
            ID: 'SellerInfoId1'
        },
        {
            $Type : 'UI.ReferenceFacet',
            Target : '@UI.FieldGroup#CategoryInfo',
            Label: 'Category Information',
            ID: 'CategoryInfoId1'
        },
    ],
    UI.LineItem : [
        {
            $Type: 'UI.DataFieldForAction',
            Action: 'CatalogService.testAction',
            Label: 'Approve Order',
            Inline: true
        },
        // {   
        //     $Type: 'UI.DataFieldForAction', 
        //     Action : 'service.testAction',
        //     Label: 'Submit Order' 
        // },
        {   
            $Type: 'UI.DataFieldForAction', 
            Action : 'CatalogService.updateAction',
            Label: 'update Order' 
        },
        {
            $Type : 'UI.DataField',
            Label : 'Item Name',
            Value : ItemName,
            ![@HTML5.CssDefaults] : {
                $Type : 'HTML5.CssDefaultsType',
                width: '100%'
            },
        },
        {
            $Type : 'UI.DataField',
            Label : 'Item Description',
            Value : ItemDescription,
            ![@HTML5.CssDefaults] : {
                $Type : 'HTML5.CssDefaultsType',
                width: '100%'
            },
        },
        {
            $Type : 'UI.DataField',
            Label : 'Expiration Date',
            Value : ListingExpDate,
            ![@HTML5.CssDefaults] : {
                $Type : 'HTML5.CssDefaultsType',
                width: '100%'
            },
        },
        {
            $Type : 'UI.DataField',
            Label : 'Status',
            Value : Status,
            ![@HTML5.CssDefaults] : {
                $Type : 'HTML5.CssDefaultsType',
                width: '100%'
            },
            Criticality : StatusCriticality,
        },
        {
            $Type : 'UI.DataField',
            Label : 'In Stock',
            Value : InStock,
            ![@HTML5.CssDefaults] : {
                $Type : 'HTML5.CssDefaultsType',
                width : '100%',
            },
        },
        {
            $Type : 'UI.DataField',
            Value : Seller.SellerName,
            Label: 'Seller Name',
            ![@HTML5.CssDefaults] : {
                $Type : 'HTML5.CssDefaultsType',
                width : '100%',
            },
        },
        {
            $Type : 'UI.DataField',
            Value : Seller.Region,
            Label: 'Region Code',
            ![@HTML5.CssDefaults] : {
                $Type : 'HTML5.CssDefaultsType',
                width : '100%',
            },
        },
        {
            $Type : 'UI.DataField',
            Value : Category.Category,
            Label: 'Category',
            ![@HTML5.CssDefaults] : {
                $Type : 'HTML5.CssDefaultsType',
                width : '100%',
            },
        },
        {
            $Type : 'UI.DataField',
            Value : Category.CategoryDescription,
            Label: 'Category Description',
            ![@HTML5.CssDefaults] : {
                $Type : 'HTML5.CssDefaultsType',
                width : '100%',
            },
        },
        {
            $Type : 'UI.DataField',
            Value : SalesPastMonth,
            Label : 'Sales Past Month',
        },
        {
            $Type : 'UI.DataFieldForAction',
            Action : 'CatalogService.testfunction',
            Label : 'testfunction',
        },
    ],
    UI.SelectionFields  : [
        Category_Category,
        Seller_SellerName,
        Status,
    ],
    UI.HeaderInfo  : {
        $Type : 'UI.HeaderInfoType',
        TypeName : 'Item',
        TypeNamePlural : 'Items',
        Title : {
            $Type : 'UI.DataField',
            Value : ItemName,
            Label: 'Item Name'
        },
        Description : {
            $Type : 'UI.DataField',
            Value : ItemDescription,
            Label: 'Item Description'
        },
    },

);

annotate CatalogService.Categories with @(
    UI.LineItem: [
        {
            $Type : 'UI.DataField',
            Value : Category,
            Label: 'Category'
        },
        {
            $Type : 'UI.DataField',
            Value : CategoryDescription,
            Label: 'Category Description'
        },
        {
            $Type : 'UI.DataField',
            Value : CategoryRank,
            Label: 'Category Rank'
        },
    ]
);


// Field-level annotations

annotate CatalogService.Items with {
    Status @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Status',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : Status,
                ValueListProperty : 'StatusName',
            },
        ],
    };
    Status @Common.ValueListWithFixedValues;
};



annotate CatalogService.Items with {
    Category @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Categories',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : Category_Category,
                ValueListProperty : 'Category',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'CategoryDescription',
            }
        ],
    };
    Category @title : 'Category'
};

annotate CatalogService.Items with {
    Seller @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Seller',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : Seller_SellerName,
                ValueListProperty : 'SellerName',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'SellerDescription',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'Region',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'JoiningDate',
            },
        ],
    };
    Seller @title : 'Seller'
};

annotate CatalogService.Items with {
    CountryOrigin @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Countries',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : CountryOrigin_Country,
                ValueListProperty : 'Country',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'CategoryDescription',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'DistributionCapital',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'Curency',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'HQLocation',
            },
        ],
    }
};

annotate CatalogService.Categories with {
    Category @title : 'Category Name';
    CategoryDescription @title : 'Description'
};

annotate CatalogService.Seller with {
    SellerName @title : 'Seller Name';
    SellerDescription @title : 'Description';
    Region @title : 'Region';
    JoiningDate @title : 'Joining Date';
};

annotate CatalogService.Items with actions {
 testAction @(
        //Refresh value after action
        Common.SideEffects.TargetProperties : ['in/ItemDescription']
    ) 
};

