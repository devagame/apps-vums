package controllers

type VersionController struct {
	BaseController
}

func (c *VersionController) Index() {
	c.Prepare()
	c.TplName = "version/index.tpl"
}