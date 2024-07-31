.class public Lorg/catrobat/catroid/content/UserDefinedScript;
.super Lorg/catrobat/catroid/content/Script;
.source "UserDefinedScript.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private screenRefresh:Ljava/lang/Boolean;

.field private userDefinedBrickID:Ljava/util/UUID;

.field private userDefinedBrickInputs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lorg/catrobat/catroid/content/Script;-><init>()V

    .line 42
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/content/UserDefinedScript;->screenRefresh:Ljava/lang/Boolean;

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;)V
    .locals 1
    .param p1, "userDefinedBrickID"    # Ljava/util/UUID;

    .line 44
    invoke-direct {p0}, Lorg/catrobat/catroid/content/Script;-><init>()V

    .line 42
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/content/UserDefinedScript;->screenRefresh:Ljava/lang/Boolean;

    .line 45
    iput-object p1, p0, Lorg/catrobat/catroid/content/UserDefinedScript;->userDefinedBrickID:Ljava/util/UUID;

    .line 46
    return-void
.end method


# virtual methods
.method public createEventId(Lorg/catrobat/catroid/content/Sprite;)Lorg/catrobat/catroid/content/eventids/EventId;
    .locals 2
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;

    .line 62
    new-instance v0, Lorg/catrobat/catroid/content/eventids/UserDefinedBrickEventId;

    iget-object v1, p0, Lorg/catrobat/catroid/content/UserDefinedScript;->userDefinedBrickID:Ljava/util/UUID;

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/content/eventids/UserDefinedBrickEventId;-><init>(Ljava/util/UUID;)V

    return-object v0
.end method

.method public getScreenRefresh()Ljava/lang/Boolean;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/catrobat/catroid/content/UserDefinedScript;->screenRefresh:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getScriptBrick()Lorg/catrobat/catroid/content/bricks/ScriptBrick;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/catrobat/catroid/content/UserDefinedScript;->scriptBrick:Lorg/catrobat/catroid/content/bricks/ScriptBrick;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lorg/catrobat/catroid/content/bricks/UserDefinedReceiverBrick;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/content/bricks/UserDefinedReceiverBrick;-><init>(Lorg/catrobat/catroid/content/UserDefinedScript;)V

    iput-object v0, p0, Lorg/catrobat/catroid/content/UserDefinedScript;->scriptBrick:Lorg/catrobat/catroid/content/bricks/ScriptBrick;

    .line 57
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/UserDefinedScript;->scriptBrick:Lorg/catrobat/catroid/content/bricks/ScriptBrick;

    return-object v0
.end method

.method public getUserDefinedBrickID()Ljava/util/UUID;
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/catrobat/catroid/content/UserDefinedScript;->userDefinedBrickID:Ljava/util/UUID;

    return-object v0
.end method

.method public getUserDefinedBrickInput(Ljava/lang/String;)Lorg/catrobat/catroid/formulaeditor/UserData;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lorg/catrobat/catroid/content/UserDefinedScript;->userDefinedBrickInputs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 71
    .local v1, "variable":Ljava/lang/Object;
    instance-of v2, v1, Lorg/catrobat/catroid/formulaeditor/UserData;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lorg/catrobat/catroid/formulaeditor/UserData;

    check-cast v2, Lorg/catrobat/catroid/formulaeditor/UserData;

    invoke-interface {v2}, Lorg/catrobat/catroid/formulaeditor/UserData;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    move-object v0, v1

    check-cast v0, Lorg/catrobat/catroid/formulaeditor/UserData;

    return-object v0

    .line 74
    .end local v1    # "variable":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 75
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public setScreenRefresh(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "screenRefresh"    # Ljava/lang/Boolean;

    .line 83
    iput-object p1, p0, Lorg/catrobat/catroid/content/UserDefinedScript;->screenRefresh:Ljava/lang/Boolean;

    .line 84
    return-void
.end method

.method public setUserDefinedBrickInputs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 66
    .local p1, "userDefinedBrickInputs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iput-object p1, p0, Lorg/catrobat/catroid/content/UserDefinedScript;->userDefinedBrickInputs:Ljava/util/List;

    .line 67
    return-void
.end method
