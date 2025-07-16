.class public Lcom/pdrogfer/mididroid/event/meta/TimeSignature;
.super Lcom/pdrogfer/mididroid/event/meta/MetaEvent;
.source "TimeSignature.java"


# static fields
.field public static final DEFAULT_DIVISION:I = 0x8

.field public static final DEFAULT_METER:I = 0x18

.field public static final METER_EIGHTH:I = 0xc

.field public static final METER_HALF:I = 0x30

.field public static final METER_QUARTER:I = 0x18

.field public static final METER_WHOLE:I = 0x60


# instance fields
.field private mDenominator:I

.field private mDivision:I

.field private mMeter:I

.field private mNumerator:I


# direct methods
.method public constructor <init>()V
    .locals 9

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x4

    const/16 v7, 0x18

    const/16 v8, 0x8

    move-object v0, p0

    .line 42
    invoke-direct/range {v0 .. v8}, Lcom/pdrogfer/mididroid/event/meta/TimeSignature;-><init>(JJIIII)V

    return-void
.end method

.method public constructor <init>(JJIIII)V
    .locals 7

    const/16 v5, 0x58

    .line 47
    new-instance v6, Lcom/pdrogfer/mididroid/util/VariableLengthInt;

    const/4 v0, 0x4

    invoke-direct {v6, v0}, Lcom/pdrogfer/mididroid/util/VariableLengthInt;-><init>(I)V

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/pdrogfer/mididroid/event/meta/MetaEvent;-><init>(JJILcom/pdrogfer/mididroid/util/VariableLengthInt;)V

    .line 49
    invoke-virtual {p0, p5, p6, p7, p8}, Lcom/pdrogfer/mididroid/event/meta/TimeSignature;->setTimeSignature(IIII)V

    return-void
.end method

.method private log2(I)I
    .locals 2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v1, 0x4

    if-eq p1, v1, :cond_3

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    const/16 v0, 0x10

    if-eq p1, v0, :cond_1

    const/16 v0, 0x20

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x5

    return p1

    :cond_1
    return v1

    :cond_2
    const/4 p1, 0x3

    return p1

    :cond_3
    return v0

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method public static parseTimeSignature(JJLcom/pdrogfer/mididroid/event/meta/MetaEvent$MetaEventData;)Lcom/pdrogfer/mididroid/event/meta/MetaEvent;
    .locals 11

    .line 105
    iget-object v0, p4, Lcom/pdrogfer/mididroid/event/meta/MetaEvent$MetaEventData;->length:Lcom/pdrogfer/mididroid/util/VariableLengthInt;

    invoke-virtual {v0}, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->getValue()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 107
    new-instance v0, Lcom/pdrogfer/mididroid/event/meta/GenericMetaEvent;

    move-object v2, v0

    move-wide v3, p0

    move-wide v5, p2

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/pdrogfer/mididroid/event/meta/GenericMetaEvent;-><init>(JJLcom/pdrogfer/mididroid/event/meta/MetaEvent$MetaEventData;)V

    return-object v0

    .line 110
    :cond_0
    iget-object v0, p4, Lcom/pdrogfer/mididroid/event/meta/MetaEvent$MetaEventData;->data:[B

    const/4 v1, 0x0

    aget-byte v7, v0, v1

    .line 111
    iget-object v0, p4, Lcom/pdrogfer/mididroid/event/meta/MetaEvent$MetaEventData;->data:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    .line 112
    iget-object v1, p4, Lcom/pdrogfer/mididroid/event/meta/MetaEvent$MetaEventData;->data:[B

    const/4 v2, 0x2

    aget-byte v9, v1, v2

    .line 113
    iget-object p4, p4, Lcom/pdrogfer/mididroid/event/meta/MetaEvent$MetaEventData;->data:[B

    const/4 v1, 0x3

    aget-byte v10, p4, v1

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    int-to-double v3, v0

    .line 115
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v8, v0

    .line 117
    new-instance p4, Lcom/pdrogfer/mididroid/event/meta/TimeSignature;

    move-object v2, p4

    move-wide v3, p0

    move-wide v5, p2

    invoke-direct/range {v2 .. v10}, Lcom/pdrogfer/mididroid/event/meta/TimeSignature;-><init>(JJIIII)V

    return-object p4
.end method


# virtual methods
.method public compareTo(Lcom/pdrogfer/mididroid/event/MidiEvent;)I
    .locals 7

    .line 147
    iget-wide v0, p0, Lcom/pdrogfer/mididroid/event/meta/TimeSignature;->mTick:J

    invoke-virtual {p1}, Lcom/pdrogfer/mididroid/event/MidiEvent;->getTick()J

    move-result-wide v2

    cmp-long v0, v0, v2

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 149
    iget-wide v3, p0, Lcom/pdrogfer/mididroid/event/meta/TimeSignature;->mTick:J

    invoke-virtual {p1}, Lcom/pdrogfer/mididroid/event/MidiEvent;->getTick()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/pdrogfer/mididroid/event/meta/TimeSignature;->mDelta:Lcom/pdrogfer/mididroid/util/VariableLengthInt;

    invoke-virtual {v0}, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->getValue()I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {p1}, Lcom/pdrogfer/mididroid/event/MidiEvent;->getDelta()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-eqz v0, :cond_3

    .line 153
    iget-object v0, p0, Lcom/pdrogfer/mididroid/event/meta/TimeSignature;->mDelta:Lcom/pdrogfer/mididroid/util/VariableLengthInt;

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

    .line 156
    :cond_3
    instance-of v0, p1, Lcom/pdrogfer/mididroid/event/meta/TimeSignature;

    if-nez v0, :cond_4

    return v2

    .line 161
    :cond_4
    check-cast p1, Lcom/pdrogfer/mididroid/event/meta/TimeSignature;

    .line 163
    iget v0, p0, Lcom/pdrogfer/mididroid/event/meta/TimeSignature;->mNumerator:I

    iget v3, p1, Lcom/pdrogfer/mididroid/event/meta/TimeSignature;->mNumerator:I

    if-eq v0, v3, :cond_6

    if-ge v0, v3, :cond_5

    goto :goto_1

    :cond_5
    move v1, v2

    :goto_1
    return v1

    .line 167
    :cond_6
    iget v0, p0, Lcom/pdrogfer/mididroid/event/meta/TimeSignature;->mDenominator:I

    iget p1, p1, Lcom/pdrogfer/mididroid/event/meta/TimeSignature;->mDenominator:I

    if-eq v0, p1, :cond_8

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

    invoke-virtual {p0, p1}, Lcom/pdrogfer/mididroid/event/meta/TimeSignature;->compareTo(Lcom/pdrogfer/mididroid/event/MidiEvent;)I

    move-result p1

    return p1
.end method

.method public getDenominatorValue()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/pdrogfer/mididroid/event/meta/TimeSignature;->mDenominator:I

    return v0
.end method

.method public getDivision()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/pdrogfer/mididroid/event/meta/TimeSignature;->mDivision:I

    return v0
.end method

.method protected getEventSize()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public getMeter()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/pdrogfer/mididroid/event/meta/TimeSignature;->mMeter:I

    return v0
.end method

.method public getNumerator()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/pdrogfer/mididroid/event/meta/TimeSignature;->mNumerator:I

    return v0
.end method

.method public getRealDenominator()I
    .locals 4

    .line 72
    iget v0, p0, Lcom/pdrogfer/mididroid/event/meta/TimeSignature;->mDenominator:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public setTimeSignature(IIII)V
    .locals 0

    .line 54
    iput p1, p0, Lcom/pdrogfer/mididroid/event/meta/TimeSignature;->mNumerator:I

    .line 55
    invoke-direct {p0, p2}, Lcom/pdrogfer/mididroid/event/meta/TimeSignature;->log2(I)I

    move-result p1

    iput p1, p0, Lcom/pdrogfer/mididroid/event/meta/TimeSignature;->mDenominator:I

    .line 56
    iput p3, p0, Lcom/pdrogfer/mididroid/event/meta/TimeSignature;->mMeter:I

    .line 57
    iput p4, p0, Lcom/pdrogfer/mididroid/event/meta/TimeSignature;->mDivision:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/pdrogfer/mididroid/event/meta/MetaEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/pdrogfer/mididroid/event/meta/TimeSignature;->mNumerator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/pdrogfer/mididroid/event/meta/TimeSignature;->getRealDenominator()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    .line 94
    invoke-super {p0, p1}, Lcom/pdrogfer/mididroid/event/meta/MetaEvent;->writeToFile(Ljava/io/OutputStream;)V

    const/4 v0, 0x4

    .line 96
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 97
    iget v0, p0, Lcom/pdrogfer/mididroid/event/meta/TimeSignature;->mNumerator:I

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 98
    iget v0, p0, Lcom/pdrogfer/mididroid/event/meta/TimeSignature;->mDenominator:I

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 99
    iget v0, p0, Lcom/pdrogfer/mididroid/event/meta/TimeSignature;->mMeter:I

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 100
    iget v0, p0, Lcom/pdrogfer/mididroid/event/meta/TimeSignature;->mDivision:I

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method
