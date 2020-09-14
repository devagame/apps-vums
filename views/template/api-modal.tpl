<!-- Modal -->
<div class="modal fade" id="showApiDialogModal" tabindex="-1" role="dialog" aria-labelledby="showApiDialogModalLabel">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" >查看API</h4>
            </div>

            <div class="modal-body">
                <h3 class="modal-title" id="showApiLabel"></h3>
                <p> <!--<span class="label label-success">Release</span>--></p>
                <div class="input-group">
                    <input type="text" class="form-control" placeholder="" value="https://starforce.gameframework.cn/api/wzry/release">
                    <span class="input-group-btn">
                        <button class="btn btn-success" type="button">复制</button>
                    </span>
                </div>

                <p></p>

                <p><!--<span class="label label-danger">Debug</span>--></p>
                <div class="input-group">
                    <input type="text" class="form-control" placeholder="" value="https://starforce.gameframework.cn/api/wzry/debug">
                    <span class="input-group-btn">
                        <button class="btn btn-danger" type="button">复制</button>
                    </span>
                </div>

                <p></p>

                <div class="clearfix"></div>
            </div>

            <div class="modal-footer">
                <span id="create-form-error-message"></span>
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
            </div>
        </div>
    </div>
</div><!--END Modal-->
