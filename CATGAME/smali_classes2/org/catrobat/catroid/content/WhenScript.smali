.class public Lorg/catrobat/catroid/content/WhenScript;
.super Lorg/catrobat/catroid/content/Script;
.source "WhenScript.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lorg/catrobat/catroid/content/Script;-><init>()V

    return-void
.end method


# virtual methods
.method public createEventId(Lorg/catrobat/catroid/content/Sprite;)Lorg/catrobat/catroid/content/eventids/EventId;
    .locals 2
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;

    .line 43
    new-instance v0, Lorg/catrobat/catroid/content/eventids/EventId;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/content/eventids/EventId;-><init>(I)V

    return-object v0
.end method

.method public getScriptBrick()Lorg/catrobat/catroid/content/bricks/ScriptBrick;
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/catrobat/catroid/content/WhenScript;->scriptBrick:Lorg/catrobat/catroid/content/bricks/ScriptBrick;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lorg/catrobat/catroid/content/bricks/WhenBrick;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/content/bricks/WhenBrick;-><init>(Lorg/catrobat/catroid/content/WhenScript;)V

    iput-object v0, p0, Lorg/catrobat/catroid/content/WhenScript;->scriptBrick:Lorg/catrobat/catroid/content/bricks/ScriptBrick;

    .line 38
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/WhenScript;->scriptBrick:Lorg/catrobat/catroid/content/bricks/ScriptBrick;

    return-object v0
.end method
