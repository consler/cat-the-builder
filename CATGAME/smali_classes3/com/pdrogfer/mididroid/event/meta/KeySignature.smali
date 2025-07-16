.class public Lcom/pdrogfer/mididroid/event/meta/KeySignature;
.super Lcom/pdrogfer/mididroid/event/meta/MetaEvent;
.source "KeySignature.java"


# static fields
.field public static final SCALE_MAJOR:I = 0x0

.field public static final SCALE_MINOR:I = 0x1


# instance fields
.field private mKey:I

.field private mScale:I


# direct methods
.method public constructor <init>(JJII)V
    .locals 7

    const/16 v5, 0x59

    .line 35
    new-instance v6, Lcom/pdrogfer/mididroid/util/VariableLengthInt;

    const/4 v0, 0x2

    invoke-direct {v6, v0}, Lcom/pdrogfer/mididroid/util/VariableLengthInt;-><init>(I)V

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/pdrogfer/mididroid/event/meta/MetaEvent;-><init>(JJILcom/pdrogfer/mididroid/util/VariableLengthInt;)V

    .line 37
    invoke-virtual {p0, p5}, Lcom/pdrogfer/mididroid/event/meta/KeySignature;->setKey(I)V

    .line 38
    iput p6, p0, Lcom/pdrogfer/mididroid/event/meta/KeySignature;->mScale:I

    return-void
.end method

.method public static parseKeySignature(JJLcom/pdrogfer/mididroid/event/meta/MetaEvent$MetaEventData;)Lcom/pdrogfer/mididroid/event/meta/MetaEvent;
    .locals 9

    .line 84
    iget-object v0, p4, Lcom/pdrogfer/mididroid/event/meta/MetaEvent$MetaEventData;->length:Lcom/pdrogfer/mididroid/util/VariableLengthInt;

    invoke-virtual {v0}, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->getValue()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 86
    new-instance v0, Lcom/pdrogfer/mididroid/event/meta/GenericMetaEvent;

    move-object v2, v0

    move-wide v3, p0

    move-wide v5, p2

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/pdrogfer/mididroid/event/meta/GenericMetaEvent;-><init>(JJLcom/pdrogfer/mididroid/event/meta/MetaEvent$MetaEventData;)V

    return-object v0

    .line 89
    :cond_0
    iget-object v0, p4, Lcom/pdrogfer/mididroid/event/meta/MetaEvent$MetaEventData;->data:[B

    const/4 v1, 0x0

    aget-byte v7, v0, v1

    .line 90
    iget-object p4, p4, Lcom/pdrogfer/mididroid/event/meta/MetaEvent$MetaEventData;->data:[B

    const/4 v0, 0x1

    aget-byte v8, p4, v0

    .line 92
    new-instance p4, Lcom/pdrogfer/mididroid/event/meta/KeySignature;

    move-object v2, p4

    move-wide v3, p0

    move-wide v5, p2

    invoke-direct/range {v2 .. v8}, Lcom/pdrogfer/mididroid/event/meta/KeySignature;-><init>(JJII)V

    return-object p4
.end method


# virtual methods
.method public compareTo(Lcom/pdrogfer/mididroid/event/MidiEvent;)I
    .locals 7

    .line 98
    iget-wide v0, p0, Lcom/pdrogfer/mididroid/event/meta/KeySignature;->mTick:J

    invoke-virtual {p1}, Lcom/pdrogfer/mididroid/event/MidiEvent;->getTick()J

    move-result-wide v2

    cmp-long v0, v0, v2

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 100
    iget-wide v3, p0, Lcom/pdrogfer/mididroid/event/meta/KeySignature;->mTick:J

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
    iget-object v0, p0, Lcom/pdrogfer/mididroid/event/meta/KeySignature;->mDelta:Lcom/pdrogfer/mididroid/util/VariableLengthInt;

    invoke-virtual {v0}, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->getValue()I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {p1}, Lcom/pdrogfer/mididroid/event/MidiEvent;->getDelta()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-eqz v0, :cond_3

    .line 104
    iget-object v0, p0, Lcom/pdrogfer/mididroid/event/meta/KeySignature;->mDelta:Lcom/pdrogfer/mididroid/util/VariableLengthInt;

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
    instance-of v0, p1, Lcom/pdrogfer/mididroid/event/meta/KeySignature;

    if-nez v0, :cond_4

    return v2

    .line 112
    :cond_4
    check-cast p1, Lcom/pdrogfer/mididroid/event/meta/KeySignature;

    .line 113
    iget v0, p0, Lcom/pdrogfer/mididroid/event/meta/KeySignature;->mKey:I

    iget v3, p1, Lcom/pdrogfer/mididroid/event/meta/KeySignature;->mKey:I

    if-eq v0, v3, :cond_6

    if-ge v0, v3, :cond_5

    goto :goto_1

    :cond_5
    move v1, v2

    :goto_1
    return v1

    .line 118
    :cond_6
    iget v3, p0, Lcom/pdrogfer/mididroid/event/meta/KeySignature;->mScale:I

    iget p1, p1, Lcom/pdrogfer/mididroid/event/meta/KeySignature;->mScale:I

    if-eq v3, p1, :cond_8

    if-ge v0, p1, :cond_7

    goto :goto_2

    :cond_7
    move v1, v2

    :goto_2
    return v1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 25
    check-cast p1, Lcom/pdrogfer/mididroid/event/MidiEvent;

    invoke-virtual {p0, p1}, Lcom/pdrogfer/mididroid/event/meta/KeySignature;->compareTo(Lcom/pdrogfer/mididroid/event/MidiEvent;)I

    move-result p1

    return p1
.end method

.method protected getEventSize()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public getKey()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/pdrogfer/mididroid/event/meta/KeySignature;->mKey:I

    return v0
.end method

.method public getScale()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/pdrogfer/mididroid/event/meta/KeySignature;->mScale:I

    return v0
.end method

.method public setKey(I)V
    .locals 1

    int-to-byte p1, p1

    .line 43
    iput p1, p0, Lcom/pdrogfer/mididroid/event/meta/KeySignature;->mKey:I

    const/4 v0, -0x7

    if-ge p1, v0, :cond_0

    .line 46
    iput v0, p0, Lcom/pdrogfer/mididroid/event/meta/KeySignature;->mKey:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    if-le p1, v0, :cond_1

    .line 48
    iput v0, p0, Lcom/pdrogfer/mididroid/event/meta/KeySignature;->mKey:I

    :cond_1
    :goto_0
    return-void
.end method

.method public setScale(I)V
    .locals 0

    .line 58
    iput p1, p0, Lcom/pdrogfer/mididroid/event/meta/KeySignature;->mScale:I

    return-void
.end method

.method public writeToFile(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    invoke-super {p0, p1}, Lcom/pdrogfer/mididroid/event/meta/MetaEvent;->writeToFile(Ljava/io/OutputStream;)V

    const/4 v0, 0x2

    .line 77
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 78
    iget v0, p0, Lcom/pdrogfer/mididroid/event/meta/KeySignature;->mKey:I

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 79
    iget v0, p0, Lcom/pdrogfer/mididroid/event/meta/KeySignature;->mScale:I

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method
