.class public Lcom/pdrogfer/mididroid/event/ProgramChange;
.super Lcom/pdrogfer/mididroid/event/ChannelEvent;
.source "ProgramChange.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pdrogfer/mididroid/event/ProgramChange$MidiProgram;
    }
.end annotation


# direct methods
.method public constructor <init>(JII)V
    .locals 7

    const/16 v3, 0xc

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v4, p3

    move v5, p4

    .line 23
    invoke-direct/range {v0 .. v6}, Lcom/pdrogfer/mididroid/event/ChannelEvent;-><init>(JIIII)V

    return-void
.end method

.method public constructor <init>(JJII)V
    .locals 9

    const/16 v5, 0xc

    const/4 v8, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v6, p5

    move v7, p6

    .line 28
    invoke-direct/range {v0 .. v8}, Lcom/pdrogfer/mididroid/event/ChannelEvent;-><init>(JJIIII)V

    return-void
.end method


# virtual methods
.method public getProgramNumber()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/pdrogfer/mididroid/event/ProgramChange;->mValue1:I

    return v0
.end method

.method public setProgramNumber(I)V
    .locals 0

    .line 38
    iput p1, p0, Lcom/pdrogfer/mididroid/event/ProgramChange;->mValue1:I

    return-void
.end method
