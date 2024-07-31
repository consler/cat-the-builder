.class public final Lorg/catrobat/catroid/content/actions/FlashAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "FlashAction.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0014R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\r"
    }
    d2 = {
        "Lorg/catrobat/catroid/content/actions/FlashAction;",
        "Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;",
        "()V",
        "flashOn",
        "",
        "getFlashOn",
        "()Z",
        "setFlashOn",
        "(Z)V",
        "update",
        "",
        "percent",
        "",
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
.field private flashOn:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    return-void
.end method


# virtual methods
.method public final getFlashOn()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lorg/catrobat/catroid/content/actions/FlashAction;->flashOn:Z

    return v0
.end method

.method public final setFlashOn(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 29
    iput-boolean p1, p0, Lorg/catrobat/catroid/content/actions/FlashAction;->flashOn:Z

    return-void
.end method

.method protected update(F)V
    .locals 1
    .param p1, "percent"    # F

    .line 32
    iget-boolean v0, p0, Lorg/catrobat/catroid/content/actions/FlashAction;->flashOn:Z

    if-eqz v0, :cond_0

    .line 33
    invoke-static {}, Lorg/catrobat/catroid/stage/StageActivity;->getActiveCameraManager()Lorg/catrobat/catroid/camera/CameraManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/catrobat/catroid/camera/CameraManager;->enableFlash()V

    goto :goto_0

    .line 35
    :cond_0
    invoke-static {}, Lorg/catrobat/catroid/stage/StageActivity;->getActiveCameraManager()Lorg/catrobat/catroid/camera/CameraManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/catrobat/catroid/camera/CameraManager;->disableFlash()V

    .line 36
    :cond_1
    :goto_0
    nop

    .line 37
    return-void
.end method
