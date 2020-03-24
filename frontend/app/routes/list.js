import Route from '@ember/routing/route';

export default class ListRoute extends Route {
  model() {
    return this.get('store').query('loan', {});
  }
}

// import Route from '@ember/routing/route';

// export default class ListRoute extends Route {
//   model() {
//     return this.get('store').findAll('borrower');
//   }
// }
