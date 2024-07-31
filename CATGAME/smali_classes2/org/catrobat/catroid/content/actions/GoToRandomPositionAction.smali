.class public Lorg/catrobat/catroid/content/actions/GoToRandomPositionAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "GoToRandomPositionAction.java"


# instance fields
.field private randomXPosition:F

.field private randomYPosition:F

.field private sprite:Lorg/catrobat/catroid/content/Sprite;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    return-void
.end method


# virtual methods
.method public getRandomXPosition()F
    .locals 1

    .line 52
    iget v0, p0, Lorg/catrobat/catroid/content/actions/GoToRandomPositionAction;->randomXPosition:F

    return v0
.end method

.method public getRandomYPosition()F
    .locals 1

    .line 56
    iget v0, p0, Lorg/catrobat/catroid/content/actions/GoToRandomPositionAction;->randomYPosition:F

    return v0
.end method

.method public setSprite(Lorg/catrobat/catroid/content/Sprite;)V
    .locals 0
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;

    .line 48
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/GoToRandomPositionAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    .line 49
    return-void
.end method

.method protected update(F)V
    .locals 3
    .param p1, "percent"    # F

    .line 39
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    double-to-float v0, v0

    sget v1, Lorg/catrobat/catroid/common/ScreenValues;->SCREEN_WIDTH:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    sget v1, Lorg/catrobat/catroid/common/ScreenValues;->SCREEN_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/catrobat/catroid/content/actions/GoToRandomPositionAction;->randomXPosition:F

    .line 41
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    double-to-float v0, v0

    sget v1, Lorg/catrobat/catroid/common/ScreenValues;->SCREEN_HEIGHT:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    sget v1, Lorg/catrobat/catroid/common/ScreenValues;->SCREEN_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/catrobat/catroid/content/actions/GoToRandomPositionAction;->randomYPosition:F

    .line 44
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/GoToRandomPositionAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v0, v0, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    iget v1, p0, Lorg/catrobat/catroid/content/actions/GoToRandomPositionAction;->randomXPosition:F

    iget v2, p0, Lorg/catrobat/catroid/content/actions/GoToRandomPositionAction;->randomYPosition:F

    invoke-virtual {v0, v1, v2}, Lorg/catrobat/catroid/content/Look;->setPositionInUserInterfaceDimensionUnit(FF)V

    .line 45
    return-void
.end method
