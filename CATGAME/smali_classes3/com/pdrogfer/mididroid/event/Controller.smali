.class public Lcom/pdrogfer/mididroid/event/Controller;
.super Lcom/pdrogfer/mididroid/event/ChannelEvent;
.source "Controller.java"


# direct methods
.method public constructor <init>(JIII)V
    .locals 7

    const/16 v3, 0xb

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

    const/16 v5, 0xb

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
.method public getControllerType()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/pdrogfer/mididroid/event/Controller;->mValue1:I

    return v0
.end method

.method public getValue()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/pdrogfer/mididroid/event/Controller;->mValue2:I

    return v0
.end method

.method public setControllerType(I)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/pdrogfer/mididroid/event/Controller;->mValue1:I

    return-void
.end method

.method public setValue(I)V
    .locals 0

    .line 48
    iput p1, p0, Lcom/pdrogfer/mididroid/event/Controller;->mValue2:I

    return-void
.end method
