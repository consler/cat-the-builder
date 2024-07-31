.class public Lorg/catrobat/catroid/embroidery/RunningStitch;
.super Ljava/lang/Object;
.source "RunningStitch.java"


# instance fields
.field private isRunning:Z

.field private sprite:Lorg/catrobat/catroid/content/Sprite;

.field private type:Lorg/catrobat/catroid/embroidery/RunningStitchType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/embroidery/RunningStitch;->isRunning:Z

    return-void
.end method


# virtual methods
.method public activateStitching(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/embroidery/RunningStitchType;)V
    .locals 1
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "type"    # Lorg/catrobat/catroid/embroidery/RunningStitchType;

    .line 34
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 35
    iput-object p1, p0, Lorg/catrobat/catroid/embroidery/RunningStitch;->sprite:Lorg/catrobat/catroid/content/Sprite;

    .line 36
    iput-object p2, p0, Lorg/catrobat/catroid/embroidery/RunningStitch;->type:Lorg/catrobat/catroid/embroidery/RunningStitchType;

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/catroid/embroidery/RunningStitch;->isRunning:Z

    .line 39
    :cond_0
    return-void
.end method

.method public deactivate()V
    .locals 1

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/embroidery/RunningStitch;->isRunning:Z

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/catrobat/catroid/embroidery/RunningStitch;->type:Lorg/catrobat/catroid/embroidery/RunningStitchType;

    .line 68
    iput-object v0, p0, Lorg/catrobat/catroid/embroidery/RunningStitch;->sprite:Lorg/catrobat/catroid/content/Sprite;

    .line 69
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .line 72
    iget-boolean v0, p0, Lorg/catrobat/catroid/embroidery/RunningStitch;->isRunning:Z

    return v0
.end method

.method public pause()V
    .locals 1

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/embroidery/RunningStitch;->isRunning:Z

    .line 57
    return-void
.end method

.method public resume()V
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/catrobat/catroid/embroidery/RunningStitch;->type:Lorg/catrobat/catroid/embroidery/RunningStitchType;

    if-eqz v0, :cond_0

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/catroid/embroidery/RunningStitch;->isRunning:Z

    .line 63
    :cond_0
    return-void
.end method

.method public setStartCoordinates(FF)V
    .locals 1
    .param p1, "xStart"    # F
    .param p2, "yStart"    # F

    .line 50
    iget-object v0, p0, Lorg/catrobat/catroid/embroidery/RunningStitch;->type:Lorg/catrobat/catroid/embroidery/RunningStitchType;

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0, p1, p2}, Lorg/catrobat/catroid/embroidery/RunningStitchType;->setStartCoordinates(FF)V

    .line 53
    :cond_0
    return-void
.end method

.method public update()V
    .locals 3

    .line 42
    iget-boolean v0, p0, Lorg/catrobat/catroid/embroidery/RunningStitch;->isRunning:Z

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lorg/catrobat/catroid/embroidery/RunningStitch;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v0, v0, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Look;->getXInUserInterfaceDimensionUnit()F

    move-result v0

    .line 44
    .local v0, "currentX":F
    iget-object v1, p0, Lorg/catrobat/catroid/embroidery/RunningStitch;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v1, v1, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Look;->getYInUserInterfaceDimensionUnit()F

    move-result v1

    .line 45
    .local v1, "currentY":F
    iget-object v2, p0, Lorg/catrobat/catroid/embroidery/RunningStitch;->type:Lorg/catrobat/catroid/embroidery/RunningStitchType;

    invoke-virtual {v2, v0, v1}, Lorg/catrobat/catroid/embroidery/RunningStitchType;->update(FF)V

    .line 47
    .end local v0    # "currentX":F
    .end local v1    # "currentY":F
    :cond_0
    return-void
.end method
