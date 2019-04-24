<dimsum-noodleroll>
  <img src="images/dimsum_gnowcherng_beefnoodleroll.png">
    <br />

    <font face="arial" size=6 color="purple">{dimsumtext}</font>
    <br />


    <script>
    this.dimsumtext=""

    var that=this
    observable.on('savoury', function(){
      that.dimsumtext="I'm savoury";
      that.update
    })
    observable.on('sweet', function(){
      that.dimsumtext="";
      that.update
    })
    </script>
</dimsum-noodleroll>
