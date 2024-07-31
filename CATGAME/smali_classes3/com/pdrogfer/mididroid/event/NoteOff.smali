.class public Lcom/pdrogfer/mididroid/event/NoteOff;
.super Lcom/pdrogfer/mididroid/event/ChannelEvent;
.source "NoteOff.java"


# direct methods
.method public constructor <init>(JIII)V
    .locals 7
    .param p1, "tick"    # J
    .param p3, "channel"    # I
    .param p4, "note"    # I
    .param p5, "velocity"    # I

    .line 23
    const/16 v3, 0x8

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
    .param p6, "note"    # I
    .param p7, "velocity"    # I

    .line 28
    const/16 v5, 0x8

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
.method public getNoteValue()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/pdrogfer/mididroid/event/NoteOff;->mValue1:I

    return v0
.end method

.method public getVelocity()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/pdrogfer/mididroid/event/NoteOff;->mValue2:I

    return v0
.end method

.method public setNoteValue(I)V
    .locals 0
    .param p1, "p"    # I

    .line 43
    iput p1, p0, Lcom/pdrogfer/mididroid/event/NoteOff;->mValue1:I

    .line 44
    return-void
.end method

.method public setVelocity(I)V
    .locals 0
    .param p1, "v"    # I

    .line 48
    iput p1, p0, Lcom/pdrogfer/mididroid/event/NoteOff;->mValue2:I

    .line 49
    return-void
.end method
