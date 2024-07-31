.class public Lcom/pdrogfer/mididroid/event/SystemExclusiveEvent;
.super Lcom/pdrogfer/mididroid/event/MidiEvent;
.source "SystemExclusiveEvent.java"


# instance fields
.field private mData:[B

.field private mLength:Lcom/pdrogfer/mididroid/util/VariableLengthInt;

.field private mType:I


# direct methods
.method public constructor <init>(IJJ[B)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "tick"    # J
    .param p4, "delta"    # J
    .param p6, "data"    # [B

    .line 41
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/pdrogfer/mididroid/event/MidiEvent;-><init>(JJ)V

    .line 43
    and-int/lit16 v0, p1, 0xff

    iput v0, p0, Lcom/pdrogfer/mididroid/event/SystemExclusiveEvent;->mType:I

    .line 44
    const/16 v1, 0xf0

    if-eq v0, v1, :cond_0

    const/16 v2, 0xf7

    if-eq v0, v2, :cond_0

    .line 46
    iput v1, p0, Lcom/pdrogfer/mididroid/event/SystemExclusiveEvent;->mType:I

    .line 49
    :cond_0
    new-instance v0, Lcom/pdrogfer/mididroid/util/VariableLengthInt;

    array-length v1, p6

    invoke-direct {v0, v1}, Lcom/pdrogfer/mididroid/util/VariableLengthInt;-><init>(I)V

    iput-object v0, p0, Lcom/pdrogfer/mididroid/event/SystemExclusiveEvent;->mLength:Lcom/pdrogfer/mididroid/util/VariableLengthInt;

    .line 50
    iput-object p6, p0, Lcom/pdrogfer/mididroid/event/SystemExclusiveEvent;->mData:[B

    .line 51
    return-void
.end method

.method public constructor <init>(IJ[B)V
    .locals 7
    .param p1, "type"    # I
    .param p2, "tick"    # J
    .param p4, "data"    # [B

    .line 36
    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/pdrogfer/mididroid/event/SystemExclusiveEvent;-><init>(IJJ[B)V

    .line 37
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/pdrogfer/mididroid/event/MidiEvent;)I
    .locals 6
    .param p1, "other"    # Lcom/pdrogfer/mididroid/event/MidiEvent;

    .line 83
    iget-wide v0, p0, Lcom/pdrogfer/mididroid/event/SystemExclusiveEvent;->mTick:J

    iget-wide v2, p1, Lcom/pdrogfer/mididroid/event/MidiEvent;->mTick:J

    cmp-long v0, v0, v2

    const/4 v1, -0x1

    if-gez v0, :cond_0

    .line 85
    return v1

    .line 87
    :cond_0
    iget-wide v2, p0, Lcom/pdrogfer/mididroid/event/SystemExclusiveEvent;->mTick:J

    iget-wide v4, p1, Lcom/pdrogfer/mididroid/event/MidiEvent;->mTick:J

    cmp-long v0, v2, v4

    const/4 v2, 0x1

    if-lez v0, :cond_1

    .line 89
    return v2

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/pdrogfer/mididroid/event/SystemExclusiveEvent;->mDelta:Lcom/pdrogfer/mididroid/util/VariableLengthInt;

    invoke-virtual {v0}, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->getValue()I

    move-result v0

    iget-object v3, p1, Lcom/pdrogfer/mididroid/event/MidiEvent;->mDelta:Lcom/pdrogfer/mididroid/util/VariableLengthInt;

    invoke-virtual {v3}, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->getValue()I

    move-result v3

    if-le v0, v3, :cond_2

    .line 94
    return v1

    .line 96
    :cond_2
    iget-object v0, p0, Lcom/pdrogfer/mididroid/event/SystemExclusiveEvent;->mDelta:Lcom/pdrogfer/mididroid/util/VariableLengthInt;

    invoke-virtual {v0}, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->getValue()I

    move-result v0

    iget-object v1, p1, Lcom/pdrogfer/mididroid/event/MidiEvent;->mDelta:Lcom/pdrogfer/mididroid/util/VariableLengthInt;

    invoke-virtual {v1}, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->getValue()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 98
    return v2

    .line 101
    :cond_3
    instance-of v0, p1, Lcom/pdrogfer/mididroid/event/SystemExclusiveEvent;

    if-eqz v0, :cond_4

    .line 103
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/pdrogfer/mididroid/event/SystemExclusiveEvent;->mData:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 104
    .local v0, "curr":Ljava/lang/String;
    new-instance v1, Ljava/lang/String;

    move-object v2, p1

    check-cast v2, Lcom/pdrogfer/mididroid/event/SystemExclusiveEvent;

    iget-object v2, v2, Lcom/pdrogfer/mididroid/event/SystemExclusiveEvent;->mData:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 105
    .local v1, "comp":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2

    .line 108
    .end local v0    # "curr":Ljava/lang/String;
    .end local v1    # "comp":Ljava/lang/String;
    :cond_4
    return v2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 28
    check-cast p1, Lcom/pdrogfer/mididroid/event/MidiEvent;

    invoke-virtual {p0, p1}, Lcom/pdrogfer/mididroid/event/SystemExclusiveEvent;->compareTo(Lcom/pdrogfer/mididroid/event/MidiEvent;)I

    move-result p1

    return p1
.end method

.method public getData()[B
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/pdrogfer/mididroid/event/SystemExclusiveEvent;->mData:[B

    return-object v0
.end method

.method protected getEventSize()I
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/pdrogfer/mididroid/event/SystemExclusiveEvent;->mLength:Lcom/pdrogfer/mididroid/util/VariableLengthInt;

    invoke-virtual {v0}, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->getByteCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/pdrogfer/mididroid/event/SystemExclusiveEvent;->mData:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public requiresStatusByte(Lcom/pdrogfer/mididroid/event/MidiEvent;)Z
    .locals 1
    .param p1, "prevEvent"    # Lcom/pdrogfer/mididroid/event/MidiEvent;

    .line 67
    const/4 v0, 0x1

    return v0
.end method

.method public setData([B)V
    .locals 2
    .param p1, "data"    # [B

    .line 60
    iget-object v0, p0, Lcom/pdrogfer/mididroid/event/SystemExclusiveEvent;->mLength:Lcom/pdrogfer/mididroid/util/VariableLengthInt;

    array-length v1, p1

    invoke-virtual {v0, v1}, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->setValue(I)V

    .line 61
    iput-object p1, p0, Lcom/pdrogfer/mididroid/event/SystemExclusiveEvent;->mData:[B

    .line 62
    return-void
.end method

.method public writeToFile(Ljava/io/OutputStream;Z)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "writeType"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    invoke-super {p0, p1, p2}, Lcom/pdrogfer/mididroid/event/MidiEvent;->writeToFile(Ljava/io/OutputStream;Z)V

    .line 75
    iget v0, p0, Lcom/pdrogfer/mididroid/event/SystemExclusiveEvent;->mType:I

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 76
    iget-object v0, p0, Lcom/pdrogfer/mididroid/event/SystemExclusiveEvent;->mLength:Lcom/pdrogfer/mididroid/util/VariableLengthInt;

    invoke-virtual {v0}, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 77
    iget-object v0, p0, Lcom/pdrogfer/mididroid/event/SystemExclusiveEvent;->mData:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 78
    return-void
.end method
