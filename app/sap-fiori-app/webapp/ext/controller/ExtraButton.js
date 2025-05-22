sap.ui.define([
    "sap/m/MessageToast"
], function(MessageToast) {
    'use strict';

    return {
        onPressExtraButton: function(oEvent) {
            MessageToast.show("Custom handler invoked.");
        }
    };
});
