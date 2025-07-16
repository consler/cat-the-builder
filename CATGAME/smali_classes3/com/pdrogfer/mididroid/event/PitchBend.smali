.class public Lcom/pdrogfer/mididroid/event/PitchBend;
.super Lcom/pdrogfer/mididroid/event/ChannelEvent;
.source "PitchBend.java"


# direct methods
.method public constructor <init>(JIII)V
    .locals 7

    const/16 v3, 0xe

    move-object v0, p0

    move-wide v1, p1

    move v4, p3

    move v5, p4

    move v6, p5

    .line 23
    invoke-direct/range {v0 .. v6}, Lcom/pdrogfer/mididroid/event/ChannelEvent;-><init>(JIIII)V

    return-void
.end method

.method public constructor <init>(JJIII)V
    .locals 9

    const/16 v5, 0xe

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    .line 28
    invoke-direct/range {v0 .. v8}, Lcom/pdrogfer/mididroid/event/ChannelEvent;-><init>(JJIIII)V

    return-void
.end method


# virtual methods
.method public getBendAmount()I
    .locals 2

    .line 43
    iget v0, p0, Lcom/pdrogfer/mididroid/event/PitchBend;->mValue2:I

    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0x7

    .line 44
    iget v1, p0, Lcom/pdrogfer/mididroid/event/PitchBend;->mValue1:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getLeastSignificantBits()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/pdrogfer/mididroid/event/PitchBend;->mValue1:I

    return v0
.end method

.method public getMostSignificantBits()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/pdrogfer/mididroid/event/PitchBend;->mValue2:I

    return v0
.end method

.method public setBendAmount(I)V
    .locals 1

    and-int/lit16 p1, p1, 0x3fff

    and-int/lit8 v0, p1, 0x7f

    .line 62
    iput v0, p0, Lcom/pdrogfer/mididroid/event/PitchBend;->mValue1:I

    shr-int/lit8 p1, p1, 0x7

    .line 63
    iput p1, p0, Lcom/pdrogfer/mididroid/event/PitchBend;->mValue2:I

    return-void
.end method

.method public setLeastSignificantBits(I)V
    .locals 0

    and-int/lit8 p1, p1, 0x7f

    .line 51
    iput p1, p0, Lcom/pdrogfer/mididroid/event/PitchBend;->mValue1:I

    return-void
.end method

.method public setMostSignificantBits(I)V
    .locals 0

    and-int/lit8 p1, p1, 0x7f

    .line 56
    iput p1, p0, Lcom/pdrogfer/mididroid/event/PitchBend;->mValue2:I

    return-void
.end method
