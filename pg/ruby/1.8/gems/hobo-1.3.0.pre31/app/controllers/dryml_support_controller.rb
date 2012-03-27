class DrymlSupportController < ActionController::Base

  def edit_source
    dryml_editor = ENV['DRYML_EDITOR']
    if dryml_editor
      file = File.join(Rails.root, params[:file])
      command = dryml_editor.sub(":file", file).sub(":line", params[:line])
      system(command)
    end
    render :nothing => true
  end

end
