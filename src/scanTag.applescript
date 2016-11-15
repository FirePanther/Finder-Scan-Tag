/**
 * Instead of editing this file drag the scanTag.app into Automator
 */
function run(input, parameters) {
	app = Application.currentApplication()
	app.includeStandardAdditions = true;
	app.doShellScript('"'+app.pathTo(this).toString().replace(/\.app$/, '.sh')+'" "'+input[0].toString()+'"');
	return input;
}
