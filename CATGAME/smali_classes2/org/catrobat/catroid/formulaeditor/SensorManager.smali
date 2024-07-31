.class public Lorg/catrobat/catroid/formulaeditor/SensorManager;
.super Ljava/lang/Object;
.source "SensorManager.java"

# interfaces
.implements Lorg/catrobat/catroid/formulaeditor/SensorManagerInterface;


# instance fields
.field private final sensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/hardware/SensorManager;)V
    .locals 0
    .param p1, "sensorManager"    # Landroid/hardware/SensorManager;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/catrobat/catroid/formulaeditor/SensorManager;->sensorManager:Landroid/hardware/SensorManager;

    .line 34
    return-void
.end method


# virtual methods
.method public getDefaultSensor(I)Landroid/hardware/Sensor;
    .locals 1
    .param p1, "type"    # I

    .line 48
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/SensorManager;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    return-object v0
.end method

.method public registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    .locals 1
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;
    .param p3, "rate"    # I

    .line 43
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/SensorManager;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    return v0
.end method

.method public registerListener(Lorg/catrobat/catroid/formulaeditor/SensorCustomEventListener;Lorg/catrobat/catroid/formulaeditor/Sensors;)Z
    .locals 1
    .param p1, "listener"    # Lorg/catrobat/catroid/formulaeditor/SensorCustomEventListener;
    .param p2, "sensor"    # Lorg/catrobat/catroid/formulaeditor/Sensors;

    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public unregisterListener(Landroid/hardware/SensorEventListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;

    .line 38
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/SensorManager;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 39
    return-void
.end method

.method public unregisterListener(Lorg/catrobat/catroid/formulaeditor/SensorCustomEventListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/catrobat/catroid/formulaeditor/SensorCustomEventListener;

    .line 53
    return-void
.end method
