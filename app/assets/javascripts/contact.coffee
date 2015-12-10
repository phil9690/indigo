# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
#
#
$(document).on 'ready page:load', ->
  ContactForm.init()

class this.ContactForm
  @init: ->
    form = new ContactForm()
    form.setupEvents()

  # NewContactModal constructor
  constructor: ->
    @form = $('#new_hiring_message')
    @submitBtn = $('#hiring_button')
    @formOpts =
      beforeSubmit:   @_handleFormSubmission
      success:        @_handleFormResponse
      error:          @_handleFormError

  # Sets event listeners on all gallery image thumbnails
  setupEvents: =>
    @form.ajaxForm(@formOpts)

    @form.enableClientSideValidations()

  _handleFormSubmission: =>
     formValidators = ClientSideValidations.forms[@form.attr('id')].validators
     debugger

     return false unless @form.isValid(formValidators)

     @submitBtn.prop('disabled', true)
     @submitBtn.addClass('disabled')
     @submitBtn.val('Sending..')

  _handleFormResponse: (responseText, statusText, xhr, $form) =>
     @submitBtn.val('Sent!')

  _handleFormError: =>
    # TODO: Change this to a toast or some kind
    console.log 'error took place.'
    @resetForm()

  resetForm: ->
    @submitBtn.prop('disabled', false)
    @submitBtn.removeClass('disabled')
    @submitBtn.val('Signup')
