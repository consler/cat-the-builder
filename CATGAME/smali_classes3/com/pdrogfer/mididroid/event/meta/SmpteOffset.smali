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
    .param p1, "tick"    # J
    .param p3, "delta"    # J
    .param p5, "fps"    # Lcom/pdrogfer/mididroid/event/meta/SmpteOffset$FrameRate;
    .param p6, "hour"    # I
    .param p7, "min"    # I
    .param p8, "sec"    # I
    .param p9, "fr"    # I
    .param p10, "subfr"    # I

    .line 41
    move-object v7, p0

    new-instance v6, Lcom/pdrogfer/mididroid/util/VariableLengthInt;

    const/4 v0, 0x5

    invoke-direct {v6, v0}, Lcom/pdrogfer/mididroid/util/VariableLengthInt;-><init>(I)V

    const/16 v5, 0x54

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/pdrogfer/mididroid/event/meta/MetaEvent;-><init>(JJILcom/pdrogfer/mididroid/util/VariableLengthInt;)V

    .line 43
    move-object v0, p5

    iput-object v0, v7, Lcom/pdrogfer/mididroid/event/meta/SmpteOffset;->mFrameRate:Lcom/pdrogfer/mididroid/event/meta/SmpteOffset$FrameRate;

    .line 44
    move v1, p6

    iput v1, v7, Lcom/pdrogfer/mididroid/event/meta/SmpteOffset;->mHours:I

    .line 45
    move v2, p7

    iput v2, v7, Lcom/pdrogfer/mididroid/event/meta/SmpteOffset;->mMinutes:I

    .line 46
    move/from16 v3, p8

    iput v3, v7, Lcom/pdrogfer/mididroid/event/meta/SmpteOffset;->mSeconds:I

    .line 47
    move/from16 v4, p9

    iput v4, v7, Lcom/pdrogfer/mididroid/event/meta/SmpteOffset;->mFrames:I

    .line 48
    move/from16 v5, p10

    iput v5, v7, Lcom/pdrogfer/mididroid/event/meta/SmpteOffset;->mSubFrames:I

    .line 49
    return-void
.end method

.method public static parseSmpteOffset(JJLcom/pdrogfer/mididroid/event/meta/MetaEvent$MetaEventData;)Lcom/pdrogfer/mididroid/event/meta/MetaEvent;
    .locals 21
    .param p0, "tick"    # J
    .param p2, "delta"    # J
    .param p4, "info"    # Lcom/pdrogfer/mididroid/event/meta/MetaEvent$MetaEventData;

    .line 132
    move-object/from16 v6, p4

    iget-object v0, v6, Lcom/pdrogfer/mididroid/event/meta/MetaEvent$MetaEventData;->length:Lcom/pdrogfer/mididroid/util/VariableLengthInt;

    invoke-virtual {v0}, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->getValue()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 134
    new-instance v7, Lcom/pdrogfer/mididroid/event/meta/GenericMetaEvent;

    move-object v0, v7

    move-wide/from16 v1, p0

    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/pdrogfer/mididroid/event/meta/GenericMetaEvent;-><init>(JJLcom/pdrogfer/mididroid/event/meta/MetaEvent$MetaEventData;)V

    return-object v7

    .line 137
    :cond_0
    iget-object v0, v6, Lcom/pdrogfer/mididroid/event/meta/MetaEvent$MetaEventData;->data:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    .line 139
    .local v0, "rrHours":I
    shr-int/lit8 v1, v0, 0x5

    .line 140
    .local v1, "rr":I
    invoke-static {v1}, Lcom/pdrogfer/mididroid/event/meta/SmpteOffset$FrameRate;->fromInt(I)Lcom/pdrogfer/mididroid/event/meta/SmpteOffset$FrameRate;

    move-result-object v2

    .line 141
    .local v2, "fps":Lcom/pdrogfer/mididroid/event/meta/SmpteOffset$FrameRate;
    and-int/lit8 v3, v0, 0x1f

    .line 143
    .local v3, "hour":I
    iget-object v4, v6, Lcom/pdrogfer/mididroid/event/meta/MetaEvent$MetaEventData;->data:[B

    const/4 v5, 0x1

    aget-byte v4, v4, v5

    .line 144
    .local v4, "min":I
    iget-object v5, v6, Lcom/pdrogfer/mididroid/event/meta/MetaEvent$MetaEventData;->data:[B

    const/4 v7, 0x2

    aget-byte v5, v5, v7

    .line 145
    .local v5, "sec":I
    iget-object v7, v6, Lcom/pdrogfer/mididroid/event/meta/MetaEvent$MetaEventData;->data:[B

    const/4 v8, 0x3

    aget-byte v18, v7, v8

    .line 146
    .local v18, "frm":I
    iget-object v7, v6, Lcom/pdrogfer/mididroid/event/meta/MetaEvent$MetaEventData;->data:[B

    const/4 v8, 0x4

    aget-byte v19, v7, v8

    .line 148
    .local v19, "sub":I
    new-instance v20, Lcom/pdrogfer/mididroid/event/meta/SmpteOffset;

    move-object/from16 v7, v20

    move-wide/from16 v8, p0

    move-wide/from16 v10, p2

    move-object v12, v2

    move v13, v3

    move v14, v4

    move v15, v5

    move/from16 v16, v18

    move/from16 v17, v19

    invoke-direct/range {v7 .. v17}, Lcom/pdrogfer/mididroid/event/meta/SmpteOffset;-><init>(JJLcom/pdrogfer/mididroid/event/meta/SmpteOffset$FrameRate;IIIII)V

    return-object v20
.end method


# virtual methods
.method public compareTo(Lcom/pdrogfer/mididroid/event/MidiEvent;)I
    .locals 7
    .param p1, "other"    # Lcom/pdrogfer/mididroid/event/MidiEvent;

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

    cmp-long v0, v3, v5

    if-gez v0, :cond_0

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

    cmp-long v0, v3, v5

    if-gez v0, :cond_2

    move v1, v2

    :cond_2
    return v1

    .line 191
    :cond_3
    instance-of v0, p1, Lcom/pdrogfer/mididroid/event/meta/SmpteOffset;

    if-nez v0, :cond_4

    .line 193
    return v2

    .line 196
    :cond_4
    const/4 v0, 0x0

    return v0
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

    .line 114
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
    .param p1, "fps"    # Lcom/pdrogfer/mididroid/event/meta/SmpteOffset$FrameRate;

    .line 53
    iput-object p1, p0, Lcom/pdrogfer/mididroid/event/meta/SmpteOffset;->mFrameRate:Lcom/pdrogfer/mididroid/event/meta/SmpteOffset$FrameRate;

    .line 54
    return-void
.end method

.method public setFrames(I)V
    .locals 0
    .param p1, "f"    # I

    .line 93
    iput p1, p0, Lcom/pdrogfer/mididroid/event/meta/SmpteOffset;->mFrames:I

    .line 94
    return-void
.end method

.method public setHours(I)V
    .locals 0
    .param p1, "h"    # I

    .line 63
    iput p1, p0, Lcom/pdrogfer/mididroid/event/meta/SmpteOffset;->mHours:I

    .line 64
    return-void
.end method

.method public setMinutes(I)V
    .locals 0
    .param p1, "m"    # I

    .line 73
    iput p1, p0, Lcom/pdrogfer/mididroid/event/meta/SmpteOffset;->mMinutes:I

    .line 74
    return-void
.end method

.method public setSeconds(I)V
    .locals 0
    .param p1, "s"    # I

    .line 83
    iput p1, p0, Lcom/pdrogfer/mididroid/event/meta/SmpteOffset;->mSeconds:I

    .line 84
    return-void
.end method

.method public setSubFrames(I)V
    .locals 0
    .param p1, "s"    # I

    .line 103
    iput p1, p0, Lcom/pdrogfer/mididroid/event/meta/SmpteOffset;->mSubFrames:I

    .line 104
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

    .line 120
    invoke-super {p0, p1}, Lcom/pdrogfer/mididroid/event/meta/MetaEvent;->writeToFile(Ljava/io/OutputStream;)V

    .line 122
    const/4 v0, 0x5

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

    .line 128
    return-void
.end method
