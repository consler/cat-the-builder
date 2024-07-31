.class public Lorg/catrobat/catroid/content/actions/GoToTouchPositionAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "GoToTouchPositionAction.java"


# instance fields
.field private sprite:Lorg/catrobat/catroid/content/Sprite;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    return-void
.end method


# virtual methods
.method public setSprite(Lorg/catrobat/catroid/content/Sprite;)V
    .locals 0
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;

    .line 44
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/GoToTouchPositionAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    .line 45
    return-void
.end method

.method protected update(F)V
    .locals 4
    .param p1, "percent"    # F

    .line 37
    invoke-static {}, Lorg/catrobat/catroid/utils/TouchUtil;->getLastTouchIndex()I

    move-result v0

    .line 38
    .local v0, "touchIndex":I
    invoke-static {v0}, Lorg/catrobat/catroid/utils/TouchUtil;->getX(I)F

    move-result v1

    .line 39
    .local v1, "x":F
    invoke-static {v0}, Lorg/catrobat/catroid/utils/TouchUtil;->getY(I)F

    move-result v2

    .line 40
    .local v2, "y":F
    iget-object v3, p0, Lorg/catrobat/catroid/content/actions/GoToTouchPositionAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v3, v3, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-virtual {v3, v1, v2}, Lorg/catrobat/catroid/content/Look;->setPositionInUserInterfaceDimensionUnit(FF)V

    .line 41
    return-void
.end method
