.class public Lcom/pdrogfer/mididroid/event/PitchBend;
.super Lcom/pdrogfer/mididroid/event/ChannelEvent;
.source "PitchBend.java"


# direct methods
.method public constructor <init>(JIII)V
    .locals 7
    .param p1, "tick"    # J
    .param p3, "channel"    # I
    .param p4, "lsb"    # I
    .param p5, "msb"    # I

    .line 23
    const/16 v3, 0xe

    move-object v0, p0

    move-wide v1, p1

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/pdrogfer/mididroid/event/ChannelEvent;-><init>(JIIII)V

    .line 24
    return-void
.end method

.method public constructor <init>(JJIII)V
    .locals 9
    .param p1, "tick"    # J
    .param p3, "delta"    # J
    .param p5, "channel"    # I
    .param p6, "lsb"    # I
    .param p7, "msb"    # I

    .line 28
    const/16 v5, 0xe

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/pdrogfer/mididroid/event/ChannelEvent;-><init>(JJIIII)V

    .line 29
    return-void
.end method


# virtual methods
.method public getBendAmount()I
    .locals 3

    .line 43
    iget v0, p0, Lcom/pdrogfer/mididroid/event/PitchBend;->mValue2:I

    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0x7

    .line 44
    .local v0, "y":I
    iget v1, p0, Lcom/pdrogfer/mididroid/event/PitchBend;->mValue1:I

    .line 46
    .local v1, "x":I
    add-int v2, v0, v1

    return v2
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
    .param p1, "amount"    # I

    .line 61
    and-int/lit16 p1, p1, 0x3fff

    .line 62
    and-int/lit8 v0, p1, 0x7f

    iput v0, p0, Lcom/pdrogfer/mididroid/event/PitchBend;->mValue1:I

    .line 63
    shr-int/lit8 v0, p1, 0x7

    iput v0, p0, Lcom/pdrogfer/mididroid/event/PitchBend;->mValue2:I

    .line 64
    return-void
.end method

.method public setLeastSignificantBits(I)V
    .locals 1
    .param p1, "p"    # I

    .line 51
    and-int/lit8 v0, p1, 0x7f

    iput v0, p0, Lcom/pdrogfer/mididroid/event/PitchBend;->mValue1:I

    .line 52
    return-void
.end method

.method public setMostSignificantBits(I)V
    .locals 1
    .param p1, "p"    # I

    .line 56
    and-int/lit8 v0, p1, 0x7f

    iput v0, p0, Lcom/pdrogfer/mididroid/event/PitchBend;->mValue2:I

    .line 57
    return-void
.end method
