import Component from '@ember/component'
import { inject as service } from '@ember/service'

export default Component.extend({
  router: service(),

  actions: {
    goToList() {
      this.router.transitionTo('list')
    },
    goToApply() {
      this.router.transitionTo('apply')
    }
  }
});
