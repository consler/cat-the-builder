.class public Lorg/catrobat/catroid/content/WhenBounceOffScript;
.super Lorg/catrobat/catroid/content/Script;
.source "WhenBounceOffScript.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient spriteToBounceOff:Lorg/catrobat/catroid/content/Sprite;

.field private spriteToBounceOffName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lorg/catrobat/catroid/content/Script;-><init>()V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "spriteToBounceOffName"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0}, Lorg/catrobat/catroid/content/Script;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/catrobat/catroid/content/WhenBounceOffScript;->spriteToBounceOffName:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public createEventId(Lorg/catrobat/catroid/content/Sprite;)Lorg/catrobat/catroid/content/eventids/EventId;
    .locals 2
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;

    .line 75
    new-instance v0, Lorg/catrobat/catroid/content/eventids/BounceOffEventId;

    iget-object v1, p0, Lorg/catrobat/catroid/content/WhenBounceOffScript;->spriteToBounceOff:Lorg/catrobat/catroid/content/Sprite;

    invoke-direct {v0, p1, v1}, Lorg/catrobat/catroid/content/eventids/BounceOffEventId;-><init>(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/Sprite;)V

    return-object v0
.end method

.method public getScriptBrick()Lorg/catrobat/catroid/content/bricks/ScriptBrick;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/catrobat/catroid/content/WhenBounceOffScript;->scriptBrick:Lorg/catrobat/catroid/content/bricks/ScriptBrick;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lorg/catrobat/catroid/content/bricks/WhenBounceOffBrick;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/content/bricks/WhenBounceOffBrick;-><init>(Lorg/catrobat/catroid/content/WhenBounceOffScript;)V

    iput-object v0, p0, Lorg/catrobat/catroid/content/WhenBounceOffScript;->scriptBrick:Lorg/catrobat/catroid/content/bricks/ScriptBrick;

    .line 50
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/WhenBounceOffScript;->scriptBrick:Lorg/catrobat/catroid/content/bricks/ScriptBrick;

    return-object v0
.end method

.method public getSpriteToBounceOffName()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/catrobat/catroid/content/WhenBounceOffScript;->spriteToBounceOffName:Ljava/lang/String;

    return-object v0
.end method

.method public setSpriteToBounceOffName(Ljava/lang/String;)V
    .locals 1
    .param p1, "spriteToCollideWithName"    # Ljava/lang/String;

    .line 58
    iput-object p1, p0, Lorg/catrobat/catroid/content/WhenBounceOffScript;->spriteToBounceOffName:Ljava/lang/String;

    .line 59
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentlyEditedScene()Lorg/catrobat/catroid/content/Scene;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/WhenBounceOffScript;->updateSpriteToCollideWith(Lorg/catrobat/catroid/content/Scene;)V

    .line 60
    return-void
.end method

.method public updateSpriteToCollideWith(Lorg/catrobat/catroid/content/Scene;)V
    .locals 2
    .param p1, "scene"    # Lorg/catrobat/catroid/content/Scene;

    .line 63
    iget-object v0, p0, Lorg/catrobat/catroid/content/WhenBounceOffScript;->spriteToBounceOffName:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 64
    iput-object v1, p0, Lorg/catrobat/catroid/content/WhenBounceOffScript;->spriteToBounceOffName:Ljava/lang/String;

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {p1, v0}, Lorg/catrobat/catroid/content/Scene;->getSprite(Ljava/lang/String;)Lorg/catrobat/catroid/content/Sprite;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/content/WhenBounceOffScript;->spriteToBounceOff:Lorg/catrobat/catroid/content/Sprite;

    .line 67
    if-nez v0, :cond_1

    .line 68
    iput-object v1, p0, Lorg/catrobat/catroid/content/WhenBounceOffScript;->spriteToBounceOffName:Ljava/lang/String;

    .line 71
    :cond_1
    :goto_0
    return-void
.end method
