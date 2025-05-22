const cds = require ('@sap/cds'); require('./workarounds')

module.exports = cds.service.impl(async function() {
    this.after('READ', 'Items', itemsData => {
        console.log(itemsData);
        itemsData.forEach(item => {
            if (item.Status !== "Active") {
                item.StatusCriticality = 1;
            } else {
                item.StatusCriticality = 3;
            }
        })
    })
    this.after('CREATE', 'Items', itemsData => {
        // additional logic

    })
    this.on('DELETE', 'Items', itemsData => {
        
    })

    this.on('testfunction', itemsData => {
        return "testFunction"
    })

    this.on('updateAction', req => {
        req.data.test = 'asdfasdfasdf'
    })
    
    this.on('testAction', req => UPDATE(req._target).with({ItemDescription: req.data.test}))


})