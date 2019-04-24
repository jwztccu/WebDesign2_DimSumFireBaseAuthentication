<dimsum-eggtart>
  <img src="images/dimsum_dahntaht_eggtart.png">
    <br />

    <font face="arial" size=6 color="purple">{dimsumtext}</font>
    <br />

    <script>
    this.dimsumtext=""

    var that=this
    observable.on('sweet', function() {
      that.dimsumtext="I'm Sweet";
      that.update();
    });

    observable.on('savoury', function() {
      that.dimsumtext="";
      that.update();
    });

    </script>
</dimsum-eggtart>
