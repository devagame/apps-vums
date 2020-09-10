<!-- Modal -->
<div class="modal fade" id="addFieldsDialogModal" tabindex="-1" role="dialog" aria-labelledby="addFieldsDialogModalLabel">
    <div class="modal-dialog modal-lg">
        <form method="post" autocomplete="off" class="form-horizontal" action="{{urlfor "ManagerController.ItemsetsEdit"}}" id="addItemsetsDialogForm">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">创建字段模板</h4>
                </div>

                <div class="modal-body">

                    <table id="table"></table>

                    <div class="clearfix"></div>
                </div>

                <div class="modal-footer">
                    <span id="create-form-error-message"></span>
                    <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                    <button type="submit" class="btn btn-success" data-loading-text="保存中..." id="btnAddItemsets">保存</button>
                </div>
            </div>
        </form>
    </div>
</div><!--END Modal-->
