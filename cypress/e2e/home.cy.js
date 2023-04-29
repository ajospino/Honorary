describe('template spec', () => {
  beforeEach(() => {
    cy.visit('/')
  })
  it('Check theres memeber', () => {
    cy.findByTestId('all-members').should('be.visible')
  })
  it('Check there are seniors', () => {
    cy.get('[cy-testid^="senior"]').should('be.visible').each(($el, index) => {
      cy.findByTestId(`name-senior${index+1}`).should('be.visible')
      cy.findByTestId(`phrase-senior${index+1}`).should('be.visible')
      cy.findByTestId(`promotion-senior${index+1}`).should('be.visible')
      cy.findByTestId(`show-senior${index+1}`).should('be.visible')
    })
  })
  it('Check new memeber button', () => {
    cy.findByTestId('new-member-button').should('be.visible').click()
    cy.url().should('include', 'members/new')
  })
})