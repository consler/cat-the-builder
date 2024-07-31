.class public final Lorg/catrobat/catroid/formulaeditor/SensorCustomEvent;
.super Ljava/lang/Object;
.source "SensorCustomEvent.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0001\u00a2\u0006\u0002\u0010\u0005J\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0001H\u00c6\u0003J\u001d\u0010\u0016\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0001H\u00c6\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001a\u001a\u00020\u001bH\u00d6\u0001J\t\u0010\u001c\u001a\u00020\u001dH\u00d6\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0004\u001a\u00020\u0001X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u001e"
    }
    d2 = {
        "Lorg/catrobat/catroid/formulaeditor/SensorCustomEvent;",
        "",
        "sensor",
        "Lorg/catrobat/catroid/formulaeditor/Sensors;",
        "value",
        "(Lorg/catrobat/catroid/formulaeditor/Sensors;Ljava/lang/Object;)V",
        "getSensor",
        "()Lorg/catrobat/catroid/formulaeditor/Sensors;",
        "setSensor",
        "(Lorg/catrobat/catroid/formulaeditor/Sensors;)V",
        "timestamp",
        "",
        "getTimestamp",
        "()J",
        "setTimestamp",
        "(J)V",
        "getValue",
        "()Ljava/lang/Object;",
        "setValue",
        "(Ljava/lang/Object;)V",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "",
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
.field private sensor:Lorg/catrobat/catroid/formulaeditor/Sensors;

.field private timestamp:J

.field private value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/catrobat/catroid/formulaeditor/Sensors;Ljava/lang/Object;)V
    .locals 2
    .param p1, "sensor"    # Lorg/catrobat/catroid/formulaeditor/Sensors;
    .param p2, "value"    # Ljava/lang/Object;

    const-string v0, "sensor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/formulaeditor/SensorCustomEvent;->sensor:Lorg/catrobat/catroid/formulaeditor/Sensors;

    iput-object p2, p0, Lorg/catrobat/catroid/formulaeditor/SensorCustomEvent;->value:Ljava/lang/Object;

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/catrobat/catroid/formulaeditor/SensorCustomEvent;->timestamp:J

    return-void
.end method

.method public static synthetic copy$default(Lorg/catrobat/catroid/formulaeditor/SensorCustomEvent;Lorg/catrobat/catroid/formulaeditor/Sensors;Ljava/lang/Object;ILjava/lang/Object;)Lorg/catrobat/catroid/formulaeditor/SensorCustomEvent;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lorg/catrobat/catroid/formulaeditor/SensorCustomEvent;->sensor:Lorg/catrobat/catroid/formulaeditor/Sensors;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lorg/catrobat/catroid/formulaeditor/SensorCustomEvent;->value:Ljava/lang/Object;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/formulaeditor/SensorCustomEvent;->copy(Lorg/catrobat/catroid/formulaeditor/Sensors;Ljava/lang/Object;)Lorg/catrobat/catroid/formulaeditor/SensorCustomEvent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lorg/catrobat/catroid/formulaeditor/Sensors;
    .locals 1

    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/SensorCustomEvent;->sensor:Lorg/catrobat/catroid/formulaeditor/Sensors;

    return-object v0
.end method

.method public final component2()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/SensorCustomEvent;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public final copy(Lorg/catrobat/catroid/formulaeditor/Sensors;Ljava/lang/Object;)Lorg/catrobat/catroid/formulaeditor/SensorCustomEvent;
    .locals 1

    const-string v0, "sensor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/catrobat/catroid/formulaeditor/SensorCustomEvent;

    invoke-direct {v0, p1, p2}, Lorg/catrobat/catroid/formulaeditor/SensorCustomEvent;-><init>(Lorg/catrobat/catroid/formulaeditor/Sensors;Ljava/lang/Object;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lorg/catrobat/catroid/formulaeditor/SensorCustomEvent;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/catrobat/catroid/formulaeditor/SensorCustomEvent;

    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/SensorCustomEvent;->sensor:Lorg/catrobat/catroid/formulaeditor/Sensors;

    iget-object v1, p1, Lorg/catrobat/catroid/formulaeditor/SensorCustomEvent;->sensor:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/SensorCustomEvent;->value:Ljava/lang/Object;

    iget-object p1, p1, Lorg/catrobat/catroid/formulaeditor/SensorCustomEvent;->value:Ljava/lang/Object;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getSensor()Lorg/catrobat/catroid/formulaeditor/Sensors;
    .locals 1

    .line 26
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/SensorCustomEvent;->sensor:Lorg/catrobat/catroid/formulaeditor/Sensors;

    return-object v0
.end method

.method public final getTimestamp()J
    .locals 2

    .line 29
    iget-wide v0, p0, Lorg/catrobat/catroid/formulaeditor/SensorCustomEvent;->timestamp:J

    return-wide v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1

    .line 27
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/SensorCustomEvent;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/SensorCustomEvent;->sensor:Lorg/catrobat/catroid/formulaeditor/Sensors;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/catrobat/catroid/formulaeditor/SensorCustomEvent;->value:Ljava/lang/Object;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final setSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;)V
    .locals 1
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/formulaeditor/Sensors;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lorg/catrobat/catroid/formulaeditor/SensorCustomEvent;->sensor:Lorg/catrobat/catroid/formulaeditor/Sensors;

    return-void
.end method

.method public final setTimestamp(J)V
    .locals 0
    .param p1, "<set-?>"    # J

    .line 29
    iput-wide p1, p0, Lorg/catrobat/catroid/formulaeditor/SensorCustomEvent;->timestamp:J

    return-void
.end method

.method public final setValue(Ljava/lang/Object;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/Object;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iput-object p1, p0, Lorg/catrobat/catroid/formulaeditor/SensorCustomEvent;->value:Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SensorCustomEvent(sensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/SensorCustomEvent;->sensor:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/SensorCustomEvent;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
