describe('template spec', () => {
  beforeEach(() => {
    cy.visit('/')
  })
  it('Check theres memeber', () => {
    cy.findByTestId('all-members').should('be.visible')
  })
  it('Check there are seniors', () => {
    cy.get('[cy-testid^="senior"]').should('be.visible').each(($el, index) => {
      cy.get('[cy-testid^="name-senior"]').should('be.visible')
      cy.get('[cy-testid^="phrase-senior"]').should('be.visible')
      cy.get('[cy-testid^="promotion-senior"]').should('be.visible')
      cy.get('[cy-testid^="show-senior"]').should('be.visible')
    })
  })
  it('Check new memeber button', () => {
    cy.findByTestId('new-member-button').should('be.visible').click()
    cy.url().should('include', 'members/new')
  })
})