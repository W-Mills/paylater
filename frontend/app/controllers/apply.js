import Controller from '@ember/controller';
import EmberObject from '@ember/object';

export default Controller.extend({
  init() {
      this._super(...arguments);
      this.set('newApplication', {});
  },

  actions: {
    createLoan: function(loan) {
      console.log("newApplication", this.newApplication.borrower);

      var newBorrower = this.store.createRecord('borrower', {
        name: this.newApplication.borrower,
        address: this.newApplication.address,
        email: this.newApplication.email,
        phone: this.newApplication.phone,
        income: this.newApplication.income,
        expense: this.newApplication.expense
      });

      var newVendor = this.store.createRecord('vendor', {
        name: this.newApplication.vendor,
        category: "bootcamp"
      });

      var newLoan = this.store.createRecord('loan', {
        amount: this.newApplication.amount,
        category: "bootcamp",
        lender_id: 1
      });
      newVendor.save();
      newBorrower.save();
      newLoan.save().then(() => {
        this.transitionToRoute('/');
        alert("this is done");
      });
     }
   }
});
