.class public final Lorg/catrobat/catroid/utils/VibrationManager;
.super Ljava/lang/Object;
.source "VibrationManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0012\u001a\u00020\u0004H\u0002J\u0008\u0010\u0013\u001a\u00020\u0014H\u0002J\u0006\u0010\u0015\u001a\u00020\u0016J\u0010\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0004H\u0002J\u0006\u0010\u0019\u001a\u00020\u0014J\u0006\u0010\u001a\u001a\u00020\u0014J\u0006\u0010\u001b\u001a\u00020\u0014J\u000e\u0010\u001c\u001a\u00020\u00142\u0006\u0010\u0018\u001a\u00020\u0004R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001a\u0010\u000c\u001a\u00020\rX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u001d"
    }
    d2 = {
        "Lorg/catrobat/catroid/utils/VibrationManager;",
        "",
        "()V",
        "startTime",
        "",
        "getStartTime",
        "()J",
        "setStartTime",
        "(J)V",
        "timeToVibrate",
        "getTimeToVibrate",
        "setTimeToVibrate",
        "vibration",
        "Landroid/os/Vibrator;",
        "getVibration",
        "()Landroid/os/Vibrator;",
        "setVibration",
        "(Landroid/os/Vibrator;)V",
        "calcRemainingTime",
        "cancelVibrationIfHappening",
        "",
        "hasActiveVibration",
        "",
        "newVibrationLongerThanCurrent",
        "duration",
        "pause",
        "reset",
        "resume",
        "vibrateFor",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private startTime:J

.field private timeToVibrate:J

.field public vibration:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final calcRemainingTime()J
    .locals 4

    .line 51
    iget-wide v0, p0, Lorg/catrobat/catroid/utils/VibrationManager;->startTime:J

    iget-wide v2, p0, Lorg/catrobat/catroid/utils/VibrationManager;->timeToVibrate:J

    add-long/2addr v0, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private final cancelVibrationIfHappening()V
    .locals 6

    .line 43
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/catrobat/catroid/utils/VibrationManager;->startTime:J

    iget-wide v4, p0, Lorg/catrobat/catroid/utils/VibrationManager;->timeToVibrate:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 44
    iget-object v0, p0, Lorg/catrobat/catroid/utils/VibrationManager;->vibration:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    const-string v1, "vibration"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 46
    :cond_1
    return-void
.end method

.method private final newVibrationLongerThanCurrent(J)Z
    .locals 6
    .param p1, "duration"    # J

    .line 49
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    iget-wide v2, p0, Lorg/catrobat/catroid/utils/VibrationManager;->startTime:J

    iget-wide v4, p0, Lorg/catrobat/catroid/utils/VibrationManager;->timeToVibrate:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public final getStartTime()J
    .locals 2

    .line 30
    iget-wide v0, p0, Lorg/catrobat/catroid/utils/VibrationManager;->startTime:J

    return-wide v0
.end method

.method public final getTimeToVibrate()J
    .locals 2

    .line 31
    iget-wide v0, p0, Lorg/catrobat/catroid/utils/VibrationManager;->timeToVibrate:J

    return-wide v0
.end method

.method public final getVibration()Landroid/os/Vibrator;
    .locals 2

    .line 29
    iget-object v0, p0, Lorg/catrobat/catroid/utils/VibrationManager;->vibration:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    const-string v1, "vibration"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final hasActiveVibration()Z
    .locals 4

    .line 53
    invoke-direct {p0}, Lorg/catrobat/catroid/utils/VibrationManager;->calcRemainingTime()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final pause()V
    .locals 2

    .line 56
    invoke-virtual {p0}, Lorg/catrobat/catroid/utils/VibrationManager;->hasActiveVibration()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    invoke-direct {p0}, Lorg/catrobat/catroid/utils/VibrationManager;->calcRemainingTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/catrobat/catroid/utils/VibrationManager;->timeToVibrate:J

    .line 58
    iget-object v0, p0, Lorg/catrobat/catroid/utils/VibrationManager;->vibration:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    const-string v1, "vibration"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 59
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/catrobat/catroid/utils/VibrationManager;->startTime:J

    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {p0}, Lorg/catrobat/catroid/utils/VibrationManager;->reset()V

    .line 62
    :goto_0
    nop

    .line 63
    return-void
.end method

.method public final reset()V
    .locals 2

    .line 73
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/catrobat/catroid/utils/VibrationManager;->startTime:J

    .line 74
    iput-wide v0, p0, Lorg/catrobat/catroid/utils/VibrationManager;->timeToVibrate:J

    .line 75
    return-void
.end method

.method public final resume()V
    .locals 4

    .line 66
    iget-wide v0, p0, Lorg/catrobat/catroid/utils/VibrationManager;->timeToVibrate:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 67
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/catrobat/catroid/utils/VibrationManager;->startTime:J

    .line 68
    iget-object v0, p0, Lorg/catrobat/catroid/utils/VibrationManager;->vibration:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    const-string v1, "vibration"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-wide v1, p0, Lorg/catrobat/catroid/utils/VibrationManager;->timeToVibrate:J

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 70
    :cond_1
    return-void
.end method

.method public final setStartTime(J)V
    .locals 0
    .param p1, "<set-?>"    # J

    .line 30
    iput-wide p1, p0, Lorg/catrobat/catroid/utils/VibrationManager;->startTime:J

    return-void
.end method

.method public final setTimeToVibrate(J)V
    .locals 0
    .param p1, "<set-?>"    # J

    .line 31
    iput-wide p1, p0, Lorg/catrobat/catroid/utils/VibrationManager;->timeToVibrate:J

    return-void
.end method

.method public final setVibration(Landroid/os/Vibrator;)V
    .locals 1
    .param p1, "<set-?>"    # Landroid/os/Vibrator;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lorg/catrobat/catroid/utils/VibrationManager;->vibration:Landroid/os/Vibrator;

    return-void
.end method

.method public final vibrateFor(J)V
    .locals 3
    .param p1, "duration"    # J

    .line 34
    invoke-direct {p0, p1, p2}, Lorg/catrobat/catroid/utils/VibrationManager;->newVibrationLongerThanCurrent(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    invoke-direct {p0}, Lorg/catrobat/catroid/utils/VibrationManager;->cancelVibrationIfHappening()V

    .line 36
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/catrobat/catroid/utils/VibrationManager;->startTime:J

    .line 37
    iput-wide p1, p0, Lorg/catrobat/catroid/utils/VibrationManager;->timeToVibrate:J

    .line 38
    iget-object v0, p0, Lorg/catrobat/catroid/utils/VibrationManager;->vibration:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    const-string v1, "vibration"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-wide v1, p0, Lorg/catrobat/catroid/utils/VibrationManager;->timeToVibrate:J

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 40
    :cond_1
    return-void
.end method
