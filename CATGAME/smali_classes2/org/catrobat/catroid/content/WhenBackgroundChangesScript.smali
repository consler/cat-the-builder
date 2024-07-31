.class public Lorg/catrobat/catroid/content/WhenBackgroundChangesScript;
.super Lorg/catrobat/catroid/content/Script;
.source "WhenBackgroundChangesScript.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private look:Lorg/catrobat/catroid/common/LookData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lorg/catrobat/catroid/content/Script;-><init>()V

    return-void
.end method


# virtual methods
.method public createEventId(Lorg/catrobat/catroid/content/Sprite;)Lorg/catrobat/catroid/content/eventids/EventId;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;

    .line 56
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentlyPlayingScene()Lorg/catrobat/catroid/content/Scene;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Scene;->getBackgroundSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v0

    .line 57
    .local v0, "background":Lorg/catrobat/catroid/content/Sprite;
    new-instance v1, Lorg/catrobat/catroid/content/eventids/SetLookEventId;

    iget-object v2, p0, Lorg/catrobat/catroid/content/WhenBackgroundChangesScript;->look:Lorg/catrobat/catroid/common/LookData;

    invoke-direct {v1, v0, v2}, Lorg/catrobat/catroid/content/eventids/SetLookEventId;-><init>(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/common/LookData;)V

    return-object v1
.end method

.method public getLook()Lorg/catrobat/catroid/common/LookData;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/catrobat/catroid/content/WhenBackgroundChangesScript;->look:Lorg/catrobat/catroid/common/LookData;

    return-object v0
.end method

.method public getScriptBrick()Lorg/catrobat/catroid/content/bricks/ScriptBrick;
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/catrobat/catroid/content/WhenBackgroundChangesScript;->scriptBrick:Lorg/catrobat/catroid/content/bricks/ScriptBrick;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lorg/catrobat/catroid/content/bricks/WhenBackgroundChangesBrick;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/content/bricks/WhenBackgroundChangesBrick;-><init>(Lorg/catrobat/catroid/content/WhenBackgroundChangesScript;)V

    iput-object v0, p0, Lorg/catrobat/catroid/content/WhenBackgroundChangesScript;->scriptBrick:Lorg/catrobat/catroid/content/bricks/ScriptBrick;

    .line 43
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/WhenBackgroundChangesScript;->scriptBrick:Lorg/catrobat/catroid/content/bricks/ScriptBrick;

    return-object v0
.end method

.method public setLook(Lorg/catrobat/catroid/common/LookData;)V
    .locals 0
    .param p1, "look"    # Lorg/catrobat/catroid/common/LookData;

    .line 51
    iput-object p1, p0, Lorg/catrobat/catroid/content/WhenBackgroundChangesScript;->look:Lorg/catrobat/catroid/common/LookData;

    .line 52
    return-void
.end method
