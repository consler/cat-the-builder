.class public Lcom/pdrogfer/mididroid/event/ChannelAftertouch;
.super Lcom/pdrogfer/mididroid/event/ChannelEvent;
.source "ChannelAftertouch.java"


# direct methods
.method public constructor <init>(JII)V
    .locals 7
    .param p1, "tick"    # J
    .param p3, "channel"    # I
    .param p4, "amount"    # I

    .line 23
    const/16 v3, 0xd

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/pdrogfer/mididroid/event/ChannelEvent;-><init>(JIIII)V

    .line 24
    return-void
.end method

.method public constructor <init>(JJII)V
    .locals 9
    .param p1, "tick"    # J
    .param p3, "delta"    # J
    .param p5, "channel"    # I
    .param p6, "amount"    # I

    .line 28
    const/16 v5, 0xd

    const/4 v8, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/pdrogfer/mididroid/event/ChannelEvent;-><init>(JJIIII)V

    .line 29
    return-void
.end method


# virtual methods
.method public getAmount()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/pdrogfer/mididroid/event/ChannelAftertouch;->mValue1:I

    return v0
.end method

.method public setAmount(I)V
    .locals 0
    .param p1, "p"    # I

    .line 38
    iput p1, p0, Lcom/pdrogfer/mididroid/event/ChannelAftertouch;->mValue1:I

    .line 39
    return-void
.end method
