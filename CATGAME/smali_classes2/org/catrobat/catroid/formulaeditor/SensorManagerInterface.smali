.class public interface abstract Lorg/catrobat/catroid/formulaeditor/SensorManagerInterface;
.super Ljava/lang/Object;
.source "SensorManagerInterface.java"


# virtual methods
.method public abstract getDefaultSensor(I)Landroid/hardware/Sensor;
.end method

.method public abstract registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
.end method

.method public abstract registerListener(Lorg/catrobat/catroid/formulaeditor/SensorCustomEventListener;Lorg/catrobat/catroid/formulaeditor/Sensors;)Z
.end method

.method public abstract unregisterListener(Landroid/hardware/SensorEventListener;)V
.end method

.method public abstract unregisterListener(Lorg/catrobat/catroid/formulaeditor/SensorCustomEventListener;)V
.end method
