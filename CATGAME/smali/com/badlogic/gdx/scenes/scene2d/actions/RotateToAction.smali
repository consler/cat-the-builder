.class public Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "RotateToAction.java"


# instance fields
.field private end:F

.field private start:F

.field private useShortestDirection:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;->useShortestDirection:Z

    .line 38
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "useShortestDirection"    # Z

    .line 41
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;->useShortestDirection:Z

    .line 42
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;->useShortestDirection:Z

    .line 43
    return-void
.end method


# virtual methods
.method protected begin()V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getRotation()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;->start:F

    .line 48
    return-void
.end method

.method public getRotation()F
    .locals 1

    .line 65
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;->end:F

    return v0
.end method

.method public isUseShortestDirection()Z
    .locals 1

    .line 73
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;->useShortestDirection:Z

    return v0
.end method

.method public setRotation(F)V
    .locals 0
    .param p1, "rotation"    # F

    .line 69
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;->end:F

    .line 70
    return-void
.end method

.method public setUseShortestDirection(Z)V
    .locals 0
    .param p1, "useShortestDirection"    # Z

    .line 77
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;->useShortestDirection:Z

    .line 78
    return-void
.end method

.method protected update(F)V
    .locals 2
    .param p1, "percent"    # F

    .line 53
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 54
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;->start:F

    .local v0, "rotation":F
    goto :goto_0

    .line 55
    .end local v0    # "rotation":F
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    .line 56
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;->end:F

    .restart local v0    # "rotation":F
    goto :goto_0

    .line 57
    .end local v0    # "rotation":F
    :cond_1
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;->useShortestDirection:Z

    if-eqz v0, :cond_2

    .line 58
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;->start:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;->end:F

    invoke-static {v0, v1, p1}, Lcom/badlogic/gdx/math/MathUtils;->lerpAngleDeg(FFF)F

    move-result v0

    .restart local v0    # "rotation":F
    goto :goto_0

    .line 60
    .end local v0    # "rotation":F
    :cond_2
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;->start:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;->end:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    .line 61
    .restart local v0    # "rotation":F
    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setRotation(F)V

    .line 62
    return-void
.end method
