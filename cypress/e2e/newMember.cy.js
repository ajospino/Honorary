describe('template spec', () => {
    beforeEach(() => {
      cy.visit('/members/new')
    })
    it('Check input name', () => {
        cy.findByTestId('label-input-name').should('be.visible').contains('Name')
        cy.findByTestId('input-name').should('be.enabled').and('be.visible').type('Cypress')
    })
    it('Check input phrase', () => {
        cy.findByTestId('label-input-phrase').should('be.visible').contains('Phrase')
        cy.findByTestId('input-phrase').should('be.enabled').and('be.visible').type('¡Me gradue en cypress!')
    })
    it('Check submit button', () => {
        cy.findByTestId('submit').should('be.visible').within(() => {
            cy.get('input').should('be.visible')
        })
    })
    it('Create new member',() => {
        cy.findByTestId('input-name').should('be.enabled').and('be.visible').type('Cypress')
        cy.findByTestId('input-phrase').should('be.enabled').and('be.visible').type('¡Me gradue en cypress!')
        cy.findByTestId('submit').within(() => {
            cy.get('input').click()
        })
    })

    after(() => {
        cy.findByTestId('delete-senior-button').click()
    })
})