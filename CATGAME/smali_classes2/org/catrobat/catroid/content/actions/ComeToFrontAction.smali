.class public Lorg/catrobat/catroid/content/actions/ComeToFrontAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "ComeToFrontAction.java"


# instance fields
.field private sprite:Lorg/catrobat/catroid/content/Sprite;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    return-void
.end method


# virtual methods
.method public setSprite(Lorg/catrobat/catroid/content/Sprite;)V
    .locals 0
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;

    .line 45
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/ComeToFrontAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    .line 46
    return-void
.end method

.method protected update(F)V
    .locals 3
    .param p1, "delta"    # F

    .line 40
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Project;->getSpriteListWithClones()Ljava/util/List;

    move-result-object v0

    .line 41
    .local v0, "spriteList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/Sprite;>;"
    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/ComeToFrontAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v1, v1, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/content/Look;->setZIndex(I)Z

    .line 42
    return-void
.end method
