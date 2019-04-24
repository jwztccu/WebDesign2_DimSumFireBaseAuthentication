<dimsum-cart>
<center>
    <!--start of sweet and savoury buttons tag-->
    <h2>Num Sweet: { numSweet }</h2>
    <button onclick={ showSweet }>I &#10084; Sweet </button>
    <button onclick={ showSavoury }>I &#10084; Savoury</button>
    <!--start of sweet and savoury buttons tag-->

    <!--scripts start-->
  <script>
    var that = this;

    console.log('dimsum-cart.tag');

//saying to look at the top of reference table dim_sum_flavors
//find me the child in rootRef (that was dfined in index) and
//look at the top of root ref for dim_sum_flavors

    var sweetRef = rootRef.child('/sweet_votes');
    var savouryRef = rootRef.child('/savoury_votes');
    this.numSweet = 0;
    this.numSavoury = 0;

//start of sweet
    showSweet(event) {
      observable.trigger('sweet');
      var key = sweetRef.push().key;
			console.log(key);
      var msg = {
				dimSumSelection: 'Sweet'
			};

      sweetRef.push(msg);
    }

    showSavoury(event) {
      observable.trigger('savoury');
      var key = savouryRef.push().key;
			console.log(key);
      var msg = {
				dimSumSelection: 'savoury'
			};

      savouryRef.push(msg);
    }

    sweetRef.on('value', function(snap){
        that.numSweet++;
        that.update();
    });


  </script>
  <!--scripts end-->
<br>

<!--start of riot tags-->
<div>
  <div>
<dimsum-eggtart></dimsum-eggtart>
<dimsum-noodleroll></dimsum-noodleroll>
</div>
</div>
<!--end of riot tags-->
</center>
</dimsum-cart>
