.class public abstract Lorg/catrobat/catroid/content/actions/AsynchronousAction;
.super Lcom/badlogic/gdx/scenes/scene2d/Action;
.source "AsynchronousAction.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008&\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0008\u0010\u0008\u001a\u00020\tH&J\u0008\u0010\n\u001a\u00020\u0004H&J\u0008\u0010\u000b\u001a\u00020\tH\u0016R\u0012\u0010\u0003\u001a\u00020\u00048\u0004@\u0004X\u0085\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lorg/catrobat/catroid/content/actions/AsynchronousAction;",
        "Lcom/badlogic/gdx/scenes/scene2d/Action;",
        "()V",
        "initialized",
        "",
        "act",
        "delta",
        "",
        "initialize",
        "",
        "isFinished",
        "restart",
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
.field protected initialized:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;-><init>()V

    return-void
.end method


# virtual methods
.method public act(F)Z
    .locals 1
    .param p1, "delta"    # F

    .line 33
    iget-boolean v0, p0, Lorg/catrobat/catroid/content/actions/AsynchronousAction;->initialized:Z

    if-nez v0, :cond_0

    .line 34
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/AsynchronousAction;->initialize()V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/catroid/content/actions/AsynchronousAction;->initialized:Z

    .line 37
    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/AsynchronousAction;->isFinished()Z

    move-result v0

    return v0
.end method

.method public abstract initialize()V
.end method

.method public abstract isFinished()Z
.end method

.method public restart()V
    .locals 1

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/content/actions/AsynchronousAction;->initialized:Z

    .line 46
    return-void
.end method
