/**
 * Created by Administrator on 2016/3/12.
 */
function initLayer()
{
    initBaseLayer();
    initFeatureLayer();
    initVectorLayer();
    initMeasureLayer();
}
function initBaseLayer()
{
    //天地图瓦片数据
    var projection = ol.proj.get('EPSG:900913');
    var projectionExtent = projection.getExtent();
    var size = ol.extent.getWidth(projectionExtent) / 256;
    var resolutions = new Array(40);
    var matrixIds = new Array(40);
    for (var z = 0; z < 40; ++z) {
        // generate resolutions and matrixIds arrays for this WMTS
        resolutions[z] = size / Math.pow(2, z);
        matrixIds[z] = z;
    }
    var attribution = new ol.Attribution({
        html: '@copyright linyijun'
    });
    view = new ol.View({
        center: ol.proj.transform(
            [114.3704, 30.54907], 'EPSG:4326', 'EPSG:900913'),
        zoom: 13,
        minResolution: 1
    });
    //底图
    baseLayer = new ol.layer.Tile({
        source: new ol.source.WMTS({
            attributions: [attribution],
            url: 'http://t0.tianditu.com/vec_w/wmts',
            layer: 'vec',
            matrixSet: 'w',
            format: 'tiles',
            projection: projection,
            tileGrid: new ol.tilegrid.WMTS({
                origin: ol.extent.getTopLeft(projectionExtent),
                resolutions: resolutions,
                matrixIds: matrixIds
            }),
            style: 'default',
            wrapX: true
        })
    });
    baseLayer.set("name","baseLayer");
    //卫星影像图
    terrianLayer= new ol.layer.Tile({
        source: new ol.source.WMTS({
            attributions: [attribution],
            url: 'http://t0.tianditu.com/img_w/wmts',
            layer: 'img',
            matrixSet: 'w',
            format: 'tiles',
            projection: projection,
            tileGrid: new ol.tilegrid.WMTS({
                origin: ol.extent.getTopLeft(projectionExtent),
                resolutions: resolutions,
                matrixIds: matrixIds
            }),
            style: 'default',
            wrapX: true
        })
    });
    terrianLayer.setVisible(0);
    terrianLayer.set("name","terrianLayer");
    //标记图层
    baseMarkLayer = new ol.layer.Tile({
        source: new ol.source.WMTS({
            attributions: [attribution],
            url: 'http://t0.tianditu.com/cva_w/wmts',
            layer: 'cva',
            matrixSet: 'w',
            format: 'tiles',
            projection: projection,
            tileGrid: new ol.tilegrid.WMTS({
                origin: ol.extent.getTopLeft(projectionExtent),
                resolutions: resolutions,
                matrixIds: matrixIds
            }),
            style: 'default',
            wrapX: true
        })
    });
    baseMarkLayer.set("name","baseMarkLayer");
}
function initVectorLayer()
{
    //设置要素样式
    styles = {
        'Point': [new ol.style.Style({
            image: new ol.style.Circle({
                radius: 6,
                fill: new ol.style.Fill({
                    color: [0, 153, 255, 1]
                }),
                stroke: new ol.style.Stroke({
                    color: [255, 255, 255, 0.75],
                    width: 1.5
                })
            }),
            zIndex: 100000

        })],
        'LineString': [new ol.style.Style({
            stroke: new ol.style.Stroke({
                color: 'blue',
                width: 4
            })
        })],
        'Polygon': [new ol.style.Style({
            stroke: new ol.style.Stroke({
                color: 'blue',
                width: 2
            }),
            fill: new ol.style.Fill({
                color: "#ffffff"
            })
        })],
        'Circle': [new ol.style.Style({
            stroke: new ol.style.Stroke({
                color: 'black',
                width: 2
            }),
            fill: new ol.style.Fill({
                color: '#ff0000'
            })
        })]
    };
    styleFunction = function(feature, resolution) {
        return styles[feature.getGeometry().getType()];
    };
    //矢量数据图层
    vectorSource = new ol.source.Vector({
        wrapX: false
    });
    vectorLayer = new ol.layer.Vector({
        source: vectorSource,
        style: styleFunction
    });
    vectorLayer.set("name","vectorLayer");
}
function initMeasureLayer()
{
    //测距图层
    measureSource = new ol.source.Vector({
        wrapX: false
    });
    measureLayer = new ol.layer.Vector({
        source: measureSource,
        style: new ol.style.Style({
            fill: new ol.style.Fill({
                color: 'rgba(255, 255, 255, 0.4)'
            }),
            stroke: new ol.style.Stroke({
                color: '#ffcc33',
                width: 2
            }),
            image: new ol.style.Circle({
                radius: 7,
                fill: new ol.style.Fill({
                    color: '#ffcc33'
                })
            })
        })
    });
    measureLayer.set("name","measureLayer");
}
function initFeatureLayer()
{ //设置要素样式
    featureStyles = {
        'Point': [new ol.style.Style({
            image: new ol.style.Icon(
                ({
                    anchor: [0.5, 46],
                    anchorXUnits: 'fraction',
                    anchorYUnits: 'pixels',
                    opacity: 0.75,
                    src: 'img/home.png'
                }))
        })]
    };
    featureStyleFunction = function(feature, resolution) {
        return  featureStyles[feature.getGeometry().getType()];
    };
    //房屋图层
    houseSource = new ol.source.Vector({
        wrapX: false
    });
    var houseData = {
        "type": "FeatureCollection",
        "features": [{
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [12727341.723190226, 3575380.0631930684]
            },
            "properties": null
        },{
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [12727641.723190226, 3575680.0631930684]
            },
            "properties": null
        },{
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [12727941.723190226, 3575980.0631930684]
            },
            "properties": null
        }]
    }
    houseSource.addFeatures((new ol.format.GeoJSON()).readFeatures(houseData));
    houseLayer = new ol.layer.Vector({
        source: houseSource,
        style:featureStyleFunction
    });
    houseLayer.set("name","houseLayer");
    //标牌图层
    signStyles = {
        'Point': [new ol.style.Style({
            image: new ol.style.Icon(
                ({
                    anchor: [0.5, 46],
                    anchorXUnits: 'fraction',
                    anchorYUnits: 'pixels',
                    opacity: 0.75,
                    src: 'img/sign.png'
                }))
        })]
    };
    signStyleFunction = function(feature, resolution) {
        return  signStyles[feature.getGeometry().getType()];
    };
    signSource = new ol.source.Vector({
        wrapX: false
    });
    signLayer = new ol.layer.Vector({
        source: signSource,
        style: signStyleFunction
    });
    var signData = {
        "type": "FeatureCollection",
        "features": [{
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [12726341.723190226, 3574380.0631930684]
            },
            "properties": null
        },
            {
                "type": "Feature",
                "geometry": {
                    "type": "Point",
                    "coordinates": [12725041.723190226, 3573780.0631930684]
                },
                "properties": null
            },
            {
                "type": "Feature",
                "geometry": {
                    "type": "Point",
                    "coordinates": [12728041.723190226, 3574080.0631930684]
                },
                "properties": null
            }]
    }
    signSource.addFeatures((new ol.format.GeoJSON()).readFeatures(signData));
    signLayer.set("name","signLayer");
}