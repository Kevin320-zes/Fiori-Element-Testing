using db as my from '../db/schema';

service CatalogService {
    @readonly entity Books as projection on my.Books;
    entity Items @(
        Capabilities : { 
            InsertRestrictions : {
                $Type : 'Capabilities.InsertRestrictionsType',
                Insertable,
            },
            UpdateRestrictions : {
                $Type : 'Capabilities.UpdateRestrictionsType',
                Updatable,
            },
            DeleteRestrictions : {
                $Type : 'Capabilities.DeleteRestrictionsType',
                Deletable,
            },
        },
    )
    as projection on my.Items actions {
        function testfunction() returns String;
        action testAction(test: String @title: '{i18n>approveOrder.note}') returns String;
        // action testAction();
        action updateAction();
    }
    // action testAction(test: Percentage) returns String;
    // action testAction(test: Percentage) returns Items;
    type Percentage : Integer @assert.range: [1,100];
    annotate Items with @odata.draft.enabled;
    @readonly entity Categories as projection on my.Categories;
    @readonly entity Seller as projection on my.Seller;
    @readonly entity Countries as projection on my.Countries;
    @readonly entity Status as projection on my.Status;  
}


