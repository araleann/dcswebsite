function init () {
	var shuffle = $('div#shuffle')
	Array.prototype.shuffle = function() {
		var i = this.length, j, tempi, tempj;
		if ( i == 0 ) return this;
		while ( --i ) {
			j       = Math.floor( Math.random() * ( i + 1 ) );
			tempi   = this[i];
			tempj   = this[j];
			this[i] = tempj;
			this[j] = tempi;
		}
		return this;
	}
	var text = [
		"We can only see a short distance ahead, but we can see plenty there that needs to be done. - Alan Turing",
		"Design is not just what it looks like and feels like. Design is how it works. - Steve Jobs",
		"Well, it's no secret that the best thing about a secret is secretly telling someone your secret, thereby adding another secret to their secret collection of secrets, secretly. - Spongebob",
		"Quitting won't do you any good. You have to work for an answer. -  Kenji Koiso, Summer Wars"
	]
	text = text.shuffle()
	var ctr = 8000
	var i = 0

	shuffle.shuffleLetters({ 
		"text": "Welcome!"
	}) 
	setInterval(function(){
		// Shuffle the container with custom text
		shuffle.shuffleLetters({ 
			"text": text[i]
		})  
		if (i == text.length)
			i = 0
		else
			i++
	},ctr)
		
}
$('document').ready(init)