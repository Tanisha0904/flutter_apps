class Quote{

   String text;
   String author;
  // late int name;
   // or
   // int ? name;
   //both works when the error is regarding the variable to ve nullable



  // Quote(String text, String author){
  //   this.text = text;
  //   this.author = author;
  // }
  //or
  Quote({  required this.text,   required this.author});


}

// Quote myquote = Quote('This is the quote text', 'Author name');
//or
// Quote myquote = Quote(text: 'This is the quote text', author:'Author name');


