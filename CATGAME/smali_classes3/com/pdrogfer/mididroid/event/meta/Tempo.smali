.class public Lcom/pdrogfer/mididroid/event/meta/Tempo;
.super Lcom/pdrogfer/mididroid/event/meta/MetaEvent;
.source "Tempo.java"


# static fields
.field public static final DEFAULT_BPM:F = 120.0f

.field public static final DEFAULT_MPQN:I = 0x7a120


# instance fields
.field private mBPM:F

.field private mMPQN:I


# direct methods
.method public constructor <init>()V
    .locals 6

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const v5, 0x7a120

    move-object v0, p0

    .line 36
    invoke-direct/range {v0 .. v5}, Lcom/pdrogfer/mididroid/event/meta/Tempo;-><init>(JJI)V

    return-void
.end method

.method public constructor <init>(JJI)V
    .locals 7

    const/16 v5, 0x51

    .line 41
    new-instance v6, Lcom/pdrogfer/mididroid/util/VariableLengthInt;

    const/4 v0, 0x3

    invoke-direct {v6, v0}, Lcom/pdrogfer/mididroid/util/VariableLengthInt;-><init>(I)V

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/pdrogfer/mididroid/event/meta/MetaEvent;-><init>(JJILcom/pdrogfer/mididroid/util/VariableLengthInt;)V

    .line 43
    invoke-virtual {p0, p5}, Lcom/pdrogfer/mididroid/event/meta/Tempo;->setMpqn(I)V

    return-void
.end method

.method public static parseTempo(JJLcom/pdrogfer/mididroid/event/meta/MetaEvent$MetaEventData;)Lcom/pdrogfer/mididroid/event/meta/MetaEvent;
    .locals 8

    .line 85
    iget-object v0, p4, Lcom/pdrogfer/mididroid/event/meta/MetaEvent$MetaEventData;->length:Lcom/pdrogfer/mididroid/util/VariableLengthInt;

    invoke-virtual {v0}, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->getValue()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 87
    new-instance v0, Lcom/pdrogfer/mididroid/event/meta/GenericMetaEvent;

    move-object v2, v0

    move-wide v3, p0

    move-wide v5, p2

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/pdrogfer/mididroid/event/meta/GenericMetaEvent;-><init>(JJLcom/pdrogfer/mididroid/event/meta/MetaEvent$MetaEventData;)V

    return-object v0

    .line 90
    :cond_0
    iget-object p4, p4, Lcom/pdrogfer/mididroid/event/meta/MetaEvent$MetaEventData;->data:[B

    const/4 v0, 0x0

    invoke-static {p4, v0, v1}, Lcom/pdrogfer/mididroid/util/MidiUtil;->bytesToInt([BII)I

    move-result v7

    .line 92
    new-instance p4, Lcom/pdrogfer/mididroid/event/meta/Tempo;

    move-object v2, p4

    move-wide v3, p0

    move-wide v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/pdrogfer/mididroid/event/meta/Tempo;-><init>(JJI)V

    return-object p4
.end method


# virtual methods
.method public compareTo(Lcom/pdrogfer/mididroid/event/MidiEvent;)I
    .locals 7

    .line 98
    iget-wide v0, p0, Lcom/pdrogfer/mididroid/event/meta/Tempo;->mTick:J

    invoke-virtual {p1}, Lcom/pdrogfer/mididroid/event/MidiEvent;->getTick()J

    move-result-wide v2

    cmp-long v0, v0, v2

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 100
    iget-wide v3, p0, Lcom/pdrogfer/mididroid/event/meta/Tempo;->mTick:J

    invoke-virtual {p1}, Lcom/pdrogfer/mididroid/event/MidiEvent;->getTick()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/pdrogfer/mididroid/event/meta/Tempo;->mDelta:Lcom/pdrogfer/mididroid/util/VariableLengthInt;

    invoke-virtual {v0}, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->getValue()I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {p1}, Lcom/pdrogfer/mididroid/event/MidiEvent;->getDelta()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-eqz v0, :cond_3

    .line 104
    iget-object v0, p0, Lcom/pdrogfer/mididroid/event/meta/Tempo;->mDelta:Lcom/pdrogfer/mididroid/util/VariableLengthInt;

    invoke-virtual {v0}, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->getValue()I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {p1}, Lcom/pdrogfer/mididroid/event/MidiEvent;->getDelta()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-gez p1, :cond_2

    move v1, v2

    :cond_2
    return v1

    .line 107
    :cond_3
    instance-of v0, p1, Lcom/pdrogfer/mididroid/event/meta/Tempo;

    if-nez v0, :cond_4

    return v2

    .line 112
    :cond_4
    check-cast p1, Lcom/pdrogfer/mididroid/event/meta/Tempo;

    .line 114
    iget v0, p0, Lcom/pdrogfer/mididroid/event/meta/Tempo;->mMPQN:I

    iget p1, p1, Lcom/pdrogfer/mididroid/event/meta/Tempo;->mMPQN:I

    if-eq v0, p1, :cond_6

    if-ge v0, p1, :cond_5

    goto :goto_1

    :cond_5
    move v1, v2

    :goto_1
    return v1

    :cond_6
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 26
    check-cast p1, Lcom/pdrogfer/mididroid/event/MidiEvent;

    invoke-virtual {p0, p1}, Lcom/pdrogfer/mididroid/event/meta/Tempo;->compareTo(Lcom/pdrogfer/mididroid/event/MidiEvent;)I

    move-result p1

    return p1
.end method

.method public getBpm()F
    .locals 1

    .line 53
    iget v0, p0, Lcom/pdrogfer/mididroid/event/meta/Tempo;->mBPM:F

    return v0
.end method

.method protected getEventSize()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public getMpqn()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/pdrogfer/mididroid/event/meta/Tempo;->mMPQN:I

    return v0
.end method

.method public setBpm(F)V
    .locals 1

    .line 64
    iput p1, p0, Lcom/pdrogfer/mididroid/event/meta/Tempo;->mBPM:F

    const v0, 0x4c64e1c0    # 6.0E7f

    div-float/2addr v0, p1

    float-to-int p1, v0

    .line 65
    iput p1, p0, Lcom/pdrogfer/mididroid/event/meta/Tempo;->mMPQN:I

    return-void
.end method

.method public setMpqn(I)V
    .locals 1

    .line 58
    iput p1, p0, Lcom/pdrogfer/mididroid/event/meta/Tempo;->mMPQN:I

    const v0, 0x4c64e1c0    # 6.0E7f

    int-to-float p1, p1

    div-float/2addr v0, p1

    .line 59
    iput v0, p0, Lcom/pdrogfer/mididroid/event/meta/Tempo;->mBPM:F

    return-void
.end method

.method public writeToFile(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    invoke-super {p0, p1}, Lcom/pdrogfer/mididroid/event/meta/MetaEvent;->writeToFile(Ljava/io/OutputStream;)V

    const/4 v0, 0x3

    .line 79
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 80
    iget v1, p0, Lcom/pdrogfer/mididroid/event/meta/Tempo;->mMPQN:I

    invoke-static {v1, v0}, Lcom/pdrogfer/mididroid/util/MidiUtil;->intToBytes(II)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
