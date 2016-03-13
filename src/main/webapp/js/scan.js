/**
 * Created by Skory on 2016/3/2.
 */
Dynamsoft.WebTwainEnv.RegisterEvent('OnWebTwainReady', Dynamsoft_OnReady);
// Register OnWebTwainReady event.
// This event fires as soon as Dynamic Web TWAIN is initialized and
// ready to be used

var DWObject, CurrentPath, strHTTPServer ;

//set currentpath
function getCurrentPath(){
    strHTTPServer = location.hostname;
    var CurrentPathName = unescape(location.pathname);
    CurrentPath = CurrentPathName.substring(0, CurrentPathName.lastIndexOf("/") + 1);
}

//initiate dwobject viewer
function initiateDWObjectViewer(){
    DWObject = Dynamsoft.WebTwainEnv.GetWebTwain('dwtcontrolContainer');
}

function Dynamsoft_OnReady() {
    //get current path
    getCurrentPath();
    //initiate the object viewer
   initiateDWObjectViewer();

    // Get the Dynamic Web TWAIN object that is embeded in the div with id 'dwtcontrolContainer'
    if (DWObject) {
        DWObject.RegisterEvent('OnInternetTransferPercentage',
            function (sPercentage) {
                console.log(sPercentage);
            });
        var count = DWObject.SourceCount;
        // Populate how many sources are installed in the system
        for (var i = 0; i < count; i++)
            document.getElementById("source").options.add(
                new Option(DWObject.GetSourceNameItems(i), i));  // Add the sources in a drop-down list

        // Register the events
        // The event OnPostTransfer fires after each image is scanned and transferred
        DWObject.RegisterEvent("OnPostTransfer", function () {
            updatePageInfo();
        });

        // The event OnPostLoad fires after the images from a local directory have been loaded into the control
        DWObject.RegisterEvent("OnPostLoad", updatePageInfo());

        // The event OnMouseClick fires when the mouse clicks on an image on Dynamic Web TWAIN viewer
        DWObject.RegisterEvent("OnMouseClick", updatePageInfo());

        // The event OnTopImageInTheViewChanged fires when the top image currently displayed in the viewer changes
        DWObject.RegisterEvent("OnTopImageInTheViewChanged", function (index) {
            DWObject.CurrentImageIndexInBuffer = index;
            updatePageInfo();
        });


        document.getElementById("imgTypejpeg").checked = true;
    }
}

function AcquireImage() {
    if (DWObject) {
        DWObject.SelectSourceByIndex($("#source").selectedIndex);
        DWObject.OpenSource();
        DWObject.IfDisableSourceAfterAcquire = true;
        // Scanner source will be disabled/closed automatically after the scan.
        DWObject.AcquireImage();
    }
}

//Callback functions for async APIs
function OnSuccess() {
    console.log('successful');
}

function OnFailure(errorCode, errorString) {
    alert(errorString);
}

//load image
function LoadImage() {
    if (DWObject) {
        DWObject.IfShowFileDialog = true;
        // Open the system's file dialog to load image
        DWObject.LoadImageEx("", EnumDWT_ImageType.IT_ALL, OnSuccess, OnFailure); // Load images in all supported formats (.bmp, .jpg, .tif, .png, .pdf). sFun or fFun will be called after the operation
    }
}
/*------------------upload images to server开始分割线---------------------------*/
//upload images to server
function OnHttpUploadSuccess() {
    console.log('successful');
}

function OnHttpServerReturnedSomething(errorCode, errorString, sHttpResponse) {
    var textFromServer = sHttpResponse;
    if(textFromServer.indexOf('DWTBarcodeUploadSuccess') != -1)
    {
        var url = 'http://' + location.hostname + ':' + location.port + CurrentPath + 'UploadedImages/' + textFromServer.substr(24);
        $('#uploadedFile').innerHTML = "Uploaded File: <a href='" + url + "' target='_blank'>" + textFromServer.substr(24) + "</a>";
    }
}

function UploadImage() {
    if (DWObject) {
        // If no image in buffer, return the function
        DWObject.IfShowCancelDialogWhenImageTransfer = !$('#quietScan').checked;
        if (DWObject.HowManyImagesInBuffer == 0)
            return;
        var strActionPage = CurrentPath + "/scan/save_file";
        //alert(strActionPage);
        DWObject.IfSSL = false; // Set whether SSL is used
        DWObject.HTTPPort = location.port == "" ? 80 : location.port;
        //alert(DWObject.HTTPPort);

        var Digital = new Date();
        var uploadfilename = Digital.getMilliseconds(); // Uses milliseconds according to local time as the file name
        //var nImgCount=0;
         /*$("canvas").each(function(){
             alert(this.toDataURL("image/png"));
             nImgCount++;
         });
        alert("图片数量："+nImgCount);*/
       // alert(strHTTPServer);
       // Upload the image(s) to the server asynchronously
        if ($("#imgTypejpeg").is(':checked')) {
            //$("#imageform").submit();
            //alert("submit done");
            DWObject.HTTPUploadThroughPost(strHTTPServer, DWObject.CurrentImageIndexInBuffer, strActionPage, uploadfilename + ".jpg", OnHttpUploadSuccess, OnHttpServerReturnedSomething);
        }
        else if ($("#imgTypetiff").is(':checked')) {
            DWObject.HTTPUploadAllThroughPostAsMultiPageTIFF(strHTTPServer, strActionPage, uploadfilename + ".tif", OnHttpUploadSuccess, OnHttpServerReturnedSomething);
        }
        else if ($("#imgTypepdf").is(':checked')) {
            DWObject.HTTPUploadAllThroughPostAsPDF(strHTTPServer, strActionPage, uploadfilename + ".pdf", OnHttpUploadSuccess, OnHttpServerReturnedSomething);
        }
    }
}
/*------------------upload images to server结束分割线---------------------------*/

/*------------------show image开始分割线---------------------------*/
//for show image in setting method
function btnPreImage_onclick() {
    if (DWObject) {
        if (DWObject.HowManyImagesInBuffer != 0 && DWObject.CurrentImageIndexInBuffer != 0) {
            DWObject.CurrentImageIndexInBuffer = DWObject.CurrentImageIndexInBuffer - 1;
            updatePageInfo();
        }
    }
}
function btnNextImage_onclick() {
    if (DWObject) {
        if (DWObject.HowManyImagesInBuffer != 0 && DWObject.CurrentImageIndexInBuffer
            < DWObject.HowManyImagesInBuffer - 1) {
            DWObject.CurrentImageIndexInBuffer = DWObject.CurrentImageIndexInBuffer + 1;
            updatePageInfo();
        }
    }
}
function btnFirstImage_onclick() {
    if (DWObject) {
        if (DWObject.HowManyImagesInBuffer != 0 && DWObject.CurrentImageIndexInBuffer != 0) {
            DWObject.CurrentImageIndexInBuffer = 0;
            updatePageInfo();
        }
    }
}
function btnLastImage_onclick() {
    if (DWObject) {
        if (DWObject.HowManyImagesInBuffer != 0 && DWObject.CurrentImageIndexInBuffer
            != DWObject.HowManyImagesInBuffer - 1) {
            DWObject.CurrentImageIndexInBuffer = DWObject.HowManyImagesInBuffer - 1;
            updatePageInfo();
        }
    }
}
function setlPreviewMode() {
    if (DWObject) {
        var o = parseInt(document.getElementById("DW_PreviewMode").selectedIndex + 1);
        DWObject.SetViewMode(o, o);
    }
}
function btnRemoveSelectedImages_onclick() {
    if (DWObject) {
        DWObject.RemoveAllSelectedImages();
        if (DWObject.HowManyImagesInBuffer == 0) {
            document.getElementById("DW_CurrentImage").value = "0";
            document.getElementById("DW_TotalImage").value = "0";
        }
        else {
            updatePageInfo();
        }
    }
}
function btnRemoveAllImages_onclick() {
    if (DWObject) {
        DWObject.RemoveAllImages();
        document.getElementById("DW_TotalImage").value = "0";
        document.getElementById("DW_CurrentImage").value = "0";
    }
}
function updatePageInfo() {
    if (DWObject) {
        document.getElementById("DW_TotalImage").value = DWObject.HowManyImagesInBuffer;
        document.getElementById("DW_CurrentImage").value
            = DWObject.CurrentImageIndexInBuffer + 1;
    }
}
/*------------------------------show image结束分割线-------------------------*/


//保存图片至本地
function SaveImage(){
    if(DWObject){
        if (DWObject.HowManyImagesInBuffer > 0) {
            DWObject.IfShowFileDialog = true;
            if ($("#imgTypejpeg").is(':checked')) {
                if ((DWObject.GetImageBitDepth(DWObject.CurrentImageIndexInBuffer)) == 1){
                    //If so, convert the image to Gray
                    DWObject.ConvertToGrayScale(DWObject.CurrentImageIndexInBuffer);
                }
                //Save image in JPEG
                DWObject.SaveAsJPEG("", DWObject.CurrentImageIndexInBuffer);
            }
            else if ($("#imgTypetiff").is(':checked')) {
                DWObject.SaveAllAsMultiPageTIFF("", OnSuccess, OnFailure);
            }
            else if ($("#imgTypepdf").is(':checked')) {
                DWObject.SaveAllAsPDF("", OnSuccess, OnFailure);
            }
        }

    }
}



