.class public Lorg/catrobat/catroid/content/WhenGamepadButtonScript;
.super Lorg/catrobat/catroid/content/Script;
.source "WhenGamepadButtonScript.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private action:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lorg/catrobat/catroid/content/Script;-><init>()V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .line 39
    invoke-direct {p0}, Lorg/catrobat/catroid/content/Script;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/catrobat/catroid/content/WhenGamepadButtonScript;->action:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method public addRequiredResources(Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;)V
    .locals 1
    .param p1, "resourcesSet"    # Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;

    .line 61
    const/16 v0, 0x16

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;->add(Ljava/lang/Integer;)Z

    .line 62
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/Script;->addRequiredResources(Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;)V

    .line 63
    return-void
.end method

.method public createEventId(Lorg/catrobat/catroid/content/Sprite;)Lorg/catrobat/catroid/content/eventids/EventId;
    .locals 2
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;

    .line 67
    new-instance v0, Lorg/catrobat/catroid/content/eventids/GamepadEventId;

    iget-object v1, p0, Lorg/catrobat/catroid/content/WhenGamepadButtonScript;->action:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/content/eventids/GamepadEventId;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/catrobat/catroid/content/WhenGamepadButtonScript;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getScriptBrick()Lorg/catrobat/catroid/content/bricks/ScriptBrick;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/catrobat/catroid/content/WhenGamepadButtonScript;->scriptBrick:Lorg/catrobat/catroid/content/bricks/ScriptBrick;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lorg/catrobat/catroid/content/bricks/WhenGamepadButtonBrick;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/content/bricks/WhenGamepadButtonBrick;-><init>(Lorg/catrobat/catroid/content/WhenGamepadButtonScript;)V

    iput-object v0, p0, Lorg/catrobat/catroid/content/WhenGamepadButtonScript;->scriptBrick:Lorg/catrobat/catroid/content/bricks/ScriptBrick;

    .line 56
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/WhenGamepadButtonScript;->scriptBrick:Lorg/catrobat/catroid/content/bricks/ScriptBrick;

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lorg/catrobat/catroid/content/WhenGamepadButtonScript;->action:Ljava/lang/String;

    .line 49
    return-void
.end method
