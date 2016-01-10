# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
#
#
class this.ContactForm
  @init: (form, submitBtn) ->
    form = new ContactForm(form, submitBtn)
    form.setupEvents()

  # NewContactModal constructor
  constructor: (form, submitBtn) ->
    @form = form
    @submitBtn = submitBtn
    @formOpts =
      beforeSubmit:   @_handleFormSubmission
      success:        @_handleFormResponse
      error:          @_handleFormError

  # Sets event listeners on all gallery image thumbnails
  setupEvents: =>
    @form.ajaxForm(@formOpts)

  _handleFormSubmission: =>
    formValidators = ClientSideValidations.forms[@form.attr('id')].validators
    @form.enableClientSideValidations()

    return false unless @form.isValid(formValidators)

    @submitBtn.prop('disabled', true)
    @submitBtn.addClass('disabled')
    @submitBtn.val('Sending..')

  _handleFormResponse: (responseText, statusText, xhr, $form) =>
    @submitBtn.val('Sent!')

  _handleFormError: =>
    # TODO: Change this to a toast or some kind
    console.log 'An error took place.'
    @resetForm()

  resetForm: ->
    @submitBtn.prop('disabled', false)
    @submitBtn.removeClass('disabled')
    @submitBtn.val('Signup')
