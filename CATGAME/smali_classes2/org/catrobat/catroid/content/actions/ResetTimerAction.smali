.class public Lorg/catrobat/catroid/content/actions/ResetTimerAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "ResetTimerAction.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    return-void
.end method


# virtual methods
.method protected update(F)V
    .locals 2
    .param p1, "percent"    # F

    .line 35
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    sput-wide v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->timerReferenceValue:D

    .line 36
    return-void
.end method
