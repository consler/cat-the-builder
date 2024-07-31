.class public Lcom/pdrogfer/mididroid/event/meta/MidiChannelPrefix;
.super Lcom/pdrogfer/mididroid/event/meta/MetaEvent;
.source "MidiChannelPrefix.java"


# instance fields
.field private mChannel:I


# direct methods
.method public constructor <init>(JJI)V
    .locals 7
    .param p1, "tick"    # J
    .param p3, "delta"    # J
    .param p5, "channel"    # I

    .line 31
    new-instance v6, Lcom/pdrogfer/mididroid/util/VariableLengthInt;

    const/4 v0, 0x4

    invoke-direct {v6, v0}, Lcom/pdrogfer/mididroid/util/VariableLengthInt;-><init>(I)V

    const/16 v5, 0x20

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/pdrogfer/mididroid/event/meta/MetaEvent;-><init>(JJILcom/pdrogfer/mididroid/util/VariableLengthInt;)V

    .line 33
    iput p5, p0, Lcom/pdrogfer/mididroid/event/meta/MidiChannelPrefix;->mChannel:I

    .line 34
    return-void
.end method

.method public static parseMidiChannelPrefix(JJLcom/pdrogfer/mididroid/event/meta/MetaEvent$MetaEventData;)Lcom/pdrogfer/mididroid/event/meta/MetaEvent;
    .locals 8
    .param p0, "tick"    # J
    .param p2, "delta"    # J
    .param p4, "info"    # Lcom/pdrogfer/mididroid/event/meta/MetaEvent$MetaEventData;

    .line 63
    iget-object v0, p4, Lcom/pdrogfer/mididroid/event/meta/MetaEvent$MetaEventData;->length:Lcom/pdrogfer/mididroid/util/VariableLengthInt;

    invoke-virtual {v0}, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->getValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 65
    new-instance v0, Lcom/pdrogfer/mididroid/event/meta/GenericMetaEvent;

    move-object v2, v0

    move-wide v3, p0

    move-wide v5, p2

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/pdrogfer/mididroid/event/meta/GenericMetaEvent;-><init>(JJLcom/pdrogfer/mididroid/event/meta/MetaEvent$MetaEventData;)V

    return-object v0

    .line 68
    :cond_0
    iget-object v0, p4, Lcom/pdrogfer/mididroid/event/meta/MetaEvent$MetaEventData;->data:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    .line 70
    .local v0, "channel":I
    new-instance v1, Lcom/pdrogfer/mididroid/event/meta/MidiChannelPrefix;

    move-object v2, v1

    move-wide v3, p0

    move-wide v5, p2

    move v7, v0

    invoke-direct/range {v2 .. v7}, Lcom/pdrogfer/mididroid/event/meta/MidiChannelPrefix;-><init>(JJI)V

    return-object v1
.end method


# virtual methods
.method public compareTo(Lcom/pdrogfer/mididroid/event/MidiEvent;)I
    .locals 7
    .param p1, "other"    # Lcom/pdrogfer/mididroid/event/MidiEvent;

    .line 76
    iget-wide v0, p0, Lcom/pdrogfer/mididroid/event/meta/MidiChannelPrefix;->mTick:J

    invoke-virtual {p1}, Lcom/pdrogfer/mididroid/event/MidiEvent;->getTick()J

    move-result-wide v2

    cmp-long v0, v0, v2

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 78
    iget-wide v3, p0, Lcom/pdrogfer/mididroid/event/meta/MidiChannelPrefix;->mTick:J

    invoke-virtual {p1}, Lcom/pdrogfer/mididroid/event/MidiEvent;->getTick()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/pdrogfer/mididroid/event/meta/MidiChannelPrefix;->mDelta:Lcom/pdrogfer/mididroid/util/VariableLengthInt;

    invoke-virtual {v0}, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->getValue()I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {p1}, Lcom/pdrogfer/mididroid/event/MidiEvent;->getDelta()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-eqz v0, :cond_3

    .line 82
    iget-object v0, p0, Lcom/pdrogfer/mididroid/event/meta/MidiChannelPrefix;->mDelta:Lcom/pdrogfer/mididroid/util/VariableLengthInt;

    invoke-virtual {v0}, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->getValue()I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {p1}, Lcom/pdrogfer/mididroid/event/MidiEvent;->getDelta()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-gez v0, :cond_2

    move v1, v2

    :cond_2
    return v1

    .line 85
    :cond_3
    instance-of v0, p1, Lcom/pdrogfer/mididroid/event/meta/MidiChannelPrefix;

    if-nez v0, :cond_4

    .line 87
    return v2

    .line 90
    :cond_4
    move-object v0, p1

    check-cast v0, Lcom/pdrogfer/mididroid/event/meta/MidiChannelPrefix;

    .line 92
    .local v0, "o":Lcom/pdrogfer/mididroid/event/meta/MidiChannelPrefix;
    iget v3, p0, Lcom/pdrogfer/mididroid/event/meta/MidiChannelPrefix;->mChannel:I

    iget v4, v0, Lcom/pdrogfer/mididroid/event/meta/MidiChannelPrefix;->mChannel:I

    if-eq v3, v4, :cond_6

    .line 94
    if-ge v3, v4, :cond_5

    goto :goto_1

    :cond_5
    move v1, v2

    :goto_1
    return v1

    .line 96
    :cond_6
    const/4 v1, 0x0

    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 25
    check-cast p1, Lcom/pdrogfer/mididroid/event/MidiEvent;

    invoke-virtual {p0, p1}, Lcom/pdrogfer/mididroid/event/meta/MidiChannelPrefix;->compareTo(Lcom/pdrogfer/mididroid/event/MidiEvent;)I

    move-result p1

    return p1
.end method

.method public getChannel()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/pdrogfer/mididroid/event/meta/MidiChannelPrefix;->mChannel:I

    return v0
.end method

.method protected getEventSize()I
    .locals 1

    .line 49
    const/4 v0, 0x4

    return v0
.end method

.method public setChannel(I)V
    .locals 0
    .param p1, "c"    # I

    .line 38
    iput p1, p0, Lcom/pdrogfer/mididroid/event/meta/MidiChannelPrefix;->mChannel:I

    .line 39
    return-void
.end method

.method public writeToFile(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-super {p0, p1}, Lcom/pdrogfer/mididroid/event/meta/MetaEvent;->writeToFile(Ljava/io/OutputStream;)V

    .line 57
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 58
    iget v0, p0, Lcom/pdrogfer/mididroid/event/meta/MidiChannelPrefix;->mChannel:I

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 59
    return-void
.end method
