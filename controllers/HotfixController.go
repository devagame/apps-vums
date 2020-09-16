package controllers

type HotfixController struct {
	BaseController
}

func (c *HotfixController) Index() {
	c.Prepare()
	c.TplName = "hotfix/index.tpl"
}