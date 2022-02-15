<%@ Page Language="C#" AutoEventWireup="true" CodeFile="XMapJS.aspx.cs" Inherits="CS" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
   <%-- <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>--%>
   <%-- <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&signed_in=true"></script>--%>
    <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?key=AIzaSyD9uiyFbXfbSOsY6umTUtl4_rvl_LkQKxE&sensor=false&libraries=places"></script>
   
    <script type="text/javascript">
    var markers = [
    <asp:Repeater ID="rptMarkers" runat="server">
    <ItemTemplate>
             {
                "title": '<%# Eval("R_name") %>',
                "lat": '<%# Eval("R_lat") %>',
                "lng": '<%# Eval("R_long") %>',
                "description": '<%# Eval("R_info") %>'
            }
    </ItemTemplate>
    <SeparatorTemplate>
        ,
    </SeparatorTemplate>
    </asp:Repeater>
    ];
    </script>
    <script type="text/javascript">

        window.onload = function () {
            var mapOptions = {
                center: new google.maps.LatLng(markers[0].lat, markers[0].lng),
                zoom: 8,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };
            var infoWindow = new google.maps.InfoWindow();
            var map = new google.maps.Map(document.getElementById("dvMap"), mapOptions);
            for (i = 0; i < markers.length; i++) {
                var data = markers[i]
                var myLatlng = new google.maps.LatLng(data.lat, data.lng);
                var marker = new google.maps.Marker({
                    position: myLatlng,
                    map: map,
                    title: data.title
                });
                (function (marker, data) {
                    google.maps.event.addListener(marker, "click", function (e) {
                        infoWindow.setContent(data.description);
                        infoWindow.open(map, marker);
                    });
                })(marker, data);
            }
        }
    </script>
    <center>
    <div id="dvMap" style="width: 800px; height: 500px; border:1px solid black;"  >
    
    </div>
    
    <hr />
        <asp:button id="backButton" runat="server" text="Back" 
            OnClientClick="JavaScript:window.history.back(1);return false;" 
            onclick="backButton_Click"></asp:button>
    <hr />
    </center>
    </form>
</body>
</html>
