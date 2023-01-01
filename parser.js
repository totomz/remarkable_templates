/*
Keep synced all templates in

Get the original file from Remarkable, add the new objects or update in place the objects with the same name
 
 */
const fs = require('fs');
const originalFile = require('./templates.json');
const targetState = require('./templates.addition.json');

targetState.templates.forEach(newObj => {
	console.log(newObj.name);
	const existing = originalFile.templates.find(o => o.name === newObj.name);
	
	if(!existing) {
		originalFile.templates.push(newObj);
		return true;
	}
	
	// update in place
	existing.filename = newObj.filename;
	existing.iconCode = newObj.iconCode;
	existing.categories = newObj.categories;
	
})

fs.writeFileSync('./templates.merged.json', JSON.stringify(originalFile, '', 4));

