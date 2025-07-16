.class public abstract Lcom/pdrogfer/mididroid/event/meta/TextualMetaEvent;
.super Lcom/pdrogfer/mididroid/event/meta/MetaEvent;
.source "TextualMetaEvent.java"


# instance fields
.field protected mText:Ljava/lang/String;


# direct methods
.method protected constructor <init>(JJILjava/lang/String;)V
    .locals 7

    .line 31
    new-instance v6, Lcom/pdrogfer/mididroid/util/VariableLengthInt;

    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v6, v0}, Lcom/pdrogfer/mididroid/util/VariableLengthInt;-><init>(I)V

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/pdrogfer/mididroid/event/meta/MetaEvent;-><init>(JJILcom/pdrogfer/mididroid/util/VariableLengthInt;)V

    .line 33
    invoke-virtual {p0, p6}, Lcom/pdrogfer/mididroid/event/meta/TextualMetaEvent;->setText(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/pdrogfer/mididroid/event/MidiEvent;)I
    .locals 7

    .line 65
    iget-wide v0, p0, Lcom/pdrogfer/mididroid/event/meta/TextualMetaEvent;->mTick:J

    invoke-virtual {p1}, Lcom/pdrogfer/mididroid/event/MidiEvent;->getTick()J

    move-result-wide v2

    cmp-long v0, v0, v2

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 67
    iget-wide v3, p0, Lcom/pdrogfer/mididroid/event/meta/TextualMetaEvent;->mTick:J

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
    iget-object v0, p0, Lcom/pdrogfer/mididroid/event/meta/TextualMetaEvent;->mDelta:Lcom/pdrogfer/mididroid/util/VariableLengthInt;

    invoke-virtual {v0}, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->getValue()I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {p1}, Lcom/pdrogfer/mididroid/event/MidiEvent;->getDelta()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-eqz v0, :cond_3

    .line 71
    iget-object v0, p0, Lcom/pdrogfer/mididroid/event/meta/TextualMetaEvent;->mDelta:Lcom/pdrogfer/mididroid/util/VariableLengthInt;

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
    instance-of v0, p1, Lcom/pdrogfer/mididroid/event/meta/TextualMetaEvent;

    if-nez v0, :cond_4

    return v2

    .line 79
    :cond_4
    check-cast p1, Lcom/pdrogfer/mididroid/event/meta/TextualMetaEvent;

    .line 81
    iget-object v0, p0, Lcom/pdrogfer/mididroid/event/meta/TextualMetaEvent;->mText:Ljava/lang/String;

    iget-object p1, p1, Lcom/pdrogfer/mididroid/event/meta/TextualMetaEvent;->mText:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 25
    check-cast p1, Lcom/pdrogfer/mididroid/event/MidiEvent;

    invoke-virtual {p0, p1}, Lcom/pdrogfer/mididroid/event/meta/TextualMetaEvent;->compareTo(Lcom/pdrogfer/mididroid/event/MidiEvent;)I

    move-result p1

    return p1
.end method

.method protected getEventSize()I
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/pdrogfer/mididroid/event/meta/TextualMetaEvent;->mLength:Lcom/pdrogfer/mididroid/util/VariableLengthInt;

    invoke-virtual {v0}, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->getByteCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/pdrogfer/mididroid/event/meta/TextualMetaEvent;->mLength:Lcom/pdrogfer/mididroid/util/VariableLengthInt;

    invoke-virtual {v1}, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->getValue()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected getText()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/pdrogfer/mididroid/event/meta/TextualMetaEvent;->mText:Ljava/lang/String;

    return-object v0
.end method

.method protected setText(Ljava/lang/String;)V
    .locals 1

    .line 38
    iput-object p1, p0, Lcom/pdrogfer/mididroid/event/meta/TextualMetaEvent;->mText:Ljava/lang/String;

    .line 39
    iget-object v0, p0, Lcom/pdrogfer/mididroid/event/meta/TextualMetaEvent;->mLength:Lcom/pdrogfer/mididroid/util/VariableLengthInt;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    array-length p1, p1

    invoke-virtual {v0, p1}, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->setValue(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/pdrogfer/mididroid/event/meta/MetaEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pdrogfer/mididroid/event/meta/TextualMetaEvent;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    iget-object v0, p0, Lcom/pdrogfer/mididroid/event/meta/TextualMetaEvent;->mLength:Lcom/pdrogfer/mididroid/util/VariableLengthInt;

    invoke-virtual {v0}, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 59
    iget-object v0, p0, Lcom/pdrogfer/mididroid/event/meta/TextualMetaEvent;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
