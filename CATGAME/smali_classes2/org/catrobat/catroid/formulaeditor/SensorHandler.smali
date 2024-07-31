.class public final Lorg/catrobat/catroid/formulaeditor/SensorHandler;
.super Ljava/lang/Object;
.source "SensorHandler.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Lorg/catrobat/catroid/formulaeditor/SensorCustomEventListener;
.implements Landroid/location/LocationListener;
.implements Landroid/location/GpsStatus$Listener;


# static fields
.field private static final BT_SERVICE:Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;

.field private static final RADIAN_TO_DEGREE_CONST:F = 57.295776f

.field private static final TAG:Ljava/lang/String;

.field private static instance:Lorg/catrobat/catroid/formulaeditor/SensorHandler;

.field private static listeningLanguageSensor:Ljava/lang/String;

.field public static timerPauseValue:D

.field public static timerReferenceValue:D

.field private static userLocaleTag:Ljava/lang/String;


# instance fields
.field private accelerationAvailable:Z

.field private accelerationXYZ:[F

.field private accelerometerSensor:Landroid/hardware/Sensor;

.field private compassAvailable:Z

.field private final gravity:[F

.field private inclinationAvailable:Z

.field private isGpsConnected:Z

.field private lastLocationGps:Landroid/location/Location;

.field private lastLocationGpsMillis:J

.field private linearAccelerationSensor:Landroid/hardware/Sensor;

.field private linearAccelerationX:F

.field private linearAccelerationY:F

.field private linearAccelerationZ:F

.field private locationManager:Landroid/location/LocationManager;

.field private magneticFieldSensor:Landroid/hardware/Sensor;

.field private final rotationMatrix:[F

.field private final rotationVector:[F

.field private rotationVectorSensor:Landroid/hardware/Sensor;

.field private sensorLoudness:Lorg/catrobat/catroid/formulaeditor/SensorLoudness;

.field private sensorManager:Lorg/catrobat/catroid/formulaeditor/SensorManagerInterface;

.field private final sensorValueMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/catrobat/catroid/formulaeditor/Sensors;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private signAccelerationZ:F

.field private useLinearAccelerationFallback:Z

.field private useRotationVectorFallback:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    const-class v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->TAG:Ljava/lang/String;

    .line 68
    sget-object v0, Lorg/catrobat/catroid/common/CatroidService;->BLUETOOTH_DEVICE_SERVICE:Ljava/lang/Class;

    invoke-static {v0}, Lorg/catrobat/catroid/common/ServiceProvider;->getService(Ljava/lang/Class;)Lorg/catrobat/catroid/common/CatroidService;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;

    sput-object v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->BT_SERVICE:Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;

    .line 84
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->userLocaleTag:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->rotationMatrix:[F

    .line 75
    const/4 v0, 0x3

    new-array v1, v0, [F

    iput-object v1, p0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->rotationVector:[F

    .line 76
    new-array v1, v0, [F

    iput-object v1, p0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->accelerationXYZ:[F

    .line 78
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->gravity:[F

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->compassAvailable:Z

    .line 87
    iput-boolean v0, p0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->accelerationAvailable:Z

    .line 88
    iput-boolean v0, p0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->inclinationAvailable:Z

    .line 102
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->sensorValueMap:Ljava/util/Map;

    .line 109
    new-instance v1, Lorg/catrobat/catroid/formulaeditor/SensorManager;

    .line 110
    const-string v2, "sensor"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/formulaeditor/SensorManager;-><init>(Landroid/hardware/SensorManager;)V

    iput-object v1, p0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->sensorManager:Lorg/catrobat/catroid/formulaeditor/SensorManagerInterface;

    .line 111
    const/16 v2, 0xa

    invoke-interface {v1, v2}, Lorg/catrobat/catroid/formulaeditor/SensorManagerInterface;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->linearAccelerationSensor:Landroid/hardware/Sensor;

    .line 112
    if-nez v1, :cond_0

    .line 113
    iput-boolean v0, p0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->useLinearAccelerationFallback:Z

    .line 116
    :cond_0
    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->sensorManager:Lorg/catrobat/catroid/formulaeditor/SensorManagerInterface;

    const/16 v2, 0xb

    invoke-interface {v1, v2}, Lorg/catrobat/catroid/formulaeditor/SensorManagerInterface;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->rotationVectorSensor:Landroid/hardware/Sensor;

    .line 117
    if-nez v1, :cond_1

    .line 118
    iput-boolean v0, p0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->useRotationVectorFallback:Z

    .line 121
    :cond_1
    iget-boolean v1, p0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->useRotationVectorFallback:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 122
    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->sensorManager:Lorg/catrobat/catroid/formulaeditor/SensorManagerInterface;

    invoke-interface {v1, v0}, Lorg/catrobat/catroid/formulaeditor/SensorManagerInterface;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->accelerometerSensor:Landroid/hardware/Sensor;

    .line 123
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->sensorManager:Lorg/catrobat/catroid/formulaeditor/SensorManagerInterface;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lorg/catrobat/catroid/formulaeditor/SensorManagerInterface;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->magneticFieldSensor:Landroid/hardware/Sensor;

    .line 124
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->accelerometerSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_2

    .line 125
    iput-boolean v2, p0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->accelerationAvailable:Z

    .line 126
    iput-boolean v2, p0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->inclinationAvailable:Z

    .line 128
    :cond_2
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->magneticFieldSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_4

    .line 129
    iput-boolean v2, p0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->compassAvailable:Z

    goto :goto_0

    .line 131
    :cond_3
    iget-boolean v1, p0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->useLinearAccelerationFallback:Z

    if-eqz v1, :cond_4

    .line 132
    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->sensorManager:Lorg/catrobat/catroid/formulaeditor/SensorManagerInterface;

    invoke-interface {v1, v0}, Lorg/catrobat/catroid/formulaeditor/SensorManagerInterface;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->accelerometerSensor:Landroid/hardware/Sensor;

    .line 133
    if-nez v0, :cond_4

    .line 134
    iput-boolean v2, p0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->accelerationAvailable:Z

    .line 137
    :cond_4
    :goto_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static calculateCompassDirection([F)Ljava/lang/Double;
    .locals 7
    .param p0, "rotationMatrixOut"    # [F

    .line 385
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 386
    .local v0, "orientations":[F
    sget-object v1, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->instance:Lorg/catrobat/catroid/formulaeditor/SensorHandler;

    iget-boolean v2, v1, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->useRotationVectorFallback:Z

    if-nez v2, :cond_0

    .line 387
    iget-object v2, v1, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->rotationMatrix:[F

    iget-object v1, v1, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->rotationVector:[F

    invoke-static {v2, v1}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    .line 390
    :cond_0
    invoke-static {}, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->rotateOrientation()I

    move-result v1

    move v2, v1

    .local v2, "rotate":I
    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 391
    sget-object v1, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->instance:Lorg/catrobat/catroid/formulaeditor/SensorHandler;

    iget-object v1, v1, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->rotationMatrix:[F

    const/4 v3, 0x2

    const/16 v4, 0x81

    invoke-static {v1, v3, v4, p0}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    .line 393
    invoke-static {p0, v0}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    goto :goto_0

    .line 394
    :cond_1
    const/4 v1, -0x1

    if-ne v2, v1, :cond_2

    .line 395
    sget-object v1, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->instance:Lorg/catrobat/catroid/formulaeditor/SensorHandler;

    iget-object v1, v1, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->rotationMatrix:[F

    const/16 v4, 0x82

    invoke-static {v1, v4, v3, p0}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    .line 397
    invoke-static {p0, v0}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    goto :goto_0

    .line 399
    :cond_2
    sget-object v1, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->instance:Lorg/catrobat/catroid/formulaeditor/SensorHandler;

    iget-object v1, v1, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->rotationMatrix:[F

    invoke-static {v1, v0}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 401
    :goto_0
    const/4 v1, 0x0

    aget v1, v0, v1

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 402
    .local v1, "sensorValue":Ljava/lang/Double;
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const-wide v5, 0x404ca5dc00000000L    # 57.2957763671875

    mul-double/2addr v3, v5

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    return-object v3
.end method

.method private static calculateXInclination([F)Ljava/lang/Object;
    .locals 8
    .param p0, "rotationMatrixOut"    # [F

    .line 409
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->instance:Lorg/catrobat/catroid/formulaeditor/SensorHandler;

    iget-boolean v1, v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->useRotationVectorFallback:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    .line 411
    invoke-static {}, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->rotateOrientation()I

    move-result v0

    move v1, v0

    .local v1, "rotate":I
    const v3, 0x42652ee0

    if-eqz v0, :cond_0

    .line 412
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->instance:Lorg/catrobat/catroid/formulaeditor/SensorHandler;

    iget-object v0, v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->accelerationXYZ:[F

    aget v0, v0, v2

    int-to-float v2, v1

    mul-float/2addr v0, v2

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->acos(D)D

    move-result-wide v4

    double-to-float v0, v4

    mul-float/2addr v0, v3

    .local v0, "rawInclinationX":F
    goto :goto_0

    .line 415
    .end local v0    # "rawInclinationX":F
    :cond_0
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->instance:Lorg/catrobat/catroid/formulaeditor/SensorHandler;

    iget-object v0, v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->accelerationXYZ:[F

    const/4 v2, 0x0

    aget v0, v0, v2

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->acos(D)D

    move-result-wide v4

    double-to-float v0, v4

    mul-float/2addr v0, v3

    .line 417
    .restart local v0    # "rawInclinationX":F
    :goto_0
    const/4 v2, 0x0

    .line 419
    .local v2, "correctedInclinationX":F
    const/high16 v3, 0x42b40000    # 90.0f

    cmpl-float v4, v0, v3

    const/4 v5, 0x0

    if-ltz v4, :cond_2

    const/high16 v4, 0x43340000    # 180.0f

    cmpg-float v6, v0, v4

    if-gtz v6, :cond_2

    .line 420
    sget-object v6, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->instance:Lorg/catrobat/catroid/formulaeditor/SensorHandler;

    iget v6, v6, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->signAccelerationZ:F

    cmpl-float v5, v6, v5

    if-lez v5, :cond_1

    .line 421
    sub-float v3, v0, v3

    neg-float v2, v3

    goto :goto_1

    .line 423
    :cond_1
    sub-float/2addr v3, v0

    add-float/2addr v3, v4

    neg-float v2, v3

    goto :goto_1

    .line 425
    :cond_2
    cmpl-float v4, v0, v5

    if-ltz v4, :cond_4

    cmpg-float v4, v0, v3

    if-gez v4, :cond_4

    .line 426
    sget-object v4, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->instance:Lorg/catrobat/catroid/formulaeditor/SensorHandler;

    iget v4, v4, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->signAccelerationZ:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    .line 427
    sub-float v2, v3, v0

    goto :goto_1

    .line 429
    :cond_3
    add-float v2, v0, v3

    .line 432
    :cond_4
    :goto_1
    invoke-static {}, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->rotateOrientation()I

    move-result v3

    if-eqz v3, :cond_5

    .line 433
    neg-float v2, v2

    .line 435
    :cond_5
    float-to-double v3, v2

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    return-object v3

    .line 437
    .end local v0    # "rawInclinationX":F
    .end local v1    # "rotate":I
    .end local v2    # "correctedInclinationX":F
    :cond_6
    const/4 v1, 0x3

    new-array v1, v1, [F

    .line 438
    .local v1, "orientations":[F
    iget-object v3, v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->rotationMatrix:[F

    iget-object v0, v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->rotationVector:[F

    invoke-static {v3, v0}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    .line 440
    invoke-static {}, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->rotateOrientation()I

    move-result v0

    move v3, v0

    .local v3, "rotate":I
    const/4 v4, 0x2

    if-ne v0, v2, :cond_7

    .line 441
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->instance:Lorg/catrobat/catroid/formulaeditor/SensorHandler;

    iget-object v0, v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->rotationMatrix:[F

    const/16 v2, 0x81

    invoke-static {v0, v4, v2, p0}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    .line 443
    invoke-static {p0, v1}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    goto :goto_2

    .line 444
    :cond_7
    const/4 v0, -0x1

    if-ne v3, v0, :cond_8

    .line 445
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->instance:Lorg/catrobat/catroid/formulaeditor/SensorHandler;

    iget-object v0, v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->rotationMatrix:[F

    const/16 v5, 0x82

    invoke-static {v0, v5, v2, p0}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    .line 447
    invoke-static {p0, v1}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    goto :goto_2

    .line 449
    :cond_8
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->instance:Lorg/catrobat/catroid/formulaeditor/SensorHandler;

    iget-object v0, v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->rotationMatrix:[F

    invoke-static {v0, v1}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 451
    :goto_2
    aget v0, v1, v4

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 452
    .local v0, "sensorValue":Ljava/lang/Double;
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide v6, 0x404ca5dc00000000L    # 57.2957763671875

    mul-double/2addr v4, v6

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    return-object v2
.end method

.method private static calculateYInclination([F)Ljava/lang/Object;
    .locals 9
    .param p0, "rotationMatrixOut"    # [F

    .line 460
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->instance:Lorg/catrobat/catroid/formulaeditor/SensorHandler;

    iget-boolean v1, v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->useRotationVectorFallback:Z

    const/4 v2, 0x0

    const v3, 0x42652ee0

    const/4 v4, 0x1

    const/high16 v5, 0x42b40000    # 90.0f

    if-eqz v1, :cond_5

    .line 462
    invoke-static {}, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->rotateOrientation()I

    move-result v0

    move v1, v0

    .local v1, "rotate":I
    if-eqz v0, :cond_0

    .line 463
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->instance:Lorg/catrobat/catroid/formulaeditor/SensorHandler;

    iget-object v0, v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->accelerationXYZ:[F

    const/4 v4, 0x0

    aget v0, v0, v4

    int-to-float v4, v1

    mul-float/2addr v0, v4

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->acos(D)D

    move-result-wide v6

    double-to-float v0, v6

    mul-float/2addr v0, v3

    .local v0, "rawInclinationY":F
    goto :goto_0

    .line 465
    .end local v0    # "rawInclinationY":F
    :cond_0
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->instance:Lorg/catrobat/catroid/formulaeditor/SensorHandler;

    iget-object v0, v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->accelerationXYZ:[F

    aget v0, v0, v4

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->acos(D)D

    move-result-wide v6

    double-to-float v0, v6

    mul-float/2addr v0, v3

    .line 467
    .restart local v0    # "rawInclinationY":F
    :goto_0
    const/4 v3, 0x0

    .line 468
    .local v3, "correctedInclinationY":F
    cmpl-float v4, v0, v5

    if-ltz v4, :cond_2

    const/high16 v4, 0x43340000    # 180.0f

    cmpg-float v6, v0, v4

    if-gtz v6, :cond_2

    .line 469
    sget-object v6, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->instance:Lorg/catrobat/catroid/formulaeditor/SensorHandler;

    iget v6, v6, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->signAccelerationZ:F

    cmpl-float v2, v6, v2

    if-lez v2, :cond_1

    .line 470
    sub-float v2, v0, v5

    neg-float v3, v2

    goto :goto_1

    .line 472
    :cond_1
    sub-float/2addr v5, v0

    add-float/2addr v5, v4

    neg-float v3, v5

    goto :goto_1

    .line 474
    :cond_2
    cmpl-float v4, v0, v2

    if-ltz v4, :cond_4

    cmpg-float v4, v0, v5

    if-gez v4, :cond_4

    .line 475
    sget-object v4, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->instance:Lorg/catrobat/catroid/formulaeditor/SensorHandler;

    iget v4, v4, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->signAccelerationZ:F

    cmpl-float v2, v4, v2

    if-lez v2, :cond_3

    .line 476
    sub-float v3, v5, v0

    goto :goto_1

    .line 478
    :cond_3
    add-float v3, v0, v5

    .line 481
    :cond_4
    :goto_1
    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    return-object v2

    .line 483
    .end local v0    # "rawInclinationY":F
    .end local v1    # "rotate":I
    .end local v3    # "correctedInclinationY":F
    :cond_5
    const/4 v1, 0x3

    new-array v1, v1, [F

    .line 484
    .local v1, "orientations":[F
    iget-object v6, v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->rotationMatrix:[F

    iget-object v0, v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->rotationVector:[F

    invoke-static {v6, v0}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    .line 486
    invoke-static {}, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->rotateOrientation()I

    move-result v0

    const/4 v6, 0x2

    if-ne v0, v4, :cond_6

    .line 487
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->instance:Lorg/catrobat/catroid/formulaeditor/SensorHandler;

    iget-object v0, v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->rotationMatrix:[F

    const/16 v7, 0x81

    invoke-static {v0, v6, v7, p0}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    .line 489
    invoke-static {p0, v1}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    goto :goto_2

    .line 490
    :cond_6
    invoke-static {}, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->rotateOrientation()I

    move-result v0

    const/4 v7, -0x1

    if-ne v0, v7, :cond_7

    .line 491
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->instance:Lorg/catrobat/catroid/formulaeditor/SensorHandler;

    iget-object v0, v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->rotationMatrix:[F

    const/16 v7, 0x82

    invoke-static {v0, v7, v4, p0}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    .line 493
    invoke-static {p0, v1}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    goto :goto_2

    .line 495
    :cond_7
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->instance:Lorg/catrobat/catroid/formulaeditor/SensorHandler;

    iget-object v0, v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->rotationMatrix:[F

    invoke-static {v0, v1}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 498
    :goto_2
    aget v0, v1, v6

    mul-float/2addr v0, v3

    const/high16 v6, -0x40800000    # -1.0f

    mul-float/2addr v0, v6

    .line 500
    .local v0, "xInclinationUsedToExtendRangeOfRoll":F
    aget v4, v1, v4

    float-to-double v7, v4

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 502
    .local v4, "sensorValue":Ljava/lang/Double;
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v5, v7, v5

    if-gtz v5, :cond_8

    .line 503
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide v5, 0x404ca5dc00000000L    # 57.2957763671875

    mul-double/2addr v2, v5

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    mul-double/2addr v2, v5

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    return-object v2

    .line 505
    :cond_8
    invoke-virtual {v4}, Ljava/lang/Double;->floatValue()F

    move-result v5

    mul-float/2addr v5, v3

    mul-float/2addr v5, v6

    .line 507
    .local v5, "uncorrectedYInclination":F
    cmpl-float v2, v5, v2

    if-lez v2, :cond_9

    .line 508
    const-wide v2, 0x4066800000000000L    # 180.0

    float-to-double v6, v5

    sub-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    return-object v2

    .line 510
    :cond_9
    const-wide v2, -0x3f99800000000000L    # -180.0

    float-to-double v6, v5

    sub-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    return-object v2
.end method

.method public static destroy()V
    .locals 1

    .line 660
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->instance:Lorg/catrobat/catroid/formulaeditor/SensorHandler;

    if-nez v0, :cond_0

    .line 661
    return-void

    .line 663
    :cond_0
    invoke-static {}, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->stopSensorListeners()V

    .line 664
    const/4 v0, 0x0

    sput-object v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->instance:Lorg/catrobat/catroid/formulaeditor/SensorHandler;

    .line 665
    return-void
.end method

.method private determinePseudoLinearAcceleration([F)V
    .locals 8
    .param p1, "input"    # [F

    .line 599
    const v0, 0x3f4ccccd    # 0.8f

    .line 601
    .local v0, "alpha":F
    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->gravity:[F

    const/4 v2, 0x0

    aget v3, v1, v2

    mul-float/2addr v3, v0

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v5, v4, v0

    aget v6, p1, v2

    mul-float/2addr v5, v6

    add-float/2addr v3, v5

    aput v3, v1, v2

    .line 602
    const/4 v3, 0x1

    aget v5, v1, v3

    mul-float/2addr v5, v0

    sub-float v6, v4, v0

    aget v7, p1, v3

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    aput v5, v1, v3

    .line 603
    const/4 v5, 0x2

    aget v6, v1, v5

    mul-float/2addr v6, v0

    sub-float/2addr v4, v0

    aget v7, p1, v5

    mul-float/2addr v4, v7

    add-float/2addr v6, v4

    aput v6, v1, v5

    .line 605
    aget v4, p1, v2

    aget v2, v1, v2

    sub-float/2addr v4, v2

    const/high16 v2, -0x40800000    # -1.0f

    mul-float/2addr v4, v2

    iput v4, p0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->linearAccelerationX:F

    .line 606
    aget v4, p1, v3

    aget v3, v1, v3

    sub-float/2addr v4, v3

    mul-float/2addr v4, v2

    iput v4, p0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->linearAccelerationY:F

    .line 607
    aget v3, p1, v5

    aget v1, v1, v5

    sub-float/2addr v3, v1

    mul-float/2addr v3, v2

    iput v3, p0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->linearAccelerationZ:F

    .line 608
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lorg/catrobat/catroid/formulaeditor/SensorHandler;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 181
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->instance:Lorg/catrobat/catroid/formulaeditor/SensorHandler;

    if-nez v0, :cond_0

    .line 182
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/formulaeditor/SensorHandler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->instance:Lorg/catrobat/catroid/formulaeditor/SensorHandler;

    .line 184
    :cond_0
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->instance:Lorg/catrobat/catroid/formulaeditor/SensorHandler;

    return-object v0
.end method

.method public static getListeningLanguageSensor()Ljava/lang/String;
    .locals 1

    .line 517
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->listeningLanguageSensor:Ljava/lang/String;

    return-object v0
.end method

.method public static getPositionAccordingToRotation(Lorg/catrobat/catroid/camera/Position;)Lorg/catrobat/catroid/camera/Position;
    .locals 6
    .param p0, "original"    # Lorg/catrobat/catroid/camera/Position;

    .line 546
    invoke-virtual {p0}, Lorg/catrobat/catroid/camera/Position;->getX()D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/catrobat/catroid/camera/Position;->getY()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->getXAccordingToRotation(DD)D

    move-result-wide v0

    .line 547
    .local v0, "x":D
    invoke-virtual {p0}, Lorg/catrobat/catroid/camera/Position;->getX()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/catrobat/catroid/camera/Position;->getY()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->getYAccordingToRotation(DD)D

    move-result-wide v2

    .line 548
    .local v2, "y":D
    new-instance v4, Lorg/catrobat/catroid/camera/Position;

    invoke-direct {v4, v0, v1, v2, v3}, Lorg/catrobat/catroid/camera/Position;-><init>(DD)V

    return-object v4
.end method

.method public static getSensorValue(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/lang/Object;
    .locals 6
    .param p0, "sensor"    # Lorg/catrobat/catroid/formulaeditor/Sensors;

    .line 277
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->instance:Lorg/catrobat/catroid/formulaeditor/SensorHandler;

    iget-object v0, v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->sensorManager:Lorg/catrobat/catroid/formulaeditor/SensorManagerInterface;

    const-wide/16 v1, 0x0

    .line 278
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 277
    if-nez v0, :cond_0

    .line 278
    return-object v3

    .line 280
    :cond_0
    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 282
    .local v0, "rotationMatrixOut":[F
    sget-object v4, Lorg/catrobat/catroid/formulaeditor/SensorHandler$1;->$SwitchMap$org$catrobat$catroid$formulaeditor$Sensors:[I

    invoke-virtual {p0}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    packed-switch v4, :pswitch_data_0

    .line 377
    sget-object v1, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->instance:Lorg/catrobat/catroid/formulaeditor/SensorHandler;

    iget-object v1, v1, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->sensorValueMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->instance:Lorg/catrobat/catroid/formulaeditor/SensorHandler;

    iget-object v1, v1, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->sensorValueMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 375
    :pswitch_0
    sget-object v1, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->userLocaleTag:Ljava/lang/String;

    return-object v1

    .line 373
    :pswitch_1
    sget-object v1, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->listeningLanguageSensor:Ljava/lang/String;

    return-object v1

    .line 371
    :pswitch_2
    invoke-static {}, Lorg/catrobat/catroid/nfc/NfcHandler;->getLastNfcTagId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 369
    :pswitch_3
    invoke-static {}, Lorg/catrobat/catroid/nfc/NfcHandler;->getLastNfcTagMessage()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 367
    :pswitch_4
    invoke-static {}, Lorg/catrobat/catroid/utils/TouchUtil;->getNumberOfCurrentTouches()I

    move-result v1

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    .line 365
    :pswitch_5
    invoke-static {}, Lorg/catrobat/catroid/utils/TouchUtil;->getLastTouchIndex()I

    move-result v1

    invoke-static {v1}, Lorg/catrobat/catroid/utils/TouchUtil;->getY(I)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    .line 363
    :pswitch_6
    invoke-static {}, Lorg/catrobat/catroid/utils/TouchUtil;->getLastTouchIndex()I

    move-result v1

    invoke-static {v1}, Lorg/catrobat/catroid/utils/TouchUtil;->getX(I)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    .line 361
    :pswitch_7
    invoke-static {}, Lorg/catrobat/catroid/utils/TouchUtil;->isTouching()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    .line 359
    :pswitch_8
    invoke-static {}, Lorg/catrobat/catroid/utils/TouchUtil;->getLastTouchIndex()I

    move-result v1

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    .line 356
    :pswitch_9
    invoke-static {}, Lorg/catrobat/catroid/cast/CastManager;->getInstance()Lorg/catrobat/catroid/cast/CastManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Lorg/catrobat/catroid/cast/CastManager;->isButtonPressed(Lorg/catrobat/catroid/formulaeditor/Sensors;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    :cond_1
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    .line 344
    :pswitch_a
    sget-object v1, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->BT_SERVICE:Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;

    sget-object v2, Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;->PHIRO:Ljava/lang/Class;

    invoke-interface {v1, v2}, Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;->getDevice(Ljava/lang/Class;)Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/devices/arduino/phiro/Phiro;

    .line 345
    .local v1, "phiro":Lorg/catrobat/catroid/devices/arduino/phiro/Phiro;
    if-eqz v1, :cond_2

    .line 346
    invoke-interface {v1, p0}, Lorg/catrobat/catroid/devices/arduino/phiro/Phiro;->getSensorValue(Lorg/catrobat/catroid/formulaeditor/Sensors;)I

    move-result v2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    return-object v2

    .line 332
    .end local v1    # "phiro":Lorg/catrobat/catroid/devices/arduino/phiro/Phiro;
    :pswitch_b
    sget-object v1, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->BT_SERVICE:Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;

    sget-object v2, Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;->LEGO_EV3:Ljava/lang/Class;

    invoke-interface {v1, v2}, Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;->getDevice(Ljava/lang/Class;)Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3;

    .line 333
    .local v1, "ev3":Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3;
    if-eqz v1, :cond_2

    .line 334
    invoke-interface {v1, p0}, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3;->getSensorValue(Lorg/catrobat/catroid/formulaeditor/Sensors;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    return-object v2

    .line 322
    .end local v1    # "ev3":Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3;
    :pswitch_c
    sget-object v1, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->BT_SERVICE:Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;

    sget-object v2, Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;->LEGO_NXT:Ljava/lang/Class;

    invoke-interface {v1, v2}, Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;->getDevice(Ljava/lang/Class;)Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXT;

    .line 323
    .local v1, "nxt":Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXT;
    if-eqz v1, :cond_2

    .line 324
    invoke-interface {v1, p0}, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXT;->getSensorValue(Lorg/catrobat/catroid/formulaeditor/Sensors;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    return-object v2

    .line 379
    .end local v1    # "nxt":Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXT;
    :cond_2
    return-object v3

    .line 315
    :pswitch_d
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    .line 313
    :pswitch_e
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    .line 311
    :pswitch_f
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    .line 309
    :pswitch_10
    invoke-static {}, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->startWeekWithMonday()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    .line 307
    :pswitch_11
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    .line 305
    :pswitch_12
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v5

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    .line 303
    :pswitch_13
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    .line 301
    :pswitch_14
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    long-to-double v1, v1

    sget-wide v3, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->timerReferenceValue:D

    sub-double/2addr v1, v3

    const-wide v3, 0x408f400000000000L    # 1000.0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    .line 298
    :pswitch_15
    invoke-static {v0}, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->calculateYInclination([F)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 296
    :pswitch_16
    invoke-static {v0}, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->calculateXInclination([F)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 293
    :pswitch_17
    invoke-static {v0}, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->calculateCompassDirection([F)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    .line 290
    :pswitch_18
    sget-object v1, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->instance:Lorg/catrobat/catroid/formulaeditor/SensorHandler;

    iget v1, v1, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->linearAccelerationZ:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    .line 287
    :pswitch_19
    sget-object v1, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->instance:Lorg/catrobat/catroid/formulaeditor/SensorHandler;

    iget v2, v1, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->linearAccelerationX:F

    float-to-double v2, v2

    iget v1, v1, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->linearAccelerationY:F

    float-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->getYAccordingToRotation(DD)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    .line 284
    :pswitch_1a
    sget-object v1, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->instance:Lorg/catrobat/catroid/formulaeditor/SensorHandler;

    iget v2, v1, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->linearAccelerationX:F

    float-to-double v2, v2

    iget v1, v1, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->linearAccelerationY:F

    float-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->getXAccordingToRotation(DD)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    .line 377
    :cond_3
    :goto_0
    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getXAccordingToRotation(DD)D
    .locals 5
    .param p0, "x"    # D
    .param p2, "y"    # D

    .line 552
    invoke-static {}, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->rotateOrientation()I

    move-result v0

    .line 553
    .local v0, "rotate":I
    if-eqz v0, :cond_0

    neg-double v1, p2

    int-to-double v3, v0

    mul-double/2addr v1, v3

    goto :goto_0

    :cond_0
    move-wide v1, p0

    :goto_0
    return-wide v1
.end method

.method private static getYAccordingToRotation(DD)D
    .locals 3
    .param p0, "x"    # D
    .param p2, "y"    # D

    .line 557
    invoke-static {}, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->rotateOrientation()I

    move-result v0

    .line 558
    .local v0, "rotate":I
    if-eqz v0, :cond_0

    int-to-double v1, v0

    mul-double/2addr v1, p0

    goto :goto_0

    :cond_0
    move-wide v1, p2

    :goto_0
    return-wide v1
.end method

.method public static gpsAvailable()Z
    .locals 2

    .line 148
    invoke-static {}, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->gpsSensorAvailable()Z

    move-result v0

    invoke-static {}, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->networkGpsAvailable()Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method private static gpsSensorAvailable()Z
    .locals 2

    .line 152
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->instance:Lorg/catrobat/catroid/formulaeditor/SensorHandler;

    iget-object v0, v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isDeviceDefaultRotationLandscape()Z
    .locals 5

    .line 530
    invoke-static {}, Lorg/catrobat/catroid/CatroidApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 531
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 532
    .local v0, "rotation":I
    invoke-static {}, Lorg/catrobat/catroid/CatroidApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 534
    .local v1, "config":Landroid/content/res/Configuration;
    iget v2, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    if-eqz v0, :cond_2

    if-eq v0, v3, :cond_2

    :cond_0
    iget v2, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v4, :cond_1

    if-eq v0, v4, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :cond_2
    :goto_0
    return v4
.end method

.method private static networkGpsAvailable()Z
    .locals 2

    .line 156
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->instance:Lorg/catrobat/catroid/formulaeditor/SensorHandler;

    iget-object v0, v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static registerListener(Landroid/hardware/SensorEventListener;)V
    .locals 3
    .param p0, "listener"    # Landroid/hardware/SensorEventListener;

    .line 225
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->instance:Lorg/catrobat/catroid/formulaeditor/SensorHandler;

    if-nez v0, :cond_0

    .line 226
    return-void

    .line 229
    :cond_0
    iget-boolean v1, v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->useLinearAccelerationFallback:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 230
    iget-object v1, v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->sensorManager:Lorg/catrobat/catroid/formulaeditor/SensorManagerInterface;

    iget-object v0, v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->linearAccelerationSensor:Landroid/hardware/Sensor;

    invoke-interface {v1, p0, v0, v2}, Lorg/catrobat/catroid/formulaeditor/SensorManagerInterface;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 234
    :cond_1
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->instance:Lorg/catrobat/catroid/formulaeditor/SensorHandler;

    iget-boolean v1, v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->useRotationVectorFallback:Z

    if-nez v1, :cond_2

    .line 235
    iget-object v1, v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->sensorManager:Lorg/catrobat/catroid/formulaeditor/SensorManagerInterface;

    iget-object v0, v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->rotationVectorSensor:Landroid/hardware/Sensor;

    invoke-interface {v1, p0, v0, v2}, Lorg/catrobat/catroid/formulaeditor/SensorManagerInterface;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 239
    :cond_2
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->instance:Lorg/catrobat/catroid/formulaeditor/SensorHandler;

    iget-boolean v1, v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->useLinearAccelerationFallback:Z

    if-nez v1, :cond_3

    iget-boolean v0, v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->useRotationVectorFallback:Z

    if-eqz v0, :cond_4

    .line 240
    :cond_3
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->instance:Lorg/catrobat/catroid/formulaeditor/SensorHandler;

    iget-object v1, v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->sensorManager:Lorg/catrobat/catroid/formulaeditor/SensorManagerInterface;

    iget-object v0, v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->accelerometerSensor:Landroid/hardware/Sensor;

    invoke-interface {v1, p0, v0, v2}, Lorg/catrobat/catroid/formulaeditor/SensorManagerInterface;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 244
    :cond_4
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->instance:Lorg/catrobat/catroid/formulaeditor/SensorHandler;

    iget-boolean v1, v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->useRotationVectorFallback:Z

    if-eqz v1, :cond_5

    iget-object v1, v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->magneticFieldSensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_5

    .line 245
    iget-object v0, v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->sensorManager:Lorg/catrobat/catroid/formulaeditor/SensorManagerInterface;

    invoke-interface {v0, p0, v1, v2}, Lorg/catrobat/catroid/formulaeditor/SensorManagerInterface;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 248
    :cond_5
    return-void
.end method

.method private static rotateOrientation()I
    .locals 2

    .line 539
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->isCurrentProjectLandscapeMode()Z

    move-result v0

    invoke-static {}, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->isDeviceDefaultRotationLandscape()Z

    move-result v1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 540
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->isCurrentProjectLandscapeMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 542
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static setListeningLanguageSensor(Ljava/lang/String;)V
    .locals 3
    .param p0, "listeningLanguageTag"    # Ljava/lang/String;

    .line 521
    sput-object p0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->listeningLanguageSensor:Ljava/lang/String;

    .line 522
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "listening language sensor changed to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->listeningLanguageSensor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    return-void
.end method

.method public static setUserLocaleTag(Ljava/lang/String;)V
    .locals 0
    .param p0, "userLocale"    # Ljava/lang/String;

    .line 105
    sput-object p0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->userLocaleTag:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public static startSensorListener(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 194
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->instance:Lorg/catrobat/catroid/formulaeditor/SensorHandler;

    if-nez v0, :cond_0

    .line 195
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/formulaeditor/SensorHandler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->instance:Lorg/catrobat/catroid/formulaeditor/SensorHandler;

    .line 197
    :cond_0
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->instance:Lorg/catrobat/catroid/formulaeditor/SensorHandler;

    iget-object v1, v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->sensorManager:Lorg/catrobat/catroid/formulaeditor/SensorManagerInterface;

    invoke-interface {v1, v0}, Lorg/catrobat/catroid/formulaeditor/SensorManagerInterface;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 199
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->instance:Lorg/catrobat/catroid/formulaeditor/SensorHandler;

    invoke-static {v0}, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->registerListener(Landroid/hardware/SensorEventListener;)V

    .line 201
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->instance:Lorg/catrobat/catroid/formulaeditor/SensorHandler;

    invoke-static {v0}, Lorg/catrobat/catroid/camera/VisualDetectionHandler;->addListener(Lorg/catrobat/catroid/formulaeditor/SensorCustomEventListener;)V

    .line 203
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->instance:Lorg/catrobat/catroid/formulaeditor/SensorHandler;

    iget-object v1, v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->sensorLoudness:Lorg/catrobat/catroid/formulaeditor/SensorLoudness;

    if-eqz v1, :cond_1

    .line 204
    invoke-virtual {v1, v0}, Lorg/catrobat/catroid/formulaeditor/SensorLoudness;->registerListener(Lorg/catrobat/catroid/formulaeditor/SensorCustomEventListener;)Z

    .line 207
    :cond_1
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->instance:Lorg/catrobat/catroid/formulaeditor/SensorHandler;

    iget-object v1, v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->locationManager:Landroid/location/LocationManager;

    if-eqz v1, :cond_3

    .line 208
    invoke-virtual {v1, v0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 209
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->instance:Lorg/catrobat/catroid/formulaeditor/SensorHandler;

    iget-object v1, v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v1, v0}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    .line 210
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->instance:Lorg/catrobat/catroid/formulaeditor/SensorHandler;

    iget-object v1, v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v1, v0}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    .line 211
    invoke-static {}, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->gpsSensorAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 212
    sget-object v6, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->instance:Lorg/catrobat/catroid/formulaeditor/SensorHandler;

    iget-object v1, v6, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->locationManager:Landroid/location/LocationManager;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const-string v2, "gps"

    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 214
    :cond_2
    invoke-static {}, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->networkGpsAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 215
    sget-object v6, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->instance:Lorg/catrobat/catroid/formulaeditor/SensorHandler;

    iget-object v1, v6, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->locationManager:Landroid/location/LocationManager;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const-string v2, "network"

    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 218
    :cond_3
    return-void
.end method

.method private static startWeekWithMonday()D
    .locals 4

    .line 160
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 163
    .local v0, "weekdayOfAndroidCalendar":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 164
    const/4 v1, 0x7

    .local v1, "convertedWeekday":I
    goto :goto_0

    .line 166
    .end local v1    # "convertedWeekday":I
    :cond_0
    add-int/lit8 v1, v0, -0x1

    .line 169
    .restart local v1    # "convertedWeekday":I
    :goto_0
    int-to-double v2, v1

    return-wide v2
.end method

.method public static stopSensorListeners()V
    .locals 2

    .line 258
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->instance:Lorg/catrobat/catroid/formulaeditor/SensorHandler;

    if-nez v0, :cond_0

    .line 259
    return-void

    .line 261
    :cond_0
    iget-object v1, v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->sensorManager:Lorg/catrobat/catroid/formulaeditor/SensorManagerInterface;

    invoke-interface {v1, v0}, Lorg/catrobat/catroid/formulaeditor/SensorManagerInterface;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 263
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->instance:Lorg/catrobat/catroid/formulaeditor/SensorHandler;

    iget-object v1, v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->sensorLoudness:Lorg/catrobat/catroid/formulaeditor/SensorLoudness;

    if-eqz v1, :cond_1

    .line 264
    invoke-virtual {v1, v0}, Lorg/catrobat/catroid/formulaeditor/SensorLoudness;->unregisterListener(Lorg/catrobat/catroid/formulaeditor/SensorCustomEventListener;)V

    .line 267
    :cond_1
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->instance:Lorg/catrobat/catroid/formulaeditor/SensorHandler;

    iget-object v1, v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->locationManager:Landroid/location/LocationManager;

    if-eqz v1, :cond_2

    .line 268
    invoke-virtual {v1, v0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 269
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->instance:Lorg/catrobat/catroid/formulaeditor/SensorHandler;

    iget-object v1, v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v1, v0}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    .line 272
    :cond_2
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->instance:Lorg/catrobat/catroid/formulaeditor/SensorHandler;

    invoke-static {v0}, Lorg/catrobat/catroid/camera/VisualDetectionHandler;->removeListener(Lorg/catrobat/catroid/formulaeditor/SensorCustomEventListener;)V

    .line 273
    return-void
.end method

.method public static unregisterListener(Landroid/hardware/SensorEventListener;)V
    .locals 1
    .param p0, "listener"    # Landroid/hardware/SensorEventListener;

    .line 251
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->instance:Lorg/catrobat/catroid/formulaeditor/SensorHandler;

    if-nez v0, :cond_0

    .line 252
    return-void

    .line 254
    :cond_0
    iget-object v0, v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->sensorManager:Lorg/catrobat/catroid/formulaeditor/SensorManagerInterface;

    invoke-interface {v0, p0}, Lorg/catrobat/catroid/formulaeditor/SensorManagerInterface;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 255
    return-void
.end method


# virtual methods
.method public accelerationAvailable()Z
    .locals 1

    .line 173
    iget-boolean v0, p0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->accelerationAvailable:Z

    return v0
.end method

.method public compassAvailable()Z
    .locals 1

    .line 140
    iget-boolean v0, p0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->compassAvailable:Z

    return v0
.end method

.method public inclinationAvailable()Z
    .locals 1

    .line 177
    iget-boolean v0, p0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->inclinationAvailable:Z

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "arg0"    # Landroid/hardware/Sensor;
    .param p2, "arg1"    # I

    .line 527
    return-void
.end method

.method public onCustomSensorChanged(Lorg/catrobat/catroid/formulaeditor/SensorCustomEvent;)V
    .locals 3
    .param p1, "event"    # Lorg/catrobat/catroid/formulaeditor/SensorCustomEvent;

    .line 612
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->sensorValueMap:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/catrobat/catroid/formulaeditor/SensorCustomEvent;->getSensor()Lorg/catrobat/catroid/formulaeditor/Sensors;

    move-result-object v1

    invoke-virtual {p1}, Lorg/catrobat/catroid/formulaeditor/SensorCustomEvent;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    return-void
.end method

.method public onGpsStatusChanged(I)V
    .locals 6
    .param p1, "event"    # I

    .line 647
    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 649
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->lastLocationGps:Landroid/location/Location;

    if-eqz v0, :cond_3

    .line 650
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->lastLocationGpsMillis:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xbb8

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->isGpsConnected:Z

    goto :goto_1

    .line 654
    :cond_2
    iput-boolean v1, p0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->isGpsConnected:Z

    .line 657
    :cond_3
    :goto_1
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 5
    .param p1, "location"    # Landroid/location/Location;

    .line 617
    if-nez p1, :cond_0

    .line 618
    return-void

    .line 620
    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->isGpsConnected:Z

    if-nez v0, :cond_3

    .line 621
    :cond_1
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->sensorValueMap:Ljava/util/Map;

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/Sensors;->LATITUDE:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->sensorValueMap:Ljava/util/Map;

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/Sensors;->LONGITUDE:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->sensorValueMap:Ljava/util/Map;

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/Sensors;->LOCATION_ACCURACY:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->sensorValueMap:Ljava/util/Map;

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/Sensors;->ALTITUDE:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v3

    goto :goto_0

    :cond_2
    const-wide/16 v3, 0x0

    :goto_0
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    :cond_3
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 628
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->lastLocationGpsMillis:J

    .line 629
    iput-object p1, p0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->lastLocationGps:Landroid/location/Location;

    .line 631
    :cond_4
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .line 643
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .line 639
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 563
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v0, v2, :cond_3

    if-eq v0, v3, :cond_2

    const/16 v4, 0xa

    if-eq v0, v4, :cond_1

    const/16 v4, 0xb

    if-eq v0, v4, :cond_0

    .line 594
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled sensor type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 589
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->rotationVector:[F

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v1

    aput v4, v0, v1

    .line 590
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->rotationVector:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    aput v1, v0, v2

    .line 591
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->rotationVector:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v3

    aput v1, v0, v3

    .line 592
    goto/16 :goto_0

    .line 584
    :cond_1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    iput v0, p0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->linearAccelerationX:F

    .line 585
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    iput v0, p0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->linearAccelerationY:F

    .line 586
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v3

    iput v0, p0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->linearAccelerationZ:F

    .line 587
    goto :goto_0

    .line 565
    :cond_2
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 566
    .local v0, "tempMagneticFieldXYZ":[F
    const/16 v1, 0x9

    new-array v1, v1, [F

    .line 567
    .local v1, "tempInclinationMatrix":[F
    iget-object v2, p0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->rotationMatrix:[F

    iget-object v3, p0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->accelerationXYZ:[F

    invoke-static {v2, v1, v3, v0}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    .line 569
    goto :goto_0

    .line 571
    .end local v0    # "tempMagneticFieldXYZ":[F
    .end local v1    # "tempInclinationMatrix":[F
    :cond_3
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->accelerationXYZ:[F

    .line 572
    iget-boolean v4, p0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->useLinearAccelerationFallback:Z

    if-eqz v4, :cond_4

    .line 573
    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->determinePseudoLinearAcceleration([F)V

    .line 575
    :cond_4
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->accelerationXYZ:[F

    aget v4, v0, v1

    aget v5, v0, v1

    mul-float/2addr v4, v5

    aget v5, v0, v2

    aget v6, v0, v2

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    aget v5, v0, v3

    aget v0, v0, v3

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 578
    .local v4, "normOfG":D
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->accelerationXYZ:[F

    aget v6, v0, v1

    float-to-double v6, v6

    div-double/2addr v6, v4

    double-to-float v6, v6

    aput v6, v0, v1

    .line 579
    aget v1, v0, v2

    float-to-double v6, v1

    div-double/2addr v6, v4

    double-to-float v1, v6

    aput v1, v0, v2

    .line 580
    aget v1, v0, v3

    float-to-double v1, v1

    div-double/2addr v1, v4

    double-to-float v1, v1

    aput v1, v0, v3

    .line 581
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v3

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    iput v0, p0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->signAccelerationZ:F

    .line 582
    nop

    .line 596
    .end local v4    # "normOfG":D
    :goto_0
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 635
    return-void
.end method

.method public setAccelerationUnavailable()V
    .locals 1

    .line 189
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->accelerationAvailable:Z

    .line 190
    return-void
.end method

.method public setLocationManager(Landroid/location/LocationManager;)V
    .locals 0
    .param p1, "locationManager"    # Landroid/location/LocationManager;

    .line 144
    iput-object p1, p0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->locationManager:Landroid/location/LocationManager;

    .line 145
    return-void
.end method

.method public setSensorLoudness(Lorg/catrobat/catroid/formulaeditor/SensorLoudness;)V
    .locals 0
    .param p1, "sensorLoudness"    # Lorg/catrobat/catroid/formulaeditor/SensorLoudness;

    .line 221
    iput-object p1, p0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->sensorLoudness:Lorg/catrobat/catroid/formulaeditor/SensorLoudness;

    .line 222
    return-void
.end method
