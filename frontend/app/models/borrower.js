import DS from 'ember-data';

export default DS.Model.extend({
   name: DS.attr('string'),
   address: DS.attr('string'),
   email: DS.attr('string'),
   phone: DS.attr('string'),
   income: DS.attr('number'),
   expense: DS.attr('number'),
   loan: DS.hasMany('loan')
 });
