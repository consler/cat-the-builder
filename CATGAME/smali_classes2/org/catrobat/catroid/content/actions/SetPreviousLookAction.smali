.class public final Lorg/catrobat/catroid/content/actions/SetPreviousLookAction;
.super Lorg/catrobat/catroid/content/actions/SetRelativeLookAction;
.source "SetPreviousLookAction.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lorg/catrobat/catroid/content/actions/SetPreviousLookAction;",
        "Lorg/catrobat/catroid/content/actions/SetRelativeLookAction;",
        "()V",
        "change",
        "",
        "getChange",
        "()I",
        "setChange",
        "(I)V",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private change:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/SetRelativeLookAction;-><init>()V

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lorg/catrobat/catroid/content/actions/SetPreviousLookAction;->change:I

    return-void
.end method


# virtual methods
.method public getChange()I
    .locals 1

    .line 26
    iget v0, p0, Lorg/catrobat/catroid/content/actions/SetPreviousLookAction;->change:I

    return v0
.end method

.method public setChange(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 26
    iput p1, p0, Lorg/catrobat/catroid/content/actions/SetPreviousLookAction;->change:I

    return-void
.end method
