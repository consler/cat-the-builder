.class public final Lorg/catrobat/catroid/content/actions/SetCameraFocusPointAction;
.super Lcom/badlogic/gdx/scenes/scene2d/Action;
.source "SetCameraFocusPointAction.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0016R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0006\"\u0004\u0008\u0017\u0010\u0008\u00a8\u0006\u001c"
    }
    d2 = {
        "Lorg/catrobat/catroid/content/actions/SetCameraFocusPointAction;",
        "Lcom/badlogic/gdx/scenes/scene2d/Action;",
        "()V",
        "horizontal",
        "Lorg/catrobat/catroid/formulaeditor/Formula;",
        "getHorizontal",
        "()Lorg/catrobat/catroid/formulaeditor/Formula;",
        "setHorizontal",
        "(Lorg/catrobat/catroid/formulaeditor/Formula;)V",
        "scope",
        "Lorg/catrobat/catroid/content/Scope;",
        "getScope",
        "()Lorg/catrobat/catroid/content/Scope;",
        "setScope",
        "(Lorg/catrobat/catroid/content/Scope;)V",
        "sprite",
        "Lorg/catrobat/catroid/content/Sprite;",
        "getSprite",
        "()Lorg/catrobat/catroid/content/Sprite;",
        "setSprite",
        "(Lorg/catrobat/catroid/content/Sprite;)V",
        "vertical",
        "getVertical",
        "setVertical",
        "act",
        "",
        "delta",
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
.field private horizontal:Lorg/catrobat/catroid/formulaeditor/Formula;

.field private scope:Lorg/catrobat/catroid/content/Scope;

.field private sprite:Lorg/catrobat/catroid/content/Sprite;

.field private vertical:Lorg/catrobat/catroid/formulaeditor/Formula;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;-><init>()V

    return-void
.end method


# virtual methods
.method public act(F)Z
    .locals 4
    .param p1, "delta"    # F

    .line 38
    nop

    .line 39
    sget-object v0, Lorg/catrobat/catroid/stage/StageActivity;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    iget-object v0, v0, Lorg/catrobat/catroid/stage/StageListener;->cameraPositioner:Lorg/catrobat/catroid/stage/CameraPositioner;

    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/SetCameraFocusPointAction;->horizontal:Lorg/catrobat/catroid/formulaeditor/Formula;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v3, p0, Lorg/catrobat/catroid/content/actions/SetCameraFocusPointAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v1, v3}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretFloat(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/stage/CameraPositioner;->setHorizontalFlex(F)V

    .line 40
    nop

    .line 41
    sget-object v0, Lorg/catrobat/catroid/stage/StageActivity;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    iget-object v0, v0, Lorg/catrobat/catroid/stage/StageListener;->cameraPositioner:Lorg/catrobat/catroid/stage/CameraPositioner;

    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/SetCameraFocusPointAction;->vertical:Lorg/catrobat/catroid/formulaeditor/Formula;

    if-eqz v1, :cond_1

    iget-object v3, p0, Lorg/catrobat/catroid/content/actions/SetCameraFocusPointAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v1, v3}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretFloat(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    :cond_1
    invoke-virtual {v0, v2}, Lorg/catrobat/catroid/stage/CameraPositioner;->setVerticalFlex(F)V

    .line 42
    sget-object v0, Lorg/catrobat/catroid/stage/StageActivity;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    iget-object v0, v0, Lorg/catrobat/catroid/stage/StageListener;->cameraPositioner:Lorg/catrobat/catroid/stage/CameraPositioner;

    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/SetCameraFocusPointAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/stage/CameraPositioner;->setSpriteToFocusOn(Lorg/catrobat/catroid/content/Sprite;)V

    .line 43
    const/4 v0, 0x1

    return v0
.end method

.method public final getHorizontal()Lorg/catrobat/catroid/formulaeditor/Formula;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/SetCameraFocusPointAction;->horizontal:Lorg/catrobat/catroid/formulaeditor/Formula;

    return-object v0
.end method

.method public final getScope()Lorg/catrobat/catroid/content/Scope;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/SetCameraFocusPointAction;->scope:Lorg/catrobat/catroid/content/Scope;

    return-object v0
.end method

.method public final getSprite()Lorg/catrobat/catroid/content/Sprite;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/SetCameraFocusPointAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    return-object v0
.end method

.method public final getVertical()Lorg/catrobat/catroid/formulaeditor/Formula;
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/SetCameraFocusPointAction;->vertical:Lorg/catrobat/catroid/formulaeditor/Formula;

    return-object v0
.end method

.method public final setHorizontal(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 34
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/SetCameraFocusPointAction;->horizontal:Lorg/catrobat/catroid/formulaeditor/Formula;

    return-void
.end method

.method public final setScope(Lorg/catrobat/catroid/content/Scope;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/content/Scope;

    .line 33
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/SetCameraFocusPointAction;->scope:Lorg/catrobat/catroid/content/Scope;

    return-void
.end method

.method public final setSprite(Lorg/catrobat/catroid/content/Sprite;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/content/Sprite;

    .line 32
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/SetCameraFocusPointAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    return-void
.end method

.method public final setVertical(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 35
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/SetCameraFocusPointAction;->vertical:Lorg/catrobat/catroid/formulaeditor/Formula;

    return-void
.end method
