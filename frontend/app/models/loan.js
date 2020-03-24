import DS from 'ember-data';

export default DS.Model.extend({
  // borrower_id: DS.attr('number'),
  // vendor_id: DS.attr('number'),
  // lender_id: DS.attr('number'),
  amount: DS.attr('number'),
  category: DS.attr('string'),
  borrower: DS.belongsTo('borrower'),
  vendor: DS.belongsTo('vendor'),
  lender: DS.belongsTo('lender')
})
