.class Lorg/catrobat/catroid/formulaeditor/SensorLoudness$1;
.super Ljava/lang/Object;
.source "SensorLoudness.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/formulaeditor/SensorLoudness;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/formulaeditor/SensorLoudness;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/formulaeditor/SensorLoudness;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/formulaeditor/SensorLoudness;

    .line 52
    iput-object p1, p0, Lorg/catrobat/catroid/formulaeditor/SensorLoudness$1;->this$0:Lorg/catrobat/catroid/formulaeditor/SensorLoudness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 55
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/SensorLoudness$1;->this$0:Lorg/catrobat/catroid/formulaeditor/SensorLoudness;

    invoke-static {v0}, Lorg/catrobat/catroid/formulaeditor/SensorLoudness;->access$000(Lorg/catrobat/catroid/formulaeditor/SensorLoudness;)Lorg/catrobat/catroid/soundrecorder/SoundRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/soundrecorder/SoundRecorder;->getMaxAmplitude()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3f690032006400c8L    # 0.0030518509475997192

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 56
    .local v0, "loudness":Ljava/lang/Double;
    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/SensorLoudness$1;->this$0:Lorg/catrobat/catroid/formulaeditor/SensorLoudness;

    invoke-static {v1}, Lorg/catrobat/catroid/formulaeditor/SensorLoudness;->access$100(Lorg/catrobat/catroid/formulaeditor/SensorLoudness;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 57
    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/SensorLoudness$1;->this$0:Lorg/catrobat/catroid/formulaeditor/SensorLoudness;

    invoke-static {v1, v0}, Lorg/catrobat/catroid/formulaeditor/SensorLoudness;->access$102(Lorg/catrobat/catroid/formulaeditor/SensorLoudness;Ljava/lang/Double;)Ljava/lang/Double;

    .line 58
    new-instance v1, Lorg/catrobat/catroid/formulaeditor/SensorCustomEvent;

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/Sensors;->LOUDNESS:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-direct {v1, v2, v0}, Lorg/catrobat/catroid/formulaeditor/SensorCustomEvent;-><init>(Lorg/catrobat/catroid/formulaeditor/Sensors;Ljava/lang/Object;)V

    .line 60
    .local v1, "event":Lorg/catrobat/catroid/formulaeditor/SensorCustomEvent;
    iget-object v2, p0, Lorg/catrobat/catroid/formulaeditor/SensorLoudness$1;->this$0:Lorg/catrobat/catroid/formulaeditor/SensorLoudness;

    invoke-static {v2}, Lorg/catrobat/catroid/formulaeditor/SensorLoudness;->access$200(Lorg/catrobat/catroid/formulaeditor/SensorLoudness;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/formulaeditor/SensorCustomEventListener;

    .line 61
    .local v3, "listener":Lorg/catrobat/catroid/formulaeditor/SensorCustomEventListener;
    invoke-interface {v3, v1}, Lorg/catrobat/catroid/formulaeditor/SensorCustomEventListener;->onCustomSensorChanged(Lorg/catrobat/catroid/formulaeditor/SensorCustomEvent;)V

    .line 62
    .end local v3    # "listener":Lorg/catrobat/catroid/formulaeditor/SensorCustomEventListener;
    goto :goto_0

    .line 64
    .end local v1    # "event":Lorg/catrobat/catroid/formulaeditor/SensorCustomEvent;
    :cond_0
    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/SensorLoudness$1;->this$0:Lorg/catrobat/catroid/formulaeditor/SensorLoudness;

    invoke-static {v1}, Lorg/catrobat/catroid/formulaeditor/SensorLoudness;->access$300(Lorg/catrobat/catroid/formulaeditor/SensorLoudness;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lorg/catrobat/catroid/formulaeditor/SensorLoudness$1;->this$0:Lorg/catrobat/catroid/formulaeditor/SensorLoudness;

    iget-object v2, v2, Lorg/catrobat/catroid/formulaeditor/SensorLoudness;->statusChecker:Ljava/lang/Runnable;

    const-wide/16 v3, 0x32

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 65
    return-void
.end method
