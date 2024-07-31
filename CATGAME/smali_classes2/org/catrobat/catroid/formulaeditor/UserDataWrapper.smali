.class public final Lorg/catrobat/catroid/formulaeditor/UserDataWrapper;
.super Ljava/lang/Object;
.source "UserDataWrapper.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static getUserDefinedBrickInput(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)Lorg/catrobat/catroid/formulaeditor/UserData;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    .line 64
    instance-of v0, p1, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 65
    invoke-virtual {v0}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->getScript()Lorg/catrobat/catroid/content/Script;

    move-result-object v0

    instance-of v0, v0, Lorg/catrobat/catroid/content/UserDefinedScript;

    if-eqz v0, :cond_0

    .line 66
    move-object v0, p1

    check-cast v0, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->getScript()Lorg/catrobat/catroid/content/Script;

    move-result-object v0

    .line 67
    .local v0, "userDefinedScript":Lorg/catrobat/catroid/content/Script;
    move-object v1, v0

    check-cast v1, Lorg/catrobat/catroid/content/UserDefinedScript;

    invoke-virtual {v1, p0}, Lorg/catrobat/catroid/content/UserDefinedScript;->getUserDefinedBrickInput(Ljava/lang/String;)Lorg/catrobat/catroid/formulaeditor/UserData;

    move-result-object v1

    return-object v1

    .line 69
    .end local v0    # "userDefinedScript":Lorg/catrobat/catroid/content/Script;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getUserList(Ljava/lang/String;Lorg/catrobat/catroid/content/Scope;)Lorg/catrobat/catroid/formulaeditor/UserList;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "scope"    # Lorg/catrobat/catroid/content/Scope;

    .line 53
    const/4 v0, 0x0

    .line 54
    .local v0, "userList":Lorg/catrobat/catroid/formulaeditor/UserList;
    if-eqz p1, :cond_0

    .line 55
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Scope;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/catrobat/catroid/content/Sprite;->getUserList(Ljava/lang/String;)Lorg/catrobat/catroid/formulaeditor/UserList;

    move-result-object v0

    .line 57
    :cond_0
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Scope;->getProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 58
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Scope;->getProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/catrobat/catroid/content/Project;->getUserList(Ljava/lang/String;)Lorg/catrobat/catroid/formulaeditor/UserList;

    move-result-object v1

    return-object v1

    .line 60
    :cond_1
    return-object v0
.end method

.method public static getUserVariable(Ljava/lang/String;Lorg/catrobat/catroid/content/Scope;)Lorg/catrobat/catroid/formulaeditor/UserVariable;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "scope"    # Lorg/catrobat/catroid/content/Scope;

    .line 39
    const/4 v0, 0x0

    .line 40
    .local v0, "userVariable":Lorg/catrobat/catroid/formulaeditor/UserVariable;
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Scope;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 41
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Scope;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/catrobat/catroid/content/Sprite;->getUserVariable(Ljava/lang/String;)Lorg/catrobat/catroid/formulaeditor/UserVariable;

    move-result-object v0

    .line 43
    :cond_0
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Scope;->getProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 44
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Scope;->getProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/catrobat/catroid/content/Project;->getUserVariable(Ljava/lang/String;)Lorg/catrobat/catroid/formulaeditor/UserVariable;

    move-result-object v0

    .line 45
    if-nez v0, :cond_1

    .line 46
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Scope;->getProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/catrobat/catroid/content/Project;->getMultiplayerVariable(Ljava/lang/String;)Lorg/catrobat/catroid/formulaeditor/UserVariable;

    move-result-object v0

    .line 49
    :cond_1
    return-object v0
.end method

.method public static resetAllUserData(Lorg/catrobat/catroid/content/Project;)V
    .locals 4
    .param p0, "project"    # Lorg/catrobat/catroid/content/Project;

    .line 73
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Project;->resetUserData()V

    .line 74
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Project;->getSceneList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/Scene;

    .line 75
    .local v1, "scene":Lorg/catrobat/catroid/content/Scene;
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Scene;->getSpriteList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/content/Sprite;

    .line 76
    .local v3, "sprite":Lorg/catrobat/catroid/content/Sprite;
    invoke-virtual {v3}, Lorg/catrobat/catroid/content/Sprite;->resetUserData()V

    .line 77
    .end local v3    # "sprite":Lorg/catrobat/catroid/content/Sprite;
    goto :goto_1

    .line 78
    .end local v1    # "scene":Lorg/catrobat/catroid/content/Scene;
    :cond_0
    goto :goto_0

    .line 79
    :cond_1
    return-void
.end method
