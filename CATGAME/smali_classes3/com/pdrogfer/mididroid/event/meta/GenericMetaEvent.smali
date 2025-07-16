.class public Lcom/pdrogfer/mididroid/event/meta/GenericMetaEvent;
.super Lcom/pdrogfer/mididroid/event/meta/MetaEvent;
.source "GenericMetaEvent.java"


# instance fields
.field private mData:[B


# direct methods
.method protected constructor <init>(JJLcom/pdrogfer/mididroid/event/meta/MetaEvent$MetaEventData;)V
    .locals 7

    .line 14
    iget v5, p5, Lcom/pdrogfer/mididroid/event/meta/MetaEvent$MetaEventData;->type:I

    iget-object v6, p5, Lcom/pdrogfer/mididroid/event/meta/MetaEvent$MetaEventData;->length:Lcom/pdrogfer/mididroid/util/VariableLengthInt;

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/pdrogfer/mididroid/event/meta/MetaEvent;-><init>(JJILcom/pdrogfer/mididroid/util/VariableLengthInt;)V

    .line 16
    iget-object p1, p5, Lcom/pdrogfer/mididroid/event/meta/MetaEvent$MetaEventData;->data:[B

    iput-object p1, p0, Lcom/pdrogfer/mididroid/event/meta/GenericMetaEvent;->mData:[B

    .line 18
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Warning: GenericMetaEvent used because type ("

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p5, Lcom/pdrogfer/mididroid/event/meta/MetaEvent$MetaEventData;->type:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ") wasn\'t recognized or unexpected data length ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p5, Lcom/pdrogfer/mididroid/event/meta/MetaEvent$MetaEventData;->length:Lcom/pdrogfer/mididroid/util/VariableLengthInt;

    invoke-virtual {p3}, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->getValue()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ") for type."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/pdrogfer/mididroid/event/MidiEvent;)I
    .locals 7

    .line 38
    iget-wide v0, p0, Lcom/pdrogfer/mididroid/event/meta/GenericMetaEvent;->mTick:J

    invoke-virtual {p1}, Lcom/pdrogfer/mididroid/event/MidiEvent;->getTick()J

    move-result-wide v2

    cmp-long v0, v0, v2

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 40
    iget-wide v3, p0, Lcom/pdrogfer/mididroid/event/meta/GenericMetaEvent;->mTick:J

    invoke-virtual {p1}, Lcom/pdrogfer/mididroid/event/MidiEvent;->getTick()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/pdrogfer/mididroid/event/meta/GenericMetaEvent;->mDelta:Lcom/pdrogfer/mididroid/util/VariableLengthInt;

    invoke-virtual {v0}, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->getValue()I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {p1}, Lcom/pdrogfer/mididroid/event/MidiEvent;->getDelta()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-eqz v0, :cond_3

    .line 44
    iget-object v0, p0, Lcom/pdrogfer/mididroid/event/meta/GenericMetaEvent;->mDelta:Lcom/pdrogfer/mididroid/util/VariableLengthInt;

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

    :cond_3
    return v2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 8
    check-cast p1, Lcom/pdrogfer/mididroid/event/MidiEvent;

    invoke-virtual {p0, p1}, Lcom/pdrogfer/mididroid/event/meta/GenericMetaEvent;->compareTo(Lcom/pdrogfer/mididroid/event/MidiEvent;)I

    move-result p1

    return p1
.end method

.method protected getEventSize()I
    .locals 2

    .line 24
    iget-object v0, p0, Lcom/pdrogfer/mididroid/event/meta/GenericMetaEvent;->mLength:Lcom/pdrogfer/mididroid/util/VariableLengthInt;

    invoke-virtual {v0}, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->getByteCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/pdrogfer/mididroid/event/meta/GenericMetaEvent;->mLength:Lcom/pdrogfer/mididroid/util/VariableLengthInt;

    invoke-virtual {v1}, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->getValue()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected writeToFile(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    invoke-super {p0, p1}, Lcom/pdrogfer/mididroid/event/meta/MetaEvent;->writeToFile(Ljava/io/OutputStream;)V

    .line 31
    iget-object v0, p0, Lcom/pdrogfer/mididroid/event/meta/GenericMetaEvent;->mLength:Lcom/pdrogfer/mididroid/util/VariableLengthInt;

    invoke-virtual {v0}, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 32
    iget-object v0, p0, Lcom/pdrogfer/mididroid/event/meta/GenericMetaEvent;->mData:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
