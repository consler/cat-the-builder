.class public Lcom/pdrogfer/mididroid/event/meta/SmpteOffset;
.super Lcom/pdrogfer/mididroid/event/meta/MetaEvent;
.source "SmpteOffset.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pdrogfer/mididroid/event/meta/SmpteOffset$FrameRate;
    }
.end annotation


# static fields
.field public static final FRAME_RATE_24:I = 0x0

.field public static final FRAME_RATE_25:I = 0x1

.field public static final FRAME_RATE_30:I = 0x3

.field public static final FRAME_RATE_30_DROP:I = 0x2


# instance fields
.field private mFrameRate:Lcom/pdrogfer/mididroid/event/meta/SmpteOffset$FrameRate;

.field private mFrames:I

.field private mHours:I

.field private mMinutes:I

.field private mSeconds:I

.field private mSubFrames:I


# direct methods
.method public constructor <init>(JJLcom/pdrogfer/mididroid/event/meta/SmpteOffset$FrameRate;IIIII)V
    .locals 8

    move-object v7, p0

    const/16 v5, 0x54

    .line 41
    new-instance v6, Lcom/pdrogfer/mididroid/util/VariableLengthInt;

    const/4 v0, 0x5

    invoke-direct {v6, v0}, Lcom/pdrogfer/mididroid/util/VariableLengthInt;-><init>(I)V

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/pdrogfer/mididroid/event/meta/MetaEvent;-><init>(JJILcom/pdrogfer/mididroid/util/VariableLengthInt;)V

    move-object v0, p5

    .line 43
    iput-object v0, v7, Lcom/pdrogfer/mididroid/event/meta/SmpteOffset;->mFrameRate:Lcom/pdrogfer/mididroid/event/meta/SmpteOffset$FrameRate;

    move v0, p6

    .line 44
    iput v0, v7, Lcom/pdrogfer/mididroid/event/meta/SmpteOffset;->mHours:I

    move v0, p7

    .line 45
    iput v0, v7, Lcom/pdrogfer/mididroid/event/meta/SmpteOffset;->mMinutes:I

    move/from16 v0, p8

    .line 46
    iput v0, v7, Lcom/pdrogfer/mididroid/event/meta/SmpteOffset;->mSeconds:I

    move/from16 v0, p9

    .line 47
    iput v0, v7, Lcom/pdrogfer/mididroid/event/meta/SmpteOffset;->mFrames:I

    move/from16 v0, p10

    .line 48
    iput v0, v7, Lcom/pdrogfer/mididroid/event/meta/SmpteOffset;->mSubFrames:I

    return-void
.end method

.method public static parseSmpteOffset(JJLcom/pdrogfer/mididroid/event/meta/MetaEvent$MetaEventData;)Lcom/pdrogfer/mididroid/event/meta/MetaEvent;
    .locals 13

    move-object/from16 v5, p4

    .line 132
    iget-object v0, v5, Lcom/pdrogfer/mididroid/event/meta/MetaEvent$MetaEventData;->length:Lcom/pdrogfer/mididroid/util/VariableLengthInt;

    invoke-virtual {v0}, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->getValue()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 134
    new-instance v6, Lcom/pdrogfer/mididroid/event/meta/GenericMetaEvent;

    move-object v0, v6

    move-wide v1, p0

    move-wide v3, p2

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/pdrogfer/mididroid/event/meta/GenericMetaEvent;-><init>(JJLcom/pdrogfer/mididroid/event/meta/MetaEvent$MetaEventData;)V

    return-object v6

    .line 137
    :cond_0
    iget-object v0, v5, Lcom/pdrogfer/mididroid/event/meta/MetaEvent$MetaEventData;->data:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    shr-int/lit8 v1, v0, 0x5

    .line 140
    invoke-static {v1}, Lcom/pdrogfer/mididroid/event/meta/SmpteOffset$FrameRate;->fromInt(I)Lcom/pdrogfer/mididroid/event/meta/SmpteOffset$FrameRate;

    move-result-object v7

    and-int/lit8 v8, v0, 0x1f

    .line 143
    iget-object v0, v5, Lcom/pdrogfer/mididroid/event/meta/MetaEvent$MetaEventData;->data:[B

    const/4 v1, 0x1

    aget-byte v9, v0, v1

    .line 144
    iget-object v0, v5, Lcom/pdrogfer/mididroid/event/meta/MetaEvent$MetaEventData;->data:[B

    const/4 v1, 0x2

    aget-byte v10, v0, v1

    .line 145
    iget-object v0, v5, Lcom/pdrogfer/mididroid/event/meta/MetaEvent$MetaEventData;->data:[B

    const/4 v1, 0x3

    aget-byte v11, v0, v1

    .line 146
    iget-object v0, v5, Lcom/pdrogfer/mididroid/event/meta/MetaEvent$MetaEventData;->data:[B

    const/4 v1, 0x4

    aget-byte v12, v0, v1

    .line 148
    new-instance v0, Lcom/pdrogfer/mididroid/event/meta/SmpteOffset;

    move-object v2, v0

    move-wide v3, p0

    move-wide v5, p2

    invoke-direct/range {v2 .. v12}, Lcom/pdrogfer/mididroid/event/meta/SmpteOffset;-><init>(JJLcom/pdrogfer/mididroid/event/meta/SmpteOffset$FrameRate;IIIII)V

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/pdrogfer/mididroid/event/MidiEvent;)I
    .locals 7

    .line 182
    iget-wide v0, p0, Lcom/pdrogfer/mididroid/event/meta/SmpteOffset;->mTick:J

    invoke-virtual {p1}, Lcom/pdrogfer/mididroid/event/MidiEvent;->getTick()J

    move-result-wide v2

    cmp-long v0, v0, v2

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 184
    iget-wide v3, p0, Lcom/pdrogfer/mididroid/event/meta/SmpteOffset;->mTick:J

    invoke-virtual {p1}, Lcom/pdrogfer/mididroid/event/MidiEvent;->getTick()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/pdrogfer/mididroid/event/meta/SmpteOffset;->mDelta:Lcom/pdrogfer/mididroid/util/VariableLengthInt;

    invoke-virtual {v0}, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->getValue()I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {p1}, Lcom/pdrogfer/mididroid/event/MidiEvent;->getDelta()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-eqz v0, :cond_3

    .line 188
    iget-object v0, p0, Lcom/pdrogfer/mididroid/event/meta/SmpteOffset;->mDelta:Lcom/pdrogfer/mididroid/util/VariableLengthInt;

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

    .line 191
    :cond_3
    instance-of p1, p1, Lcom/pdrogfer/mididroid/event/meta/SmpteOffset;

    if-nez p1, :cond_4

    return v2

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 25
    check-cast p1, Lcom/pdrogfer/mididroid/event/MidiEvent;

    invoke-virtual {p0, p1}, Lcom/pdrogfer/mididroid/event/meta/SmpteOffset;->compareTo(Lcom/pdrogfer/mididroid/event/MidiEvent;)I

    move-result p1

    return p1
.end method

.method protected getEventSize()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public getFrameRate()Lcom/pdrogfer/mididroid/event/meta/SmpteOffset$FrameRate;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/pdrogfer/mididroid/event/meta/SmpteOffset;->mFrameRate:Lcom/pdrogfer/mididroid/event/meta/SmpteOffset$FrameRate;

    return-object v0
.end method

.method public getFrames()I
    .locals 1

    .line 98
    iget v0, p0, Lcom/pdrogfer/mididroid/event/meta/SmpteOffset;->mFrames:I

    return v0
.end method

.method public getHours()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/pdrogfer/mididroid/event/meta/SmpteOffset;->mHours:I

    return v0
.end method

.method public getMinutes()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/pdrogfer/mididroid/event/meta/SmpteOffset;->mMinutes:I

    return v0
.end method

.method public getSeconds()I
    .locals 1

    .line 88
    iget v0, p0, Lcom/pdrogfer/mididroid/event/meta/SmpteOffset;->mSeconds:I

    return v0
.end method

.method public getSubFrames()I
    .locals 1

    .line 108
    iget v0, p0, Lcom/pdrogfer/mididroid/event/meta/SmpteOffset;->mSubFrames:I

    return v0
.end method

.method public setFrameRate(Lcom/pdrogfer/mididroid/event/meta/SmpteOffset$FrameRate;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/pdrogfer/mididroid/event/meta/SmpteOffset;->mFrameRate:Lcom/pdrogfer/mididroid/event/meta/SmpteOffset$FrameRate;

    return-void
.end method

.method public setFrames(I)V
    .locals 0

    .line 93
    iput p1, p0, Lcom/pdrogfer/mididroid/event/meta/SmpteOffset;->mFrames:I

    return-void
.end method

.method public setHours(I)V
    .locals 0

    .line 63
    iput p1, p0, Lcom/pdrogfer/mididroid/event/meta/SmpteOffset;->mHours:I

    return-void
.end method

.method public setMinutes(I)V
    .locals 0

    .line 73
    iput p1, p0, Lcom/pdrogfer/mididroid/event/meta/SmpteOffset;->mMinutes:I

    return-void
.end method

.method public setSeconds(I)V
    .locals 0

    .line 83
    iput p1, p0, Lcom/pdrogfer/mididroid/event/meta/SmpteOffset;->mSeconds:I

    return-void
.end method

.method public setSubFrames(I)V
    .locals 0

    .line 103
    iput p1, p0, Lcom/pdrogfer/mididroid/event/meta/SmpteOffset;->mSubFrames:I

    return-void
.end method

.method public writeToFile(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    invoke-super {p0, p1}, Lcom/pdrogfer/mididroid/event/meta/MetaEvent;->writeToFile(Ljava/io/OutputStream;)V

    const/4 v0, 0x5

    .line 122
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 123
    iget v0, p0, Lcom/pdrogfer/mididroid/event/meta/SmpteOffset;->mHours:I

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 124
    iget v0, p0, Lcom/pdrogfer/mididroid/event/meta/SmpteOffset;->mMinutes:I

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 125
    iget v0, p0, Lcom/pdrogfer/mididroid/event/meta/SmpteOffset;->mSeconds:I

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 126
    iget v0, p0, Lcom/pdrogfer/mididroid/event/meta/SmpteOffset;->mFrames:I

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 127
    iget v0, p0, Lcom/pdrogfer/mididroid/event/meta/SmpteOffset;->mSubFrames:I

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method
