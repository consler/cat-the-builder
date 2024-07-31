.class public Lorg/catrobat/catroid/content/EmptyScript;
.super Lorg/catrobat/catroid/content/Script;
.source "EmptyScript.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lorg/catrobat/catroid/content/Script;-><init>()V

    return-void
.end method


# virtual methods
.method public createEventId(Lorg/catrobat/catroid/content/Sprite;)Lorg/catrobat/catroid/content/eventids/EventId;
    .locals 1
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;

    .line 41
    const/4 v0, 0x0

    return-object v0
.end method

.method public getScriptBrick()Lorg/catrobat/catroid/content/bricks/ScriptBrick;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/catrobat/catroid/content/EmptyScript;->scriptBrick:Lorg/catrobat/catroid/content/bricks/ScriptBrick;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lorg/catrobat/catroid/content/bricks/EmptyEventBrick;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/content/bricks/EmptyEventBrick;-><init>(Lorg/catrobat/catroid/content/EmptyScript;)V

    iput-object v0, p0, Lorg/catrobat/catroid/content/EmptyScript;->scriptBrick:Lorg/catrobat/catroid/content/bricks/ScriptBrick;

    .line 36
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/EmptyScript;->scriptBrick:Lorg/catrobat/catroid/content/bricks/ScriptBrick;

    return-object v0
.end method
