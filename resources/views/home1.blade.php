<!DOCTYPE html>
<html>

@extends('layout-1')

    @section('content')
    <head>
        <title>Camille Beauty</title>
    </head>

<body>
  <table width="100%">
    <tr>
        <td width="40%">
        <img src="{{ URL('img/logo.jpg') }}" width="200px" height="200px">
        </td>
        <td>
        <strong><font size = "6">CAMILLE BEAUTY</font></strong>
        </td>

    </tr>
    </table>
    <table width="100%" align="center">
    <tr>
        
        <td align="center">
        <img src="{{ URL('img/toner.jpg') }}" width="200px" height="200px">
        <br> <b>NPure Toner Centella Asiatica</b>
        </td>
        <td align="center">
        <img src="{{ URL('img/cushion.jpg') }}" width="200px" height="200px">
        <br> <b> Hanasui Serum Cushion </b>
        </td>
        <td align="center">
        <img src="{{ URL('img/paketwhitening.jpg') }}" width="200px" height="200px">
        <br> <b> Whitening Camille </b>
        </td>
        <td align="center">
        <img src="{{ URL('img/lipstik.jpg') }}" width="200px" height="200px">
        <br> <b> Make Over Color Stick Matte Crayon</b>
        </td>
    </tr>
    </table>

    @endsection

</body>
</html>