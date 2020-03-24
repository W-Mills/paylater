import DS from 'ember-data';

export default DS.Model.extend({
  name: DS.attr('string'),
  maximum: DS.attr('number'),
  loan: DS.hasMany('loan')
})
