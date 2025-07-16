.class public Lcom/pdrogfer/mididroid/event/meta/SequencerSpecificEvent;
.super Lcom/pdrogfer/mididroid/event/meta/MetaEvent;
.source "SequencerSpecificEvent.java"


# instance fields
.field private mData:[B


# direct methods
.method public constructor <init>(JJ[B)V
    .locals 7

    const/16 v5, 0x7f

    .line 32
    new-instance v6, Lcom/pdrogfer/mididroid/util/VariableLengthInt;

    array-length v0, p5

    invoke-direct {v6, v0}, Lcom/pdrogfer/mididroid/util/VariableLengthInt;-><init>(I)V

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/pdrogfer/mididroid/event/meta/MetaEvent;-><init>(JJILcom/pdrogfer/mididroid/util/VariableLengthInt;)V

    .line 34
    iput-object p5, p0, Lcom/pdrogfer/mididroid/event/meta/SequencerSpecificEvent;->mData:[B

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/pdrogfer/mididroid/event/MidiEvent;)I
    .locals 7

    .line 65
    iget-wide v0, p0, Lcom/pdrogfer/mididroid/event/meta/SequencerSpecificEvent;->mTick:J

    invoke-virtual {p1}, Lcom/pdrogfer/mididroid/event/MidiEvent;->getTick()J

    move-result-wide v2

    cmp-long v0, v0, v2

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 67
    iget-wide v3, p0, Lcom/pdrogfer/mididroid/event/meta/SequencerSpecificEvent;->mTick:J

    invoke-virtual {p1}, Lcom/pdrogfer/mididroid/event/MidiEvent;->getTick()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/pdrogfer/mididroid/event/meta/SequencerSpecificEvent;->mDelta:Lcom/pdrogfer/mididroid/util/VariableLengthInt;

    invoke-virtual {v0}, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->getValue()I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {p1}, Lcom/pdrogfer/mididroid/event/MidiEvent;->getDelta()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-eqz v0, :cond_3

    .line 71
    iget-object v0, p0, Lcom/pdrogfer/mididroid/event/meta/SequencerSpecificEvent;->mDelta:Lcom/pdrogfer/mididroid/util/VariableLengthInt;

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

    .line 74
    :cond_3
    instance-of v0, p1, Lcom/pdrogfer/mididroid/event/meta/SequencerSpecificEvent;

    if-nez v0, :cond_4

    return v2

    .line 79
    :cond_4
    check-cast p1, Lcom/pdrogfer/mididroid/event/meta/SequencerSpecificEvent;

    .line 81
    iget-object v0, p0, Lcom/pdrogfer/mididroid/event/meta/SequencerSpecificEvent;->mData:[B

    iget-object p1, p1, Lcom/pdrogfer/mididroid/event/meta/SequencerSpecificEvent;->mData:[B

    array-length v1, v0

    const/4 v3, 0x0

    invoke-static {v0, p1, v3, v1}, Lcom/pdrogfer/mididroid/util/MidiUtil;->bytesEqual([B[BII)Z

    move-result p1

    if-eqz p1, :cond_5

    return v3

    :cond_5
    return v2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 26
    check-cast p1, Lcom/pdrogfer/mididroid/event/MidiEvent;

    invoke-virtual {p0, p1}, Lcom/pdrogfer/mididroid/event/meta/SequencerSpecificEvent;->compareTo(Lcom/pdrogfer/mididroid/event/MidiEvent;)I

    move-result p1

    return p1
.end method

.method public getData()[B
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/pdrogfer/mididroid/event/meta/SequencerSpecificEvent;->mData:[B

    return-object v0
.end method

.method protected getEventSize()I
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/pdrogfer/mididroid/event/meta/SequencerSpecificEvent;->mLength:Lcom/pdrogfer/mididroid/util/VariableLengthInt;

    invoke-virtual {v0}, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->getByteCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/pdrogfer/mididroid/event/meta/SequencerSpecificEvent;->mData:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public setData([B)V
    .locals 1

    .line 39
    iput-object p1, p0, Lcom/pdrogfer/mididroid/event/meta/SequencerSpecificEvent;->mData:[B

    .line 40
    iget-object p1, p0, Lcom/pdrogfer/mididroid/event/meta/SequencerSpecificEvent;->mLength:Lcom/pdrogfer/mididroid/util/VariableLengthInt;

    iget-object v0, p0, Lcom/pdrogfer/mididroid/event/meta/SequencerSpecificEvent;->mData:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->setValue(I)V

    return-void
.end method

.method public writeToFile(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    invoke-super {p0, p1}, Lcom/pdrogfer/mididroid/event/meta/MetaEvent;->writeToFile(Ljava/io/OutputStream;)V

    .line 58
    iget-object v0, p0, Lcom/pdrogfer/mididroid/event/meta/SequencerSpecificEvent;->mLength:Lcom/pdrogfer/mididroid/util/VariableLengthInt;

    invoke-virtual {v0}, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 59
    iget-object v0, p0, Lcom/pdrogfer/mididroid/event/meta/SequencerSpecificEvent;->mData:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
