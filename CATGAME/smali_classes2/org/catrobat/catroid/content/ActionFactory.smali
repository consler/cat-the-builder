.class public Lorg/catrobat/catroid/content/ActionFactory;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;
.source "ActionFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 217
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;-><init>()V

    return-void
.end method

.method public static createScriptSequenceAction(Lorg/catrobat/catroid/content/Script;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 1
    .param p0, "script"    # Lorg/catrobat/catroid/content/Script;

    .line 1160
    new-instance v0, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;-><init>(Lorg/catrobat/catroid/content/Script;)V

    return-object v0
.end method

.method public static createStitchAction(Lorg/catrobat/catroid/content/Sprite;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 1
    .param p0, "sprite"    # Lorg/catrobat/catroid/content/Sprite;

    .line 1097
    const-class v0, Lorg/catrobat/catroid/content/actions/StitchAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/StitchAction;

    .line 1098
    .local v0, "action":Lorg/catrobat/catroid/content/actions/StitchAction;
    invoke-virtual {v0, p0}, Lorg/catrobat/catroid/content/actions/StitchAction;->setSprite(Lorg/catrobat/catroid/content/Sprite;)V

    .line 1099
    return-object v0
.end method

.method public static createStopRunningStitchAction(Lorg/catrobat/catroid/content/Sprite;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 1
    .param p0, "sprite"    # Lorg/catrobat/catroid/content/Sprite;

    .line 1129
    const-class v0, Lorg/catrobat/catroid/content/actions/StopRunningStitchAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/StopRunningStitchAction;

    .line 1130
    .local v0, "action":Lorg/catrobat/catroid/content/actions/StopRunningStitchAction;
    invoke-virtual {v0, p0}, Lorg/catrobat/catroid/content/actions/StopRunningStitchAction;->setSprite(Lorg/catrobat/catroid/content/Sprite;)V

    .line 1131
    return-object v0
.end method


# virtual methods
.method public createAddItemToUserListAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/UserList;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "userListFormula"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p4, "userList"    # Lorg/catrobat/catroid/formulaeditor/UserList;

    .line 930
    const-class v0, Lorg/catrobat/catroid/content/actions/AddItemToUserListAction;

    invoke-static {v0}, Lorg/catrobat/catroid/content/ActionFactory;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/AddItemToUserListAction;

    .line 931
    .local v0, "action":Lorg/catrobat/catroid/content/actions/AddItemToUserListAction;
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 932
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/AddItemToUserListAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 933
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/AddItemToUserListAction;->setFormulaItemToAdd(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 934
    invoke-virtual {v0, p4}, Lorg/catrobat/catroid/content/actions/AddItemToUserListAction;->setUserList(Lorg/catrobat/catroid/formulaeditor/UserList;)V

    .line 935
    return-object v0
.end method

.method public createAdditiveParticleEffectsAction(Lorg/catrobat/catroid/content/Sprite;Z)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 1
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "turnOn"    # Z

    .line 1276
    const-class v0, Lorg/catrobat/catroid/content/actions/AdditiveParticleEffectAction;

    invoke-static {v0}, Lorg/catrobat/catroid/content/ActionFactory;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/AdditiveParticleEffectAction;

    .line 1277
    .local v0, "action":Lorg/catrobat/catroid/content/actions/AdditiveParticleEffectAction;
    invoke-virtual {v0, p2}, Lorg/catrobat/catroid/content/actions/AdditiveParticleEffectAction;->setFadeIn(Z)V

    .line 1278
    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/actions/AdditiveParticleEffectAction;->setSprite(Lorg/catrobat/catroid/content/Sprite;)V

    .line 1279
    return-object v0
.end method

.method public createAskAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/UserVariable;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "questionFormula"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p4, "answerVariable"    # Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .line 894
    const-class v0, Lorg/catrobat/catroid/content/actions/AskAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/AskAction;

    .line 895
    .local v0, "action":Lorg/catrobat/catroid/content/actions/AskAction;
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 896
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/AskAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 897
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/AskAction;->setQuestionFormula(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 898
    invoke-virtual {v0, p4}, Lorg/catrobat/catroid/content/actions/AskAction;->setAnswerVariable(Lorg/catrobat/catroid/formulaeditor/UserVariable;)V

    .line 899
    return-object v0
.end method

.method public createAskSpeechAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/UserVariable;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "questionFormula"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p4, "answerVariable"    # Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .line 904
    const-class v0, Lorg/catrobat/catroid/content/actions/AskSpeechAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/AskSpeechAction;

    .line 905
    .local v0, "action":Lorg/catrobat/catroid/content/actions/AskSpeechAction;
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 906
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/AskSpeechAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 907
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/AskSpeechAction;->setQuestionFormula(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 908
    invoke-virtual {v0, p4}, Lorg/catrobat/catroid/content/actions/AskSpeechAction;->setAnswerVariable(Lorg/catrobat/catroid/formulaeditor/UserVariable;)V

    .line 909
    return-object v0
.end method

.method public createAssertEqualsAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "actual"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p4, "expected"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p5, "position"    # Ljava/lang/String;

    .line 1397
    const-class v0, Lorg/catrobat/catroid/content/actions/AssertEqualsAction;

    invoke-static {v0}, Lorg/catrobat/catroid/content/ActionFactory;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/AssertEqualsAction;

    .line 1398
    .local v0, "action":Lorg/catrobat/catroid/content/actions/AssertEqualsAction;
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/AssertEqualsAction;->setActualFormula(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 1399
    invoke-virtual {v0, p4}, Lorg/catrobat/catroid/content/actions/AssertEqualsAction;->setExpectedFormula(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 1401
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 1402
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/AssertEqualsAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 1403
    invoke-virtual {v0, p5}, Lorg/catrobat/catroid/content/actions/AssertEqualsAction;->setPosition(Ljava/lang/String;)V

    .line 1405
    return-object v0
.end method

.method public createAssertUserListsAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/UserList;Lorg/catrobat/catroid/formulaeditor/UserList;Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "actual"    # Lorg/catrobat/catroid/formulaeditor/UserList;
    .param p4, "expected"    # Lorg/catrobat/catroid/formulaeditor/UserList;
    .param p5, "position"    # Ljava/lang/String;

    .line 1410
    const-class v0, Lorg/catrobat/catroid/content/actions/AssertUserListAction;

    invoke-static {v0}, Lorg/catrobat/catroid/content/ActionFactory;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/AssertUserListAction;

    .line 1411
    .local v0, "action":Lorg/catrobat/catroid/content/actions/AssertUserListAction;
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/AssertUserListAction;->setActualUserList(Lorg/catrobat/catroid/formulaeditor/UserList;)V

    .line 1412
    invoke-virtual {v0, p4}, Lorg/catrobat/catroid/content/actions/AssertUserListAction;->setExpectedUserList(Lorg/catrobat/catroid/formulaeditor/UserList;)V

    .line 1414
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 1415
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/AssertUserListAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 1416
    invoke-virtual {v0, p5}, Lorg/catrobat/catroid/content/actions/AssertUserListAction;->setPosition(Ljava/lang/String;)V

    .line 1418
    return-object v0
.end method

.method public createBroadcastAction(Ljava/lang/String;Z)Lorg/catrobat/catroid/content/actions/EventAction;
    .locals 1
    .param p1, "broadcastMessage"    # Ljava/lang/String;
    .param p2, "wait"    # Z

    .line 233
    const-class v0, Lorg/catrobat/catroid/content/actions/BroadcastAction;

    invoke-static {v0}, Lorg/catrobat/catroid/content/ActionFactory;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/BroadcastAction;

    .line 234
    .local v0, "action":Lorg/catrobat/catroid/content/actions/BroadcastAction;
    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/actions/BroadcastAction;->setBroadcastMessage(Ljava/lang/String;)V

    .line 235
    invoke-virtual {v0, p2}, Lorg/catrobat/catroid/content/actions/BroadcastAction;->setWait(Z)V

    .line 236
    return-object v0
.end method

.method public createChangeBrightnessByNAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "changeBrightness"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 267
    const-class v0, Lorg/catrobat/catroid/content/actions/ChangeBrightnessByNAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/ChangeBrightnessByNAction;

    .line 268
    .local v0, "action":Lorg/catrobat/catroid/content/actions/ChangeBrightnessByNAction;
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 269
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/ChangeBrightnessByNAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 270
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/ChangeBrightnessByNAction;->setBrightness(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 271
    return-object v0
.end method

.method public createChangeColorByNAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "changeColor"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 276
    const-class v0, Lorg/catrobat/catroid/content/actions/ChangeColorByNAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/ChangeColorByNAction;

    .line 277
    .local v0, "action":Lorg/catrobat/catroid/content/actions/ChangeColorByNAction;
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 278
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/ChangeColorByNAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 279
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/ChangeColorByNAction;->setColor(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 280
    return-object v0
.end method

.method public createChangeSizeByNAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "size"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 293
    const-class v0, Lorg/catrobat/catroid/content/actions/ChangeSizeByNAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/ChangeSizeByNAction;

    .line 294
    .local v0, "action":Lorg/catrobat/catroid/content/actions/ChangeSizeByNAction;
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 295
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/ChangeSizeByNAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 296
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/ChangeSizeByNAction;->setSize(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 297
    return-object v0
.end method

.method public createChangeTempoAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "tempo"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 840
    const-class v0, Lorg/catrobat/catroid/content/actions/ChangeTempoByAction;

    invoke-static {v0}, Lorg/catrobat/catroid/content/ActionFactory;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/ChangeTempoByAction;

    .line 841
    .local v0, "action":Lorg/catrobat/catroid/content/actions/ChangeTempoByAction;
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 842
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/ChangeTempoByAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 843
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/ChangeTempoByAction;->setTempo(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 844
    return-object v0
.end method

.method public createChangeTransparencyByNAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "transparency"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 285
    const-class v0, Lorg/catrobat/catroid/content/actions/ChangeTransparencyByNAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/ChangeTransparencyByNAction;

    .line 286
    .local v0, "action":Lorg/catrobat/catroid/content/actions/ChangeTransparencyByNAction;
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 287
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/ChangeTransparencyByNAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 288
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/ChangeTransparencyByNAction;->setTransparency(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 289
    return-object v0
.end method

.method public createChangeVariableAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/UserVariable;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "variableFormula"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p4, "userVariable"    # Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .line 874
    const-class v0, Lorg/catrobat/catroid/content/actions/ChangeVariableAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/ChangeVariableAction;

    .line 875
    .local v0, "action":Lorg/catrobat/catroid/content/actions/ChangeVariableAction;
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 876
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/ChangeVariableAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 877
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/ChangeVariableAction;->setChangeVariable(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 878
    invoke-virtual {v0, p4}, Lorg/catrobat/catroid/content/actions/ChangeVariableAction;->setUserVariable(Lorg/catrobat/catroid/formulaeditor/UserVariable;)V

    .line 879
    return-object v0
.end method

.method public createChangeVolumeByNAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "volume"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 301
    const-class v0, Lorg/catrobat/catroid/content/actions/ChangeVolumeByNAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/ChangeVolumeByNAction;

    .line 302
    .local v0, "action":Lorg/catrobat/catroid/content/actions/ChangeVolumeByNAction;
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/ChangeVolumeByNAction;->setVolume(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 303
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 304
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/ChangeVolumeByNAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 305
    return-object v0
.end method

.method public createChangeXByNAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "xMovement"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 309
    const-class v0, Lorg/catrobat/catroid/content/actions/ChangeXByNAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/ChangeXByNAction;

    .line 310
    .local v0, "action":Lorg/catrobat/catroid/content/actions/ChangeXByNAction;
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 311
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/ChangeXByNAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 312
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/ChangeXByNAction;->setxMovement(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 313
    return-object v0
.end method

.method public createChangeYByNAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "yMovement"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 317
    const-class v0, Lorg/catrobat/catroid/content/actions/ChangeYByNAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/ChangeYByNAction;

    .line 318
    .local v0, "action":Lorg/catrobat/catroid/content/actions/ChangeYByNAction;
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 319
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/ChangeYByNAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 320
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/ChangeYByNAction;->setyMovement(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 321
    return-object v0
.end method

.method public createClearBackgroundAction()Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 1

    .line 583
    const-class v0, Lorg/catrobat/catroid/content/actions/ClearBackgroundAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    return-object v0
.end method

.method public createClearGraphicEffectAction(Lorg/catrobat/catroid/content/Sprite;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 1
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;

    .line 332
    const-class v0, Lorg/catrobat/catroid/content/actions/ClearGraphicEffectAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/ClearGraphicEffectAction;

    .line 333
    .local v0, "action":Lorg/catrobat/catroid/content/actions/ClearGraphicEffectAction;
    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/actions/ClearGraphicEffectAction;->setSprite(Lorg/catrobat/catroid/content/Sprite;)V

    .line 334
    return-object v0
.end method

.method public createClearUserListAction(Lorg/catrobat/catroid/formulaeditor/UserList;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 1
    .param p1, "userList"    # Lorg/catrobat/catroid/formulaeditor/UserList;

    .line 923
    const-class v0, Lorg/catrobat/catroid/content/actions/ClearUserListAction;

    invoke-static {v0}, Lorg/catrobat/catroid/content/ActionFactory;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/ClearUserListAction;

    .line 924
    .local v0, "action":Lorg/catrobat/catroid/content/actions/ClearUserListAction;
    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/actions/ClearUserListAction;->setUserList(Lorg/catrobat/catroid/formulaeditor/UserList;)V

    .line 925
    return-object v0
.end method

.method public createCloneAction(Lorg/catrobat/catroid/content/Sprite;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 1
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;

    .line 633
    const-class v0, Lorg/catrobat/catroid/content/actions/CloneAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/CloneAction;

    .line 634
    .local v0, "action":Lorg/catrobat/catroid/content/actions/CloneAction;
    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/actions/CloneAction;->setSprite(Lorg/catrobat/catroid/content/Sprite;)V

    .line 635
    return-object v0
.end method

.method public createComeToFrontAction(Lorg/catrobat/catroid/content/Sprite;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 1
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;

    .line 338
    const-class v0, Lorg/catrobat/catroid/content/actions/ComeToFrontAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/ComeToFrontAction;

    .line 339
    .local v0, "action":Lorg/catrobat/catroid/content/actions/ComeToFrontAction;
    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/actions/ComeToFrontAction;->setSprite(Lorg/catrobat/catroid/content/Sprite;)V

    .line 340
    return-object v0
.end method

.method public createCopyLookAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/content/actions/SetNextLookAction;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "variableFormula"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p4, "nextLookAction"    # Lorg/catrobat/catroid/content/actions/SetNextLookAction;

    .line 1602
    const-class v0, Lorg/catrobat/catroid/content/actions/CopyLookAction;

    invoke-static {v0}, Lorg/catrobat/catroid/content/ActionFactory;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/CopyLookAction;

    .line 1603
    .local v0, "action":Lorg/catrobat/catroid/content/actions/CopyLookAction;
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 1604
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/CopyLookAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 1605
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/CopyLookAction;->setFormula(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 1606
    invoke-virtual {v0, p4}, Lorg/catrobat/catroid/content/actions/CopyLookAction;->nextLookAction(Lorg/catrobat/catroid/content/actions/SetNextLookAction;)V

    .line 1607
    return-object v0
.end method

.method public createDelayAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "delay"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 1078
    const-class v0, Lorg/catrobat/catroid/content/actions/WaitAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/WaitAction;

    .line 1079
    .local v0, "action":Lorg/catrobat/catroid/content/actions/WaitAction;
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 1080
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/WaitAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 1081
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/WaitAction;->setDelay(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 1082
    return-object v0
.end method

.method public createDeleteItemOfUserListAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/UserList;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "userListFormula"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p4, "userList"    # Lorg/catrobat/catroid/formulaeditor/UserList;

    .line 914
    const-class v0, Lorg/catrobat/catroid/content/actions/DeleteItemOfUserListAction;

    invoke-static {v0}, Lorg/catrobat/catroid/content/ActionFactory;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/DeleteItemOfUserListAction;

    .line 915
    .local v0, "action":Lorg/catrobat/catroid/content/actions/DeleteItemOfUserListAction;
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 916
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/DeleteItemOfUserListAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 917
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/DeleteItemOfUserListAction;->setFormulaIndexToDelete(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 918
    invoke-virtual {v0, p4}, Lorg/catrobat/catroid/content/actions/DeleteItemOfUserListAction;->setUserList(Lorg/catrobat/catroid/formulaeditor/UserList;)V

    .line 919
    return-object v0
.end method

.method public createDeleteLookAction(Lorg/catrobat/catroid/content/Sprite;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 1
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;

    .line 726
    const-class v0, Lorg/catrobat/catroid/content/actions/DeleteLookAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/DeleteLookAction;

    .line 727
    .local v0, "action":Lorg/catrobat/catroid/content/actions/DeleteLookAction;
    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/actions/DeleteLookAction;->setSprite(Lorg/catrobat/catroid/content/Sprite;)V

    .line 728
    return-object v0
.end method

.method public createDeleteThisCloneAction(Lorg/catrobat/catroid/content/Sprite;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 1
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;

    .line 639
    const-class v0, Lorg/catrobat/catroid/content/actions/DeleteThisCloneAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/DeleteThisCloneAction;

    .line 640
    .local v0, "action":Lorg/catrobat/catroid/content/actions/DeleteThisCloneAction;
    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/actions/DeleteThisCloneAction;->setSprite(Lorg/catrobat/catroid/content/Sprite;)V

    .line 641
    return-object v0
.end method

.method public createEditLookAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/content/actions/SetNextLookAction;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "nextLookAction"    # Lorg/catrobat/catroid/content/actions/SetNextLookAction;

    .line 1612
    const-class v0, Lorg/catrobat/catroid/content/actions/EditLookAction;

    invoke-static {v0}, Lorg/catrobat/catroid/content/ActionFactory;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/EditLookAction;

    .line 1613
    .local v0, "action":Lorg/catrobat/catroid/content/actions/EditLookAction;
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 1614
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/EditLookAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 1615
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/EditLookAction;->nextLookAction(Lorg/catrobat/catroid/content/actions/SetNextLookAction;)V

    .line 1616
    return-object v0
.end method

.method public createFadeParticleEffectsAction(Lorg/catrobat/catroid/content/Sprite;Z)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 2
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "turnOn"    # Z

    .line 1268
    const-class v0, Lorg/catrobat/catroid/content/actions/FadeParticleEffectAction;

    invoke-static {v0}, Lorg/catrobat/catroid/content/ActionFactory;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/FadeParticleEffectAction;

    .line 1269
    .local v0, "action":Lorg/catrobat/catroid/content/actions/FadeParticleEffectAction;
    invoke-virtual {v0, p2}, Lorg/catrobat/catroid/content/actions/FadeParticleEffectAction;->setFadeIn(Z)V

    .line 1270
    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/actions/FadeParticleEffectAction;->setSprite(Lorg/catrobat/catroid/content/Sprite;)V

    .line 1271
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/ProjectManager;->getCurrentlyPlayingScene()Lorg/catrobat/catroid/content/Scene;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Scene;->getBackgroundSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/FadeParticleEffectAction;->setBackgroundSprite(Lorg/catrobat/catroid/content/Sprite;)V

    .line 1272
    return-object v0
.end method

.method public createFinishStageAction(Z)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 1
    .param p1, "silent"    # Z

    .line 1451
    const-class v0, Lorg/catrobat/catroid/content/actions/FinishStageAction;

    invoke-static {v0}, Lorg/catrobat/catroid/content/ActionFactory;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/FinishStageAction;

    .line 1452
    .local v0, "action":Lorg/catrobat/catroid/content/actions/FinishStageAction;
    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/actions/FinishStageAction;->setSilent(Z)V

    .line 1453
    return-object v0
.end method

.method public createFlashAction(Z)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 1
    .param p1, "flashOn"    # Z

    .line 1248
    const-class v0, Lorg/catrobat/catroid/content/actions/FlashAction;

    invoke-static {v0}, Lorg/catrobat/catroid/content/ActionFactory;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/FlashAction;

    .line 1249
    .local v0, "action":Lorg/catrobat/catroid/content/actions/FlashAction;
    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/actions/FlashAction;->setFlashOn(Z)V

    .line 1250
    return-object v0
.end method

.method public createForItemInUserListAction(Lorg/catrobat/catroid/formulaeditor/UserList;Lorg/catrobat/catroid/formulaeditor/UserVariable;Lcom/badlogic/gdx/scenes/scene2d/Action;Z)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 1
    .param p1, "userList"    # Lorg/catrobat/catroid/formulaeditor/UserList;
    .param p2, "userVariable"    # Lorg/catrobat/catroid/formulaeditor/UserVariable;
    .param p3, "repeatedAction"    # Lcom/badlogic/gdx/scenes/scene2d/Action;
    .param p4, "isLoopDelay"    # Z

    .line 1050
    const-class v0, Lorg/catrobat/catroid/content/actions/ForItemInUserListAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/ForItemInUserListAction;

    .line 1051
    .local v0, "action":Lorg/catrobat/catroid/content/actions/ForItemInUserListAction;
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/ForItemInUserListAction;->setAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 1052
    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/actions/ForItemInUserListAction;->setUserList(Lorg/catrobat/catroid/formulaeditor/UserList;)V

    .line 1053
    invoke-virtual {v0, p2}, Lorg/catrobat/catroid/content/actions/ForItemInUserListAction;->setCurrentItemVariable(Lorg/catrobat/catroid/formulaeditor/UserVariable;)V

    .line 1054
    invoke-virtual {v0, p4}, Lorg/catrobat/catroid/content/actions/ForItemInUserListAction;->setLoopDelay(Z)V

    .line 1055
    return-object v0
.end method

.method public createForVariableFromToAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/UserVariable;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;Lcom/badlogic/gdx/scenes/scene2d/Action;Z)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "controlVariable"    # Lorg/catrobat/catroid/formulaeditor/UserVariable;
    .param p4, "from"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p5, "to"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p6, "repeatedAction"    # Lcom/badlogic/gdx/scenes/scene2d/Action;
    .param p7, "isLoopDelay"    # Z

    .line 1038
    const-class v0, Lorg/catrobat/catroid/content/actions/ForVariableFromToAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/ForVariableFromToAction;

    .line 1039
    .local v0, "action":Lorg/catrobat/catroid/content/actions/ForVariableFromToAction;
    invoke-virtual {v0, p4, p5}, Lorg/catrobat/catroid/content/actions/ForVariableFromToAction;->setRange(Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 1040
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/ForVariableFromToAction;->setControlVariable(Lorg/catrobat/catroid/formulaeditor/UserVariable;)V

    .line 1041
    invoke-virtual {v0, p6}, Lorg/catrobat/catroid/content/actions/ForVariableFromToAction;->setAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 1042
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 1043
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/ForVariableFromToAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 1044
    invoke-virtual {v0, p7}, Lorg/catrobat/catroid/content/actions/ForVariableFromToAction;->setLoopDelay(Z)V

    .line 1045
    return-object v0
.end method

.method public createForeverAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;Z)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "foreverSequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;
    .param p4, "isLoopDelay"    # Z

    .line 1087
    const-class v0, Lorg/catrobat/catroid/content/actions/RepeatAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/RepeatAction;

    .line 1088
    .local v0, "action":Lorg/catrobat/catroid/content/actions/RepeatAction;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/RepeatAction;->setForeverRepeat(Z)V

    .line 1089
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/RepeatAction;->setAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 1090
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 1091
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/RepeatAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 1092
    invoke-virtual {v0, p4}, Lorg/catrobat/catroid/content/actions/RepeatAction;->setLoopDelay(Z)V

    .line 1093
    return-object v0
.end method

.method public createGlideToAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "x"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p4, "y"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p5, "duration"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 345
    const-class v0, Lorg/catrobat/catroid/content/actions/conditional/GlideToAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/conditional/GlideToAction;

    .line 346
    .local v0, "action":Lorg/catrobat/catroid/content/actions/conditional/GlideToAction;
    invoke-virtual {v0, p3, p4}, Lorg/catrobat/catroid/content/actions/conditional/GlideToAction;->setPosition(Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 347
    invoke-virtual {v0, p5}, Lorg/catrobat/catroid/content/actions/conditional/GlideToAction;->setDuration(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 348
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 349
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/conditional/GlideToAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 350
    return-object v0
.end method

.method public createGlideToPhysicsAction(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/physics/PhysicsLook;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;FF)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "physicsLook"    # Lorg/catrobat/catroid/physics/PhysicsLook;
    .param p3, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p4, "x"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p5, "y"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p6, "duration"    # F
    .param p7, "delta"    # F

    .line 743
    const-class v0, Lorg/catrobat/catroid/content/actions/GlideToPhysicsAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/GlideToPhysicsAction;

    .line 744
    .local v0, "action":Lorg/catrobat/catroid/content/actions/GlideToPhysicsAction;
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p3}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 745
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/GlideToPhysicsAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 746
    invoke-virtual {v0, p2}, Lorg/catrobat/catroid/content/actions/GlideToPhysicsAction;->setPhysicsLook(Lorg/catrobat/catroid/physics/PhysicsLook;)V

    .line 747
    invoke-virtual {v0, p4, p5}, Lorg/catrobat/catroid/content/actions/GlideToPhysicsAction;->setPosition(Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 748
    invoke-virtual {v0, p6}, Lorg/catrobat/catroid/content/actions/GlideToPhysicsAction;->setDuration(F)V

    .line 749
    invoke-virtual {v0, p7}, Lorg/catrobat/catroid/content/actions/GlideToPhysicsAction;->act(F)Z

    .line 750
    return-object v0
.end method

.method public createGoNStepsBackAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "steps"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 385
    const-class v0, Lorg/catrobat/catroid/content/actions/GoNStepsBackAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/GoNStepsBackAction;

    .line 386
    .local v0, "action":Lorg/catrobat/catroid/content/actions/GoNStepsBackAction;
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 387
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/GoNStepsBackAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 388
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/GoNStepsBackAction;->setSteps(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 389
    return-object v0
.end method

.method public createGoToAction(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/Sprite;I)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 1
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "destinationSprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p3, "spinnerSelection"    # I

    .line 364
    packed-switch p3, :pswitch_data_0

    .line 380
    const/4 v0, 0x0

    return-object v0

    .line 374
    :pswitch_0
    const-class v0, Lorg/catrobat/catroid/content/actions/GoToOtherSpritePositionAction;

    .line 375
    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/GoToOtherSpritePositionAction;

    .line 376
    .local v0, "otherSpritePositionAction":Lorg/catrobat/catroid/content/actions/GoToOtherSpritePositionAction;
    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/actions/GoToOtherSpritePositionAction;->setSprite(Lorg/catrobat/catroid/content/Sprite;)V

    .line 377
    invoke-virtual {v0, p2}, Lorg/catrobat/catroid/content/actions/GoToOtherSpritePositionAction;->setDestinationSprite(Lorg/catrobat/catroid/content/Sprite;)V

    .line 378
    return-object v0

    .line 370
    .end local v0    # "otherSpritePositionAction":Lorg/catrobat/catroid/content/actions/GoToOtherSpritePositionAction;
    :pswitch_1
    const-class v0, Lorg/catrobat/catroid/content/actions/GoToRandomPositionAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/GoToRandomPositionAction;

    .line 371
    .local v0, "randomPositionAction":Lorg/catrobat/catroid/content/actions/GoToRandomPositionAction;
    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/actions/GoToRandomPositionAction;->setSprite(Lorg/catrobat/catroid/content/Sprite;)V

    .line 372
    return-object v0

    .line 366
    .end local v0    # "randomPositionAction":Lorg/catrobat/catroid/content/actions/GoToRandomPositionAction;
    :pswitch_2
    const-class v0, Lorg/catrobat/catroid/content/actions/GoToTouchPositionAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/GoToTouchPositionAction;

    .line 367
    .local v0, "touchPositionAction":Lorg/catrobat/catroid/content/actions/GoToTouchPositionAction;
    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/actions/GoToTouchPositionAction;->setSprite(Lorg/catrobat/catroid/content/Sprite;)V

    .line 368
    return-object v0

    :pswitch_data_0
    .packed-switch 0x50
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public createHideAction(Lorg/catrobat/catroid/content/Sprite;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 2
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;

    .line 393
    const-class v0, Lorg/catrobat/catroid/content/actions/SetVisibleAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/SetVisibleAction;

    .line 394
    .local v0, "action":Lorg/catrobat/catroid/content/actions/SetVisibleAction;
    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/actions/SetVisibleAction;->setSprite(Lorg/catrobat/catroid/content/Sprite;)V

    .line 395
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/SetVisibleAction;->setVisible(Z)V

    .line 396
    return-object v0
.end method

.method public createHideVariableAction(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/formulaeditor/UserVariable;Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 1
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "userVariable"    # Lorg/catrobat/catroid/formulaeditor/UserVariable;
    .param p3, "androidStringProvider"    # Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;

    .line 1240
    const-class v0, Lorg/catrobat/catroid/content/actions/HideTextAction;

    invoke-static {v0}, Lorg/catrobat/catroid/content/ActionFactory;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/HideTextAction;

    .line 1241
    .local v0, "action":Lorg/catrobat/catroid/content/actions/HideTextAction;
    invoke-virtual {v0, p2}, Lorg/catrobat/catroid/content/actions/HideTextAction;->setVariableToHide(Lorg/catrobat/catroid/formulaeditor/UserVariable;)V

    .line 1242
    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/actions/HideTextAction;->setSprite(Lorg/catrobat/catroid/content/Sprite;)V

    .line 1243
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/HideTextAction;->setAndroidStringProvider(Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;)V

    .line 1244
    return-object v0
.end method

.method public createIfLogicAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "condition"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p4, "ifAction"    # Lcom/badlogic/gdx/scenes/scene2d/Action;
    .param p5, "elseAction"    # Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 1015
    const-class v0, Lorg/catrobat/catroid/content/actions/IfLogicAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/IfLogicAction;

    .line 1016
    .local v0, "action":Lorg/catrobat/catroid/content/actions/IfLogicAction;
    invoke-virtual {v0, p4}, Lorg/catrobat/catroid/content/actions/IfLogicAction;->setIfAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 1017
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/IfLogicAction;->setIfCondition(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 1018
    invoke-virtual {v0, p5}, Lorg/catrobat/catroid/content/actions/IfLogicAction;->setElseAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 1019
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 1020
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/IfLogicAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 1021
    return-object v0
.end method

.method public createIfOnEdgeBounceAction(Lorg/catrobat/catroid/content/Sprite;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 1
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;

    .line 400
    const-class v0, Lorg/catrobat/catroid/content/actions/conditional/IfOnEdgeBounceAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/conditional/IfOnEdgeBounceAction;

    .line 401
    .local v0, "action":Lorg/catrobat/catroid/content/actions/conditional/IfOnEdgeBounceAction;
    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/actions/conditional/IfOnEdgeBounceAction;->setSprite(Lorg/catrobat/catroid/content/Sprite;)V

    .line 402
    return-object v0
.end method

.method public createInsertItemIntoUserListAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/UserList;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "userListFormulaIndexToInsert"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p4, "userListFormulaItemToInsert"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p5, "userList"    # Lorg/catrobat/catroid/formulaeditor/UserList;

    .line 941
    const-class v0, Lorg/catrobat/catroid/content/actions/InsertItemIntoUserListAction;

    invoke-static {v0}, Lorg/catrobat/catroid/content/ActionFactory;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/InsertItemIntoUserListAction;

    .line 942
    .local v0, "action":Lorg/catrobat/catroid/content/actions/InsertItemIntoUserListAction;
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 943
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/InsertItemIntoUserListAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 944
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/InsertItemIntoUserListAction;->setFormulaIndexToInsert(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 945
    invoke-virtual {v0, p4}, Lorg/catrobat/catroid/content/actions/InsertItemIntoUserListAction;->setFormulaItemToInsert(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 946
    invoke-virtual {v0, p5}, Lorg/catrobat/catroid/content/actions/InsertItemIntoUserListAction;->setUserList(Lorg/catrobat/catroid/formulaeditor/UserList;)V

    .line 947
    return-object v0
.end method

.method public createLegoEv3MotorStopAction(Lorg/catrobat/catroid/content/bricks/LegoEv3MotorStopBrick$Motor;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 1
    .param p1, "motorEnum"    # Lorg/catrobat/catroid/content/bricks/LegoEv3MotorStopBrick$Motor;

    .line 452
    const-class v0, Lorg/catrobat/catroid/content/actions/LegoEv3MotorStopAction;

    invoke-static {v0}, Lorg/catrobat/catroid/content/ActionFactory;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/LegoEv3MotorStopAction;

    .line 453
    .local v0, "action":Lorg/catrobat/catroid/content/actions/LegoEv3MotorStopAction;
    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/actions/LegoEv3MotorStopAction;->setMotorEnum(Lorg/catrobat/catroid/content/bricks/LegoEv3MotorStopBrick$Motor;)V

    .line 454
    return-object v0
.end method

.method public createLegoEv3MotorTurnAngleAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/content/bricks/LegoEv3MotorTurnAngleBrick$Motor;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "motorEnum"    # Lorg/catrobat/catroid/content/bricks/LegoEv3MotorTurnAngleBrick$Motor;
    .param p4, "degrees"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 476
    const-class v0, Lorg/catrobat/catroid/content/actions/LegoEv3MotorTurnAngleAction;

    invoke-static {v0}, Lorg/catrobat/catroid/content/ActionFactory;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/LegoEv3MotorTurnAngleAction;

    .line 477
    .local v0, "action":Lorg/catrobat/catroid/content/actions/LegoEv3MotorTurnAngleAction;
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/LegoEv3MotorTurnAngleAction;->setMotorEnum(Lorg/catrobat/catroid/content/bricks/LegoEv3MotorTurnAngleBrick$Motor;)V

    .line 478
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 479
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/LegoEv3MotorTurnAngleAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 480
    invoke-virtual {v0, p4}, Lorg/catrobat/catroid/content/actions/LegoEv3MotorTurnAngleAction;->setDegrees(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 481
    return-object v0
.end method

.method public createLegoEv3PlayToneAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "hertz"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p4, "durationInSeconds"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p5, "volumeInPercent"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 465
    const-class v0, Lorg/catrobat/catroid/content/actions/LegoEv3PlayToneAction;

    invoke-static {v0}, Lorg/catrobat/catroid/content/ActionFactory;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/LegoEv3PlayToneAction;

    .line 466
    .local v0, "action":Lorg/catrobat/catroid/content/actions/LegoEv3PlayToneAction;
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/LegoEv3PlayToneAction;->setHertz(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 467
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 468
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/LegoEv3PlayToneAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 469
    invoke-virtual {v0, p4}, Lorg/catrobat/catroid/content/actions/LegoEv3PlayToneAction;->setDurationInSeconds(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 470
    invoke-virtual {v0, p5}, Lorg/catrobat/catroid/content/actions/LegoEv3PlayToneAction;->setVolumeInPercent(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 471
    return-object v0
.end method

.method public createLegoEv3SetLedAction(Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 1
    .param p1, "ledStatusEnum"    # Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;

    .line 458
    const-class v0, Lorg/catrobat/catroid/content/actions/LegoEv3SetLedAction;

    invoke-static {v0}, Lorg/catrobat/catroid/content/ActionFactory;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/LegoEv3SetLedAction;

    .line 459
    .local v0, "action":Lorg/catrobat/catroid/content/actions/LegoEv3SetLedAction;
    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/actions/LegoEv3SetLedAction;->setLedStatusEnum(Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;)V

    .line 460
    return-object v0
.end method

.method public createLegoEv3SingleMotorMoveAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick$Motor;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "motorEnum"    # Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick$Motor;
    .param p4, "speed"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 443
    const-class v0, Lorg/catrobat/catroid/content/actions/LegoEv3MotorMoveAction;

    invoke-static {v0}, Lorg/catrobat/catroid/content/ActionFactory;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/LegoEv3MotorMoveAction;

    .line 444
    .local v0, "action":Lorg/catrobat/catroid/content/actions/LegoEv3MotorMoveAction;
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 445
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/LegoEv3MotorMoveAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 446
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/LegoEv3MotorMoveAction;->setMotorEnum(Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick$Motor;)V

    .line 447
    invoke-virtual {v0, p4}, Lorg/catrobat/catroid/content/actions/LegoEv3MotorMoveAction;->setSpeed(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 448
    return-object v0
.end method

.method public createLegoNxtMotorMoveAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/content/bricks/LegoNxtMotorMoveBrick$Motor;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "motorEnum"    # Lorg/catrobat/catroid/content/bricks/LegoNxtMotorMoveBrick$Motor;
    .param p4, "speed"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 407
    const-class v0, Lorg/catrobat/catroid/content/actions/LegoNxtMotorMoveAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/LegoNxtMotorMoveAction;

    .line 408
    .local v0, "action":Lorg/catrobat/catroid/content/actions/LegoNxtMotorMoveAction;
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/LegoNxtMotorMoveAction;->setMotorEnum(Lorg/catrobat/catroid/content/bricks/LegoNxtMotorMoveBrick$Motor;)V

    .line 409
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 410
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/LegoNxtMotorMoveAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 411
    invoke-virtual {v0, p4}, Lorg/catrobat/catroid/content/actions/LegoNxtMotorMoveAction;->setSpeed(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 412
    return-object v0
.end method

.method public createLegoNxtMotorStopAction(Lorg/catrobat/catroid/content/bricks/LegoNxtMotorStopBrick$Motor;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 1
    .param p1, "motorEnum"    # Lorg/catrobat/catroid/content/bricks/LegoNxtMotorStopBrick$Motor;

    .line 416
    const-class v0, Lorg/catrobat/catroid/content/actions/LegoNxtMotorStopAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/LegoNxtMotorStopAction;

    .line 417
    .local v0, "action":Lorg/catrobat/catroid/content/actions/LegoNxtMotorStopAction;
    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/actions/LegoNxtMotorStopAction;->setMotorEnum(Lorg/catrobat/catroid/content/bricks/LegoNxtMotorStopBrick$Motor;)V

    .line 418
    return-object v0
.end method

.method public createLegoNxtMotorTurnAngleAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/content/bricks/LegoNxtMotorTurnAngleBrick$Motor;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "motorEnum"    # Lorg/catrobat/catroid/content/bricks/LegoNxtMotorTurnAngleBrick$Motor;
    .param p4, "degrees"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 423
    const-class v0, Lorg/catrobat/catroid/content/actions/LegoNxtMotorTurnAngleAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/LegoNxtMotorTurnAngleAction;

    .line 424
    .local v0, "action":Lorg/catrobat/catroid/content/actions/LegoNxtMotorTurnAngleAction;
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/LegoNxtMotorTurnAngleAction;->setMotorEnum(Lorg/catrobat/catroid/content/bricks/LegoNxtMotorTurnAngleBrick$Motor;)V

    .line 425
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 426
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/LegoNxtMotorTurnAngleAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 427
    invoke-virtual {v0, p4}, Lorg/catrobat/catroid/content/actions/LegoNxtMotorTurnAngleAction;->setDegrees(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 428
    return-object v0
.end method

.method public createLegoNxtPlayToneAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "hertz"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p4, "durationInSeconds"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 433
    const-class v0, Lorg/catrobat/catroid/content/actions/LegoNxtPlayToneAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/LegoNxtPlayToneAction;

    .line 434
    .local v0, "action":Lorg/catrobat/catroid/content/actions/LegoNxtPlayToneAction;
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/LegoNxtPlayToneAction;->setHertz(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 435
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 436
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/LegoNxtPlayToneAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 437
    invoke-virtual {v0, p4}, Lorg/catrobat/catroid/content/actions/LegoNxtPlayToneAction;->setDurationInSeconds(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 438
    return-object v0
.end method

.method public createLookRequestAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "variableFormula"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 1563
    const-class v0, Lorg/catrobat/catroid/content/actions/LookRequestAction;

    invoke-static {v0}, Lorg/catrobat/catroid/content/ActionFactory;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/LookRequestAction;

    .line 1564
    .local v0, "action":Lorg/catrobat/catroid/content/actions/LookRequestAction;
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 1565
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/LookRequestAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 1566
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/LookRequestAction;->setFormula(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 1567
    return-object v0
.end method

.method public createMoveNStepsAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "steps"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 544
    const-class v0, Lorg/catrobat/catroid/content/actions/MoveNStepsAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/MoveNStepsAction;

    .line 545
    .local v0, "action":Lorg/catrobat/catroid/content/actions/MoveNStepsAction;
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 546
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/MoveNStepsAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 547
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/MoveNStepsAction;->setSteps(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 548
    return-object v0
.end method

.method public createOpenUrlAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "variableFormula"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 1571
    const-class v0, Lorg/catrobat/catroid/content/actions/OpenUrlAction;

    invoke-static {v0}, Lorg/catrobat/catroid/content/ActionFactory;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/OpenUrlAction;

    .line 1572
    .local v0, "action":Lorg/catrobat/catroid/content/actions/OpenUrlAction;
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 1573
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/OpenUrlAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 1574
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/OpenUrlAction;->setFormula(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 1575
    return-object v0
.end method

.method public createPaintNewLookAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/content/actions/SetNextLookAction;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "variableFormula"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p4, "nextLookAction"    # Lorg/catrobat/catroid/content/actions/SetNextLookAction;

    .line 1592
    const-class v0, Lorg/catrobat/catroid/content/actions/PaintNewLookAction;

    invoke-static {v0}, Lorg/catrobat/catroid/content/ActionFactory;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/PaintNewLookAction;

    .line 1593
    .local v0, "action":Lorg/catrobat/catroid/content/actions/PaintNewLookAction;
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 1594
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/PaintNewLookAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 1595
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/PaintNewLookAction;->setFormula(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 1596
    invoke-virtual {v0, p4}, Lorg/catrobat/catroid/content/actions/PaintNewLookAction;->nextLookAction(Lorg/catrobat/catroid/content/actions/SetNextLookAction;)V

    .line 1597
    return-object v0
.end method

.method public createParameterizedAssertAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/UserList;Lorg/catrobat/catroid/common/ParameterizedData;Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "actual"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p4, "expected"    # Lorg/catrobat/catroid/formulaeditor/UserList;
    .param p5, "data"    # Lorg/catrobat/catroid/common/ParameterizedData;
    .param p6, "position"    # Ljava/lang/String;

    .line 1438
    const-class v0, Lorg/catrobat/catroid/content/actions/ParameterizedAssertAction;

    invoke-static {v0}, Lorg/catrobat/catroid/content/ActionFactory;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/ParameterizedAssertAction;

    .line 1439
    .local v0, "action":Lorg/catrobat/catroid/content/actions/ParameterizedAssertAction;
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/ParameterizedAssertAction;->setActualFormula(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 1440
    invoke-virtual {v0, p4}, Lorg/catrobat/catroid/content/actions/ParameterizedAssertAction;->setExpectedList(Lorg/catrobat/catroid/formulaeditor/UserList;)V

    .line 1441
    invoke-virtual {v0, p5}, Lorg/catrobat/catroid/content/actions/ParameterizedAssertAction;->setParameterizedData(Lorg/catrobat/catroid/common/ParameterizedData;)V

    .line 1443
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 1444
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/ParameterizedAssertAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 1445
    invoke-virtual {v0, p6}, Lorg/catrobat/catroid/content/actions/ParameterizedAssertAction;->setPosition(Ljava/lang/String;)V

    .line 1447
    return-object v0
.end method

.method public createPauseForBeatsAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "beats"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 808
    const-class v0, Lorg/catrobat/catroid/content/actions/PauseForBeatsAction;

    invoke-static {v0}, Lorg/catrobat/catroid/content/ActionFactory;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/PauseForBeatsAction;

    .line 809
    .local v0, "action":Lorg/catrobat/catroid/content/actions/PauseForBeatsAction;
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 810
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/PauseForBeatsAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 811
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/PauseForBeatsAction;->setBeats(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 812
    return-object v0
.end method

.method public createPenDownAction(Lorg/catrobat/catroid/content/Sprite;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 1
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;

    .line 552
    const-class v0, Lorg/catrobat/catroid/content/actions/PenDownAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/PenDownAction;

    .line 553
    .local v0, "action":Lorg/catrobat/catroid/content/actions/PenDownAction;
    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/actions/PenDownAction;->setSprite(Lorg/catrobat/catroid/content/Sprite;)V

    .line 554
    return-object v0
.end method

.method public createPenUpAction(Lorg/catrobat/catroid/content/Sprite;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 1
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;

    .line 558
    const-class v0, Lorg/catrobat/catroid/content/actions/PenUpAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/PenUpAction;

    .line 559
    .local v0, "action":Lorg/catrobat/catroid/content/actions/PenUpAction;
    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/actions/PenUpAction;->setSprite(Lorg/catrobat/catroid/content/Sprite;)V

    .line 560
    return-object v0
.end method

.method public createPhiroMotorMoveBackwardActionAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/content/bricks/PhiroMotorMoveBackwardBrick$Motor;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "motorEnum"    # Lorg/catrobat/catroid/content/bricks/PhiroMotorMoveBackwardBrick$Motor;
    .param p4, "speed"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 506
    const-class v0, Lorg/catrobat/catroid/content/actions/PhiroMotorMoveBackwardAction;

    invoke-static {v0}, Lorg/catrobat/catroid/content/ActionFactory;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/PhiroMotorMoveBackwardAction;

    .line 507
    .local v0, "action":Lorg/catrobat/catroid/content/actions/PhiroMotorMoveBackwardAction;
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/PhiroMotorMoveBackwardAction;->setMotorEnum(Lorg/catrobat/catroid/content/bricks/PhiroMotorMoveBackwardBrick$Motor;)V

    .line 508
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 509
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/PhiroMotorMoveBackwardAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 510
    invoke-virtual {v0, p4}, Lorg/catrobat/catroid/content/actions/PhiroMotorMoveBackwardAction;->setSpeed(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 511
    return-object v0
.end method

.method public createPhiroMotorMoveForwardActionAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/content/bricks/PhiroMotorMoveForwardBrick$Motor;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "motorEnum"    # Lorg/catrobat/catroid/content/bricks/PhiroMotorMoveForwardBrick$Motor;
    .param p4, "speed"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 496
    const-class v0, Lorg/catrobat/catroid/content/actions/PhiroMotorMoveForwardAction;

    invoke-static {v0}, Lorg/catrobat/catroid/content/ActionFactory;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/PhiroMotorMoveForwardAction;

    .line 497
    .local v0, "action":Lorg/catrobat/catroid/content/actions/PhiroMotorMoveForwardAction;
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/PhiroMotorMoveForwardAction;->setMotorEnum(Lorg/catrobat/catroid/content/bricks/PhiroMotorMoveForwardBrick$Motor;)V

    .line 498
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 499
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/PhiroMotorMoveForwardAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 500
    invoke-virtual {v0, p4}, Lorg/catrobat/catroid/content/actions/PhiroMotorMoveForwardAction;->setSpeed(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 501
    return-object v0
.end method

.method public createPhiroMotorStopActionAction(Lorg/catrobat/catroid/content/bricks/PhiroMotorStopBrick$Motor;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 1
    .param p1, "motorEnum"    # Lorg/catrobat/catroid/content/bricks/PhiroMotorStopBrick$Motor;

    .line 538
    const-class v0, Lorg/catrobat/catroid/content/actions/PhiroMotorStopAction;

    invoke-static {v0}, Lorg/catrobat/catroid/content/ActionFactory;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/PhiroMotorStopAction;

    .line 539
    .local v0, "action":Lorg/catrobat/catroid/content/actions/PhiroMotorStopAction;
    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/actions/PhiroMotorStopAction;->setMotorEnum(Lorg/catrobat/catroid/content/bricks/PhiroMotorStopBrick$Motor;)V

    .line 540
    return-object v0
.end method

.method public createPhiroPlayToneActionAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/content/bricks/PhiroPlayToneBrick$Tone;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "toneEnum"    # Lorg/catrobat/catroid/content/bricks/PhiroPlayToneBrick$Tone;
    .param p4, "duration"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 486
    const-class v0, Lorg/catrobat/catroid/content/actions/PhiroPlayToneAction;

    invoke-static {v0}, Lorg/catrobat/catroid/content/ActionFactory;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/PhiroPlayToneAction;

    .line 487
    .local v0, "action":Lorg/catrobat/catroid/content/actions/PhiroPlayToneAction;
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/PhiroPlayToneAction;->setSelectedTone(Lorg/catrobat/catroid/content/bricks/PhiroPlayToneBrick$Tone;)V

    .line 488
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 489
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/PhiroPlayToneAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 490
    invoke-virtual {v0, p4}, Lorg/catrobat/catroid/content/actions/PhiroPlayToneAction;->setDurationInSeconds(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 491
    return-object v0
.end method

.method public createPhiroRgbLedEyeActionAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$Eye;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "eye"    # Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$Eye;
    .param p4, "red"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p5, "green"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p6, "blue"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 516
    const-class v0, Lorg/catrobat/catroid/content/actions/PhiroRGBLightAction;

    invoke-static {v0}, Lorg/catrobat/catroid/content/ActionFactory;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/PhiroRGBLightAction;

    .line 517
    .local v0, "action":Lorg/catrobat/catroid/content/actions/PhiroRGBLightAction;
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 518
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/PhiroRGBLightAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 519
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/PhiroRGBLightAction;->setEyeEnum(Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$Eye;)V

    .line 520
    invoke-virtual {v0, p4}, Lorg/catrobat/catroid/content/actions/PhiroRGBLightAction;->setRed(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 521
    invoke-virtual {v0, p5}, Lorg/catrobat/catroid/content/actions/PhiroRGBLightAction;->setGreen(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 522
    invoke-virtual {v0, p6}, Lorg/catrobat/catroid/content/actions/PhiroRGBLightAction;->setBlue(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 523
    return-object v0
.end method

.method public createPhiroSendSelectedSensorAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;ILcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "sensorNumber"    # I
    .param p4, "ifAction"    # Lcom/badlogic/gdx/scenes/scene2d/Action;
    .param p5, "elseAction"    # Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 528
    const-class v0, Lorg/catrobat/catroid/content/actions/PhiroSensorAction;

    invoke-static {v0}, Lorg/catrobat/catroid/content/ActionFactory;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/PhiroSensorAction;

    .line 529
    .local v0, "action":Lorg/catrobat/catroid/content/actions/PhiroSensorAction;
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 530
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/PhiroSensorAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 531
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/PhiroSensorAction;->setSensor(I)V

    .line 532
    invoke-virtual {v0, p4}, Lorg/catrobat/catroid/content/actions/PhiroSensorAction;->setIfAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 533
    invoke-virtual {v0, p5}, Lorg/catrobat/catroid/content/actions/PhiroSensorAction;->setElseAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 534
    return-object v0
.end method

.method public createPlaceAtAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "x"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p4, "y"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 354
    const-class v0, Lorg/catrobat/catroid/content/actions/conditional/GlideToAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/conditional/GlideToAction;

    .line 355
    .local v0, "action":Lorg/catrobat/catroid/content/actions/conditional/GlideToAction;
    invoke-virtual {v0, p3, p4}, Lorg/catrobat/catroid/content/actions/conditional/GlideToAction;->setPosition(Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 356
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/conditional/GlideToAction;->setDuration(F)V

    .line 357
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/conditional/GlideToAction;->setInterpolation(Lcom/badlogic/gdx/math/Interpolation;)V

    .line 358
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 359
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/conditional/GlideToAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 360
    return-object v0
.end method

.method public createPlayDrumForBeatsAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "beats"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p4, "drum"    # Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

    .line 849
    const-class v0, Lorg/catrobat/catroid/content/actions/PlayDrumForBeatsAction;

    invoke-static {v0}, Lorg/catrobat/catroid/content/ActionFactory;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/PlayDrumForBeatsAction;

    .line 850
    .local v0, "action":Lorg/catrobat/catroid/content/actions/PlayDrumForBeatsAction;
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 851
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/PlayDrumForBeatsAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 852
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/PlayDrumForBeatsAction;->setBeats(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 853
    invoke-virtual {v0, p4}, Lorg/catrobat/catroid/content/actions/PlayDrumForBeatsAction;->setDrum(Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;)V

    .line 854
    return-object v0
.end method

.method public createPlayNoteForBeatsAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "note"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p4, "beats"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 817
    const-class v0, Lorg/catrobat/catroid/content/actions/PlayNoteForBeatsAction;

    invoke-static {v0}, Lorg/catrobat/catroid/content/ActionFactory;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/PlayNoteForBeatsAction;

    .line 818
    .local v0, "action":Lorg/catrobat/catroid/content/actions/PlayNoteForBeatsAction;
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 819
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/PlayNoteForBeatsAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 820
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/PlayNoteForBeatsAction;->setMidiValue(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 821
    invoke-virtual {v0, p4}, Lorg/catrobat/catroid/content/actions/PlayNoteForBeatsAction;->setBeats(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 822
    return-object v0
.end method

.method public createPlaySoundAction(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/common/SoundInfo;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 1
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sound"    # Lorg/catrobat/catroid/common/SoundInfo;

    .line 604
    const-class v0, Lorg/catrobat/catroid/content/actions/PlaySoundAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/PlaySoundAction;

    .line 605
    .local v0, "action":Lorg/catrobat/catroid/content/actions/PlaySoundAction;
    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/actions/PlaySoundAction;->setSprite(Lorg/catrobat/catroid/content/Sprite;)V

    .line 606
    invoke-virtual {v0, p2}, Lorg/catrobat/catroid/content/actions/PlaySoundAction;->setSound(Lorg/catrobat/catroid/common/SoundInfo;)V

    .line 607
    return-object v0
.end method

.method public createPointInDirectionAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "degrees"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 618
    const-class v0, Lorg/catrobat/catroid/content/actions/PointInDirectionAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/PointInDirectionAction;

    .line 619
    .local v0, "action":Lorg/catrobat/catroid/content/actions/PointInDirectionAction;
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 620
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/PointInDirectionAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 621
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/PointInDirectionAction;->setDegreesInUserInterfaceDimensionUnit(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 622
    return-object v0
.end method

.method public createPointToAction(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/Sprite;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 1
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "pointedSprite"    # Lorg/catrobat/catroid/content/Sprite;

    .line 626
    const-class v0, Lorg/catrobat/catroid/content/actions/PointToAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/PointToAction;

    .line 627
    .local v0, "action":Lorg/catrobat/catroid/content/actions/PointToAction;
    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/actions/PointToAction;->setSprite(Lorg/catrobat/catroid/content/Sprite;)V

    .line 628
    invoke-virtual {v0, p2}, Lorg/catrobat/catroid/content/actions/PointToAction;->setPointedSprite(Lorg/catrobat/catroid/content/Sprite;)V

    .line 629
    return-object v0
.end method

.method public createRaspiIfLogicActionAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "pinNumber"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p4, "ifAction"    # Lcom/badlogic/gdx/scenes/scene2d/Action;
    .param p5, "elseAction"    # Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 1345
    const-class v0, Lorg/catrobat/catroid/content/actions/RaspiIfLogicAction;

    invoke-static {v0}, Lorg/catrobat/catroid/content/ActionFactory;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/RaspiIfLogicAction;

    .line 1346
    .local v0, "action":Lorg/catrobat/catroid/content/actions/RaspiIfLogicAction;
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 1347
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/RaspiIfLogicAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 1348
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/RaspiIfLogicAction;->setPinNumber(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 1349
    invoke-virtual {v0, p4}, Lorg/catrobat/catroid/content/actions/RaspiIfLogicAction;->setIfAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 1350
    invoke-virtual {v0, p5}, Lorg/catrobat/catroid/content/actions/RaspiIfLogicAction;->setElseAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 1351
    return-object v0
.end method

.method public createReadListFromDeviceAction(Lorg/catrobat/catroid/formulaeditor/UserList;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 1
    .param p1, "userList"    # Lorg/catrobat/catroid/formulaeditor/UserList;

    .line 1545
    const-class v0, Lorg/catrobat/catroid/content/actions/ReadListFromDeviceAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/ReadListFromDeviceAction;

    .line 1546
    .local v0, "action":Lorg/catrobat/catroid/content/actions/ReadListFromDeviceAction;
    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/actions/ReadListFromDeviceAction;->setUserList(Lorg/catrobat/catroid/formulaeditor/UserList;)V

    .line 1548
    return-object v0
.end method

.method public createReadVariableFromDeviceAction(Lorg/catrobat/catroid/formulaeditor/UserVariable;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 1
    .param p1, "userVariable"    # Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .line 1538
    const-class v0, Lorg/catrobat/catroid/content/actions/ReadVariableFromDeviceAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/ReadVariableFromDeviceAction;

    .line 1539
    .local v0, "action":Lorg/catrobat/catroid/content/actions/ReadVariableFromDeviceAction;
    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/actions/ReadVariableFromDeviceAction;->setUserVariable(Lorg/catrobat/catroid/formulaeditor/UserVariable;)V

    .line 1541
    return-object v0
.end method

.method public createReadVariableFromFileAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/UserVariable;Z)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "variableFormula"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p4, "userVariable"    # Lorg/catrobat/catroid/formulaeditor/UserVariable;
    .param p5, "deleteFile"    # Z

    .line 1512
    const-class v0, Lorg/catrobat/catroid/content/actions/ReadVariableFromFileAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/ReadVariableFromFileAction;

    .line 1513
    .local v0, "action":Lorg/catrobat/catroid/content/actions/ReadVariableFromFileAction;
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 1514
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/ReadVariableFromFileAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 1515
    invoke-virtual {v0, p4}, Lorg/catrobat/catroid/content/actions/ReadVariableFromFileAction;->setUserVariable(Lorg/catrobat/catroid/formulaeditor/UserVariable;)V

    .line 1516
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/ReadVariableFromFileAction;->setFormula(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 1517
    invoke-virtual {v0, p5}, Lorg/catrobat/catroid/content/actions/ReadVariableFromFileAction;->setDeleteFile(Z)V

    .line 1519
    return-object v0
.end method

.method public createRepeatAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;Lcom/badlogic/gdx/scenes/scene2d/Action;Z)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "count"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p4, "repeatedAction"    # Lcom/badlogic/gdx/scenes/scene2d/Action;
    .param p5, "isLoopDelay"    # Z

    .line 1026
    const-class v0, Lorg/catrobat/catroid/content/actions/RepeatAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/RepeatAction;

    .line 1027
    .local v0, "action":Lorg/catrobat/catroid/content/actions/RepeatAction;
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/RepeatAction;->setRepeatCount(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 1028
    invoke-virtual {v0, p4}, Lorg/catrobat/catroid/content/actions/RepeatAction;->setAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 1029
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 1030
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/RepeatAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 1031
    invoke-virtual {v0, p5}, Lorg/catrobat/catroid/content/actions/RepeatAction;->setLoopDelay(Z)V

    .line 1032
    return-object v0
.end method

.method public createRepeatParameterizedAction(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/common/ParameterizedData;Ljava/util/List;Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/Action;Z)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 1
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "data"    # Lorg/catrobat/catroid/common/ParameterizedData;
    .param p4, "position"    # Ljava/lang/String;
    .param p5, "repeatedAction"    # Lcom/badlogic/gdx/scenes/scene2d/Action;
    .param p6, "isLoopDelay"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/catrobat/catroid/content/Sprite;",
            "Lorg/catrobat/catroid/common/ParameterizedData;",
            "Ljava/util/List<",
            "+",
            "Lkotlin/Pair<",
            "Lorg/catrobat/catroid/formulaeditor/UserList;",
            "Lorg/catrobat/catroid/formulaeditor/UserVariable;",
            ">;>;",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/scenes/scene2d/Action;",
            "Z)",
            "Lcom/badlogic/gdx/scenes/scene2d/Action;"
        }
    .end annotation

    .line 1424
    .local p3, "parameters":Ljava/util/List;, "Ljava/util/List<+Lkotlin/Pair<Lorg/catrobat/catroid/formulaeditor/UserList;Lorg/catrobat/catroid/formulaeditor/UserVariable;>;>;"
    const-class v0, Lorg/catrobat/catroid/content/actions/RepeatParameterizedAction;

    invoke-static {v0}, Lorg/catrobat/catroid/content/ActionFactory;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/RepeatParameterizedAction;

    .line 1425
    .local v0, "action":Lorg/catrobat/catroid/content/actions/RepeatParameterizedAction;
    invoke-virtual {v0, p2}, Lorg/catrobat/catroid/content/actions/RepeatParameterizedAction;->setParameterizedData(Lorg/catrobat/catroid/common/ParameterizedData;)V

    .line 1426
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/RepeatParameterizedAction;->setParameters(Ljava/util/List;)V

    .line 1427
    invoke-virtual {v0, p5}, Lorg/catrobat/catroid/content/actions/RepeatParameterizedAction;->setAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 1428
    invoke-virtual {v0, p6}, Lorg/catrobat/catroid/content/actions/RepeatParameterizedAction;->setLoopDelay(Z)V

    .line 1430
    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/actions/RepeatParameterizedAction;->setSprite(Lorg/catrobat/catroid/content/Sprite;)V

    .line 1431
    invoke-virtual {v0, p4}, Lorg/catrobat/catroid/content/actions/RepeatParameterizedAction;->setPosition(Ljava/lang/String;)V

    .line 1433
    return-object v0
.end method

.method public createRepeatUntilAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;Lcom/badlogic/gdx/scenes/scene2d/Action;Z)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "condition"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p4, "repeatedAction"    # Lcom/badlogic/gdx/scenes/scene2d/Action;
    .param p5, "isLoopDelay"    # Z

    .line 1068
    const-class v0, Lorg/catrobat/catroid/content/actions/RepeatUntilAction;

    invoke-static {v0}, Lorg/catrobat/catroid/content/ActionFactory;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/RepeatUntilAction;

    .line 1069
    .local v0, "action":Lorg/catrobat/catroid/content/actions/RepeatUntilAction;
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/RepeatUntilAction;->setRepeatCondition(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 1070
    invoke-virtual {v0, p4}, Lorg/catrobat/catroid/content/actions/RepeatUntilAction;->setAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 1071
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 1072
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/RepeatUntilAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 1073
    invoke-virtual {v0, p5}, Lorg/catrobat/catroid/content/actions/RepeatUntilAction;->setLoopDelay(Z)V

    .line 1074
    return-object v0
.end method

.method public createReplaceItemInUserListAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/UserList;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "userListFormulaIndexToReplace"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p4, "userListFormulaItemToInsert"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p5, "userList"    # Lorg/catrobat/catroid/formulaeditor/UserList;

    .line 964
    const-class v0, Lorg/catrobat/catroid/content/actions/ReplaceItemInUserListAction;

    invoke-static {v0}, Lorg/catrobat/catroid/content/ActionFactory;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/ReplaceItemInUserListAction;

    .line 965
    .local v0, "action":Lorg/catrobat/catroid/content/actions/ReplaceItemInUserListAction;
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 966
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/ReplaceItemInUserListAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 967
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/ReplaceItemInUserListAction;->setFormulaIndexToReplace(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 968
    invoke-virtual {v0, p4}, Lorg/catrobat/catroid/content/actions/ReplaceItemInUserListAction;->setFormulaItemToInsert(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 969
    invoke-virtual {v0, p5}, Lorg/catrobat/catroid/content/actions/ReplaceItemInUserListAction;->setUserList(Lorg/catrobat/catroid/formulaeditor/UserList;)V

    .line 970
    return-object v0
.end method

.method public createReportAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/content/Script;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "currentScript"    # Lorg/catrobat/catroid/content/Script;
    .param p4, "reportFormula"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 1371
    instance-of v0, p3, Lorg/catrobat/catroid/content/UserDefinedScript;

    if-eqz v0, :cond_0

    .line 1372
    const-class v0, Lorg/catrobat/catroid/content/actions/ReportAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/ReportAction;

    .line 1373
    .local v0, "reportAction":Lorg/catrobat/catroid/content/actions/ReportAction;
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 1374
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/ReportAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 1375
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/ReportAction;->setCurrentScript(Lorg/catrobat/catroid/content/Script;)V

    .line 1376
    invoke-virtual {v0, p4}, Lorg/catrobat/catroid/content/actions/ReportAction;->setReportFormula(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 1377
    return-object v0

    .line 1379
    .end local v0    # "reportAction":Lorg/catrobat/catroid/content/actions/ReportAction;
    .end local v1    # "scope":Lorg/catrobat/catroid/content/Scope;
    :cond_0
    const-class v0, Lorg/catrobat/catroid/content/actions/StopThisScriptAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/StopThisScriptAction;

    .line 1380
    .local v0, "stopThisScriptAction":Lorg/catrobat/catroid/content/actions/StopThisScriptAction;
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/StopThisScriptAction;->setCurrentScript(Lorg/catrobat/catroid/content/Script;)V

    .line 1381
    return-object v0
.end method

.method public createResetTimerAction()Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 1

    .line 974
    const-class v0, Lorg/catrobat/catroid/content/actions/ResetTimerAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    return-object v0
.end method

.method public createRunningStitchAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "length"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 1103
    const-class v0, Lorg/catrobat/catroid/content/actions/RunningStitchAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/RunningStitchAction;

    .line 1104
    .local v0, "action":Lorg/catrobat/catroid/content/actions/RunningStitchAction;
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 1105
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/RunningStitchAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 1106
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/RunningStitchAction;->setLength(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 1107
    return-object v0
.end method

.method public createSceneStartAction(Ljava/lang/String;Lorg/catrobat/catroid/content/Sprite;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 1
    .param p1, "sceneName"    # Ljava/lang/String;
    .param p2, "sprite"    # Lorg/catrobat/catroid/content/Sprite;

    .line 1007
    const-class v0, Lorg/catrobat/catroid/content/actions/SceneStartAction;

    invoke-static {v0}, Lorg/catrobat/catroid/content/ActionFactory;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/SceneStartAction;

    .line 1008
    .local v0, "action":Lorg/catrobat/catroid/content/actions/SceneStartAction;
    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/actions/SceneStartAction;->setScene(Ljava/lang/String;)V

    .line 1009
    invoke-virtual {v0, p2}, Lorg/catrobat/catroid/content/actions/SceneStartAction;->setSprite(Lorg/catrobat/catroid/content/Sprite;)V

    .line 1010
    return-object v0
.end method

.method public createSceneTransitionAction(Ljava/lang/String;Lorg/catrobat/catroid/content/Sprite;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 1
    .param p1, "sceneName"    # Ljava/lang/String;
    .param p2, "sprite"    # Lorg/catrobat/catroid/content/Sprite;

    .line 1000
    const-class v0, Lorg/catrobat/catroid/content/actions/SceneTransitionAction;

    invoke-static {v0}, Lorg/catrobat/catroid/content/ActionFactory;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/SceneTransitionAction;

    .line 1001
    .local v0, "action":Lorg/catrobat/catroid/content/actions/SceneTransitionAction;
    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/actions/SceneTransitionAction;->setScene(Ljava/lang/String;)V

    .line 1002
    invoke-virtual {v0, p2}, Lorg/catrobat/catroid/content/actions/SceneTransitionAction;->setSprite(Lorg/catrobat/catroid/content/Sprite;)V

    .line 1003
    return-object v0
.end method

.method public createSendDigitalArduinoValueAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "pinNumber"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p4, "pinValue"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 1304
    const-class v0, Lorg/catrobat/catroid/content/actions/ArduinoSendDigitalValueAction;

    invoke-static {v0}, Lorg/catrobat/catroid/content/ActionFactory;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/ArduinoSendDigitalValueAction;

    .line 1305
    .local v0, "action":Lorg/catrobat/catroid/content/actions/ArduinoSendDigitalValueAction;
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 1306
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/ArduinoSendDigitalValueAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 1307
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/ArduinoSendDigitalValueAction;->setPinNumber(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 1308
    invoke-virtual {v0, p4}, Lorg/catrobat/catroid/content/actions/ArduinoSendDigitalValueAction;->setPinValue(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 1309
    return-object v0
.end method

.method public createSendDigitalRaspiValueAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "pinNumber"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p4, "pinValue"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 1324
    const-class v0, Lorg/catrobat/catroid/content/actions/RaspiSendDigitalValueAction;

    invoke-static {v0}, Lorg/catrobat/catroid/content/ActionFactory;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/RaspiSendDigitalValueAction;

    .line 1325
    .local v0, "action":Lorg/catrobat/catroid/content/actions/RaspiSendDigitalValueAction;
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 1326
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/RaspiSendDigitalValueAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 1327
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/RaspiSendDigitalValueAction;->setPinNumber(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 1328
    invoke-virtual {v0, p4}, Lorg/catrobat/catroid/content/actions/RaspiSendDigitalValueAction;->setPinValue(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 1329
    return-object v0
.end method

.method public createSendPWMArduinoValueAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "pinNumber"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p4, "pinValue"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 1314
    const-class v0, Lorg/catrobat/catroid/content/actions/ArduinoSendPWMValueAction;

    invoke-static {v0}, Lorg/catrobat/catroid/content/ActionFactory;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/ArduinoSendPWMValueAction;

    .line 1315
    .local v0, "action":Lorg/catrobat/catroid/content/actions/ArduinoSendPWMValueAction;
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 1316
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/ArduinoSendPWMValueAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 1317
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/ArduinoSendPWMValueAction;->setPinNumber(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 1318
    invoke-virtual {v0, p4}, Lorg/catrobat/catroid/content/actions/ArduinoSendPWMValueAction;->setPinValue(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 1319
    return-object v0
.end method

.method public createSendRaspiPwmValueAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "pinNumber"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p4, "pwmFrequency"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p5, "pwmPercentage"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 1334
    const-class v0, Lorg/catrobat/catroid/content/actions/RaspiPwmAction;

    invoke-static {v0}, Lorg/catrobat/catroid/content/ActionFactory;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/RaspiPwmAction;

    .line 1335
    .local v0, "action":Lorg/catrobat/catroid/content/actions/RaspiPwmAction;
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 1336
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/RaspiPwmAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 1337
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/RaspiPwmAction;->setPinNumberFormula(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 1338
    invoke-virtual {v0, p4}, Lorg/catrobat/catroid/content/actions/RaspiPwmAction;->setPwmFrequencyFormula(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 1339
    invoke-virtual {v0, p5}, Lorg/catrobat/catroid/content/actions/RaspiPwmAction;->setPwmPercentageFormula(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 1340
    return-object v0
.end method

.method public createSetBackCameraAction()Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 1

    .line 1297
    const-class v0, Lorg/catrobat/catroid/content/actions/ChooseCameraAction;

    invoke-static {v0}, Lorg/catrobat/catroid/content/ActionFactory;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/ChooseCameraAction;

    .line 1298
    .local v0, "action":Lorg/catrobat/catroid/content/actions/ChooseCameraAction;
    invoke-virtual {v0}, Lorg/catrobat/catroid/content/actions/ChooseCameraAction;->setBackCamera()V

    .line 1299
    return-object v0
.end method

.method public createSetBackgroundAction(Lorg/catrobat/catroid/common/LookData;Z)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 2
    .param p1, "lookData"    # Lorg/catrobat/catroid/common/LookData;
    .param p2, "wait"    # Z

    .line 691
    const-class v0, Lorg/catrobat/catroid/content/actions/SetLookAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/SetLookAction;

    .line 692
    .local v0, "action":Lorg/catrobat/catroid/content/actions/SetLookAction;
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/ProjectManager;->getCurrentlyPlayingScene()Lorg/catrobat/catroid/content/Scene;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Scene;->getBackgroundSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/SetLookAction;->setSprite(Lorg/catrobat/catroid/content/Sprite;)V

    .line 693
    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/actions/SetLookAction;->setLookData(Lorg/catrobat/catroid/common/LookData;)V

    .line 694
    invoke-virtual {v0, p2}, Lorg/catrobat/catroid/content/actions/SetLookAction;->setWait(Z)V

    .line 695
    return-object v0
.end method

.method public createSetBackgroundByIndexAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;Z)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "formula"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p4, "wait"    # Z

    .line 700
    const-class v0, Lorg/catrobat/catroid/content/actions/SetLookByIndexAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/SetLookByIndexAction;

    .line 701
    .local v0, "action":Lorg/catrobat/catroid/content/actions/SetLookByIndexAction;
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/ProjectManager;->getCurrentlyPlayingScene()Lorg/catrobat/catroid/content/Scene;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Scene;->getBackgroundSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/SetLookByIndexAction;->setSprite(Lorg/catrobat/catroid/content/Sprite;)V

    .line 702
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 703
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/SetLookByIndexAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 704
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/SetLookByIndexAction;->setFormula(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 705
    invoke-virtual {v0, p4}, Lorg/catrobat/catroid/content/actions/SetLookByIndexAction;->setWait(Z)V

    .line 706
    return-object v0
.end method

.method public createSetBounceFactorAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 2
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "bounceFactor"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 1165
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No physics action available in non-physics sprite!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createSetBrightnessAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "brightness"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 645
    const-class v0, Lorg/catrobat/catroid/content/actions/SetBrightnessAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/SetBrightnessAction;

    .line 646
    .local v0, "action":Lorg/catrobat/catroid/content/actions/SetBrightnessAction;
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 647
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/SetBrightnessAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 648
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/SetBrightnessAction;->setBrightness(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 649
    return-object v0
.end method

.method public createSetCameraFocusPointAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "horizontal"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p4, "vertical"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 588
    const-class v0, Lorg/catrobat/catroid/content/actions/SetCameraFocusPointAction;

    invoke-static {v0}, Lorg/catrobat/catroid/content/ActionFactory;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/SetCameraFocusPointAction;

    .line 589
    .local v0, "action":Lorg/catrobat/catroid/content/actions/SetCameraFocusPointAction;
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 590
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/SetCameraFocusPointAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 591
    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/actions/SetCameraFocusPointAction;->setSprite(Lorg/catrobat/catroid/content/Sprite;)V

    .line 592
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/SetCameraFocusPointAction;->setHorizontal(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 593
    invoke-virtual {v0, p4}, Lorg/catrobat/catroid/content/actions/SetCameraFocusPointAction;->setVertical(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 594
    return-object v0
.end method

.method public createSetColorAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "color"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 653
    const-class v0, Lorg/catrobat/catroid/content/actions/SetColorAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/SetColorAction;

    .line 654
    .local v0, "action":Lorg/catrobat/catroid/content/actions/SetColorAction;
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 655
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/SetColorAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 656
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/SetColorAction;->setColor(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 657
    return-object v0
.end method

.method public createSetFrictionAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 2
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "friction"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 1198
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No physics action available in non-physics sprite!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createSetFrontCameraAction()Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 1

    .line 1291
    const-class v0, Lorg/catrobat/catroid/content/actions/ChooseCameraAction;

    invoke-static {v0}, Lorg/catrobat/catroid/content/ActionFactory;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/ChooseCameraAction;

    .line 1292
    .local v0, "action":Lorg/catrobat/catroid/content/actions/ChooseCameraAction;
    invoke-virtual {v0}, Lorg/catrobat/catroid/content/actions/ChooseCameraAction;->setFrontCamera()V

    .line 1293
    return-object v0
.end method

.method public createSetGravityAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 2
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "gravityX"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p4, "gravityY"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 1193
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No physics action available in non-physics sprite!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createSetInstrumentAction(Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 1
    .param p1, "instrument"    # Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

    .line 826
    const-class v0, Lorg/catrobat/catroid/content/actions/SetInstrumentAction;

    invoke-static {v0}, Lorg/catrobat/catroid/content/ActionFactory;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/SetInstrumentAction;

    .line 827
    .local v0, "action":Lorg/catrobat/catroid/content/actions/SetInstrumentAction;
    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/actions/SetInstrumentAction;->setInstrument(Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;)V

    .line 828
    return-object v0
.end method

.method public createSetListeningLanguageAction(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 1
    .param p1, "listeningLanguageTag"    # Ljava/lang/String;

    .line 1585
    const-class v0, Lorg/catrobat/catroid/content/actions/SetListeningLanguageAction;

    invoke-static {v0}, Lorg/catrobat/catroid/content/ActionFactory;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/SetListeningLanguageAction;

    .line 1586
    .local v0, "action":Lorg/catrobat/catroid/content/actions/SetListeningLanguageAction;
    iput-object p1, v0, Lorg/catrobat/catroid/content/actions/SetListeningLanguageAction;->listeningLanguageTag:Ljava/lang/String;

    .line 1587
    return-object v0
.end method

.method public createSetLookAction(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/common/LookData;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 1
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "lookData"    # Lorg/catrobat/catroid/common/LookData;

    .line 670
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/catrobat/catroid/content/ActionFactory;->createSetLookAction(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/common/LookData;Z)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    return-object v0
.end method

.method public createSetLookAction(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/common/LookData;Z)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 1
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "lookData"    # Lorg/catrobat/catroid/common/LookData;
    .param p3, "wait"    # Z

    .line 674
    const-class v0, Lorg/catrobat/catroid/content/actions/SetLookAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/SetLookAction;

    .line 675
    .local v0, "action":Lorg/catrobat/catroid/content/actions/SetLookAction;
    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/actions/SetLookAction;->setSprite(Lorg/catrobat/catroid/content/Sprite;)V

    .line 676
    invoke-virtual {v0, p2}, Lorg/catrobat/catroid/content/actions/SetLookAction;->setLookData(Lorg/catrobat/catroid/common/LookData;)V

    .line 677
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/SetLookAction;->setWait(Z)V

    .line 678
    return-object v0
.end method

.method public createSetLookByIndexAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "formula"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 682
    const-class v0, Lorg/catrobat/catroid/content/actions/SetLookByIndexAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/SetLookByIndexAction;

    .line 683
    .local v0, "action":Lorg/catrobat/catroid/content/actions/SetLookByIndexAction;
    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/actions/SetLookByIndexAction;->setSprite(Lorg/catrobat/catroid/content/Sprite;)V

    .line 684
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 685
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/SetLookByIndexAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 686
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/SetLookByIndexAction;->setFormula(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 687
    return-object v0
.end method

.method public createSetMassAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 2
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "mass"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 1188
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No physics action available in non-physics sprite!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createSetNextLookAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    .line 710
    const-class v0, Lorg/catrobat/catroid/content/actions/SetNextLookAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/SetNextLookAction;

    .line 711
    .local v0, "action":Lorg/catrobat/catroid/content/actions/SetNextLookAction;
    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/actions/SetNextLookAction;->setSprite(Lorg/catrobat/catroid/content/Sprite;)V

    .line 712
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 713
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/SetNextLookAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 714
    return-object v0
.end method

.method public createSetNfcTagAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;I)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "nfcNdefMessage"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p4, "nfcNdefSpinnerSelection"    # I

    .line 1386
    const-class v0, Lorg/catrobat/catroid/content/actions/SetNfcTagAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/SetNfcTagAction;

    .line 1387
    .local v0, "setNfcTagAction":Lorg/catrobat/catroid/content/actions/SetNfcTagAction;
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 1388
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/SetNfcTagAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 1389
    invoke-virtual {v0, p4}, Lorg/catrobat/catroid/content/actions/SetNfcTagAction;->setNfcTagNdefSpinnerSelection(I)V

    .line 1390
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/SetNfcTagAction;->setNfcNdefMessage(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 1391
    return-object v0
.end method

.method public createSetParticleColorAction(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/formulaeditor/Formula;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "color"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p3, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    .line 1283
    const-class v0, Lorg/catrobat/catroid/content/actions/SetParticleColorAction;

    invoke-static {v0}, Lorg/catrobat/catroid/content/ActionFactory;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/SetParticleColorAction;

    .line 1284
    .local v0, "action":Lorg/catrobat/catroid/content/actions/SetParticleColorAction;
    invoke-virtual {v0, p2}, Lorg/catrobat/catroid/content/actions/SetParticleColorAction;->setColor(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 1285
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p3}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 1286
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/SetParticleColorAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 1287
    return-object v0
.end method

.method public createSetPenColorAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "red"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p4, "green"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p5, "blue"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 573
    const-class v0, Lorg/catrobat/catroid/content/actions/SetPenColorAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/SetPenColorAction;

    .line 574
    .local v0, "action":Lorg/catrobat/catroid/content/actions/SetPenColorAction;
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 575
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/SetPenColorAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 576
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/SetPenColorAction;->setRed(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 577
    invoke-virtual {v0, p4}, Lorg/catrobat/catroid/content/actions/SetPenColorAction;->setGreen(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 578
    invoke-virtual {v0, p5}, Lorg/catrobat/catroid/content/actions/SetPenColorAction;->setBlue(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 579
    return-object v0
.end method

.method public createSetPenSizeAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "penSize"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 564
    const-class v0, Lorg/catrobat/catroid/content/actions/SetPenSizeAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/SetPenSizeAction;

    .line 565
    .local v0, "action":Lorg/catrobat/catroid/content/actions/SetPenSizeAction;
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 566
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/SetPenSizeAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 567
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/SetPenSizeAction;->setPenSize(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 568
    return-object v0
.end method

.method public createSetPhysicsObjectTypeAction(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/physics/PhysicsObject$Type;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 2
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "type"    # Lorg/catrobat/catroid/physics/PhysicsObject$Type;

    .line 1184
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No physics action available in non-physics sprite!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createSetPreviousLookAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    .line 718
    const-class v0, Lorg/catrobat/catroid/content/actions/SetPreviousLookAction;

    invoke-static {v0}, Lorg/catrobat/catroid/content/ActionFactory;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/SetPreviousLookAction;

    .line 719
    .local v0, "action":Lorg/catrobat/catroid/content/actions/SetPreviousLookAction;
    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/actions/SetPreviousLookAction;->setSprite(Lorg/catrobat/catroid/content/Sprite;)V

    .line 720
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 721
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/SetPreviousLookAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 722
    return-object v0
.end method

.method public createSetRotationStyleAction(Lorg/catrobat/catroid/content/Sprite;I)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 1
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "mode"    # I

    .line 325
    const-class v0, Lorg/catrobat/catroid/content/actions/SetRotationStyleAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/SetRotationStyleAction;

    .line 326
    .local v0, "action":Lorg/catrobat/catroid/content/actions/SetRotationStyleAction;
    invoke-virtual {v0, p2}, Lorg/catrobat/catroid/content/actions/SetRotationStyleAction;->setRotationStyle(I)V

    .line 327
    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/actions/SetRotationStyleAction;->setSprite(Lorg/catrobat/catroid/content/Sprite;)V

    .line 328
    return-object v0
.end method

.method public createSetSizeToAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "size"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 732
    const-class v0, Lorg/catrobat/catroid/content/actions/SetSizeToAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/SetSizeToAction;

    .line 733
    .local v0, "action":Lorg/catrobat/catroid/content/actions/SetSizeToAction;
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 734
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/SetSizeToAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 735
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/SetSizeToAction;->setSize(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 736
    return-object v0
.end method

.method public createSetTempoAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "tempo"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 832
    const-class v0, Lorg/catrobat/catroid/content/actions/SetTempoAction;

    invoke-static {v0}, Lorg/catrobat/catroid/content/ActionFactory;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/SetTempoAction;

    .line 833
    .local v0, "action":Lorg/catrobat/catroid/content/actions/SetTempoAction;
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 834
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/SetTempoAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 835
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/SetTempoAction;->setTempo(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 836
    return-object v0
.end method

.method public createSetTextAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "x"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p4, "y"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p5, "text"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 1202
    const-class v0, Lorg/catrobat/catroid/content/actions/SetTextAction;

    invoke-static {v0}, Lorg/catrobat/catroid/content/ActionFactory;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/SetTextAction;

    .line 1204
    .local v0, "action":Lorg/catrobat/catroid/content/actions/SetTextAction;
    invoke-virtual {v0, p3, p4}, Lorg/catrobat/catroid/content/actions/SetTextAction;->setPosition(Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 1205
    invoke-virtual {v0, p5}, Lorg/catrobat/catroid/content/actions/SetTextAction;->setText(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 1206
    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/SetTextAction;->setDuration(F)V

    .line 1207
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 1208
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/SetTextAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 1209
    return-object v0
.end method

.method public createSetThreadColorAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "color"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 1151
    const-class v0, Lorg/catrobat/catroid/content/actions/SetThreadColorAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/SetThreadColorAction;

    .line 1152
    .local v0, "action":Lorg/catrobat/catroid/content/actions/SetThreadColorAction;
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 1153
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/actions/SetThreadColorAction;->setSprite(Lorg/catrobat/catroid/content/Sprite;)V

    .line 1154
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/SetThreadColorAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 1155
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/SetThreadColorAction;->setColor(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 1156
    return-object v0
.end method

.method public createSetTransparencyAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "transparency"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 662
    const-class v0, Lorg/catrobat/catroid/content/actions/SetTransparencyAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/SetTransparencyAction;

    .line 663
    .local v0, "action":Lorg/catrobat/catroid/content/actions/SetTransparencyAction;
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 664
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/SetTransparencyAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 665
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/SetTransparencyAction;->setTransparency(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 666
    return-object v0
.end method

.method public createSetVariableAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/UserVariable;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "variableFormula"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p4, "userVariable"    # Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .line 884
    const-class v0, Lorg/catrobat/catroid/content/actions/SetVariableAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/SetVariableAction;

    .line 885
    .local v0, "action":Lorg/catrobat/catroid/content/actions/SetVariableAction;
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 886
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/SetVariableAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 887
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/SetVariableAction;->setChangeVariable(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 888
    invoke-virtual {v0, p4}, Lorg/catrobat/catroid/content/actions/SetVariableAction;->setUserVariable(Lorg/catrobat/catroid/formulaeditor/UserVariable;)V

    .line 889
    return-object v0
.end method

.method public createSetVelocityAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 2
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "velocityX"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p4, "velocityY"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 1180
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No physics action available in non-physics sprite!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createSetVolumeToAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "volume"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 754
    const-class v0, Lorg/catrobat/catroid/content/actions/SetVolumeToAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/SetVolumeToAction;

    .line 755
    .local v0, "action":Lorg/catrobat/catroid/content/actions/SetVolumeToAction;
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/SetVolumeToAction;->setVolume(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 756
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 757
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/SetVolumeToAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 758
    return-object v0
.end method

.method public createSetXAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "x"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 762
    const-class v0, Lorg/catrobat/catroid/content/actions/SetXAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/SetXAction;

    .line 763
    .local v0, "action":Lorg/catrobat/catroid/content/actions/SetXAction;
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 764
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/SetXAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 765
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/SetXAction;->setX(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 766
    return-object v0
.end method

.method public createSetYAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "y"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 770
    const-class v0, Lorg/catrobat/catroid/content/actions/SetYAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/SetYAction;

    .line 771
    .local v0, "action":Lorg/catrobat/catroid/content/actions/SetYAction;
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 772
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/SetYAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 773
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/SetYAction;->setY(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 774
    return-object v0
.end method

.method public createSewUpAction(Lorg/catrobat/catroid/content/Sprite;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 1
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;

    .line 1145
    const-class v0, Lorg/catrobat/catroid/content/actions/SewUpAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/SewUpAction;

    .line 1146
    .local v0, "action":Lorg/catrobat/catroid/content/actions/SewUpAction;
    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/actions/SewUpAction;->setSprite(Lorg/catrobat/catroid/content/Sprite;)V

    .line 1147
    return-object v0
.end method

.method public createShowAction(Lorg/catrobat/catroid/content/Sprite;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 2
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;

    .line 778
    const-class v0, Lorg/catrobat/catroid/content/actions/SetVisibleAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/SetVisibleAction;

    .line 779
    .local v0, "action":Lorg/catrobat/catroid/content/actions/SetVisibleAction;
    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/actions/SetVisibleAction;->setSprite(Lorg/catrobat/catroid/content/Sprite;)V

    .line 780
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/SetVisibleAction;->setVisible(Z)V

    .line 781
    return-object v0
.end method

.method public createShowVariableAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/UserVariable;Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "xPosition"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p4, "yPosition"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p5, "userVariable"    # Lorg/catrobat/catroid/formulaeditor/UserVariable;
    .param p6, "androidStringProvider"    # Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;

    .line 1214
    const-class v0, Lorg/catrobat/catroid/content/actions/ShowTextAction;

    invoke-static {v0}, Lorg/catrobat/catroid/content/ActionFactory;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/ShowTextAction;

    .line 1215
    .local v0, "action":Lorg/catrobat/catroid/content/actions/ShowTextAction;
    invoke-virtual {v0, p3, p4}, Lorg/catrobat/catroid/content/actions/ShowTextAction;->setPosition(Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 1216
    invoke-virtual {v0, p5}, Lorg/catrobat/catroid/content/actions/ShowTextAction;->setVariableToShow(Lorg/catrobat/catroid/formulaeditor/UserVariable;)V

    .line 1217
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 1218
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/ShowTextAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 1219
    invoke-virtual {v0, p6}, Lorg/catrobat/catroid/content/actions/ShowTextAction;->setAndroidStringProvider(Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;)V

    .line 1220
    return-object v0
.end method

.method public createShowVariableColorAndSizeAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/UserVariable;ILorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "xPosition"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p4, "yPosition"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p5, "relativeTextSize"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p6, "color"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p7, "userVariable"    # Lorg/catrobat/catroid/formulaeditor/UserVariable;
    .param p8, "alignment"    # I
    .param p9, "androidStringProvider"    # Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;

    .line 1226
    const-class v0, Lorg/catrobat/catroid/content/actions/ShowTextColorSizeAlignmentAction;

    invoke-static {v0}, Lorg/catrobat/catroid/content/ActionFactory;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/ShowTextColorSizeAlignmentAction;

    .line 1227
    .local v0, "action":Lorg/catrobat/catroid/content/actions/ShowTextColorSizeAlignmentAction;
    invoke-virtual {v0, p3, p4}, Lorg/catrobat/catroid/content/actions/ShowTextColorSizeAlignmentAction;->setPosition(Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 1228
    invoke-virtual {v0, p5}, Lorg/catrobat/catroid/content/actions/ShowTextColorSizeAlignmentAction;->setRelativeTextSize(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 1229
    invoke-virtual {v0, p6}, Lorg/catrobat/catroid/content/actions/ShowTextColorSizeAlignmentAction;->setColor(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 1230
    invoke-virtual {v0, p7}, Lorg/catrobat/catroid/content/actions/ShowTextColorSizeAlignmentAction;->setVariableToShow(Lorg/catrobat/catroid/formulaeditor/UserVariable;)V

    .line 1231
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 1232
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/ShowTextColorSizeAlignmentAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 1233
    invoke-virtual {v0, p8}, Lorg/catrobat/catroid/content/actions/ShowTextColorSizeAlignmentAction;->setAlignment(I)V

    .line 1234
    invoke-virtual {v0, p9}, Lorg/catrobat/catroid/content/actions/ShowTextColorSizeAlignmentAction;->setAndroidStringProvider(Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;)V

    .line 1235
    return-object v0
.end method

.method public createSpeakAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "text"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 785
    const-class v0, Lorg/catrobat/catroid/content/actions/SpeakAction;

    invoke-static {v0}, Lorg/catrobat/catroid/content/ActionFactory;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/SpeakAction;

    .line 786
    .local v0, "action":Lorg/catrobat/catroid/content/actions/SpeakAction;
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 787
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    new-instance v2, Lorg/catrobat/catroid/stage/SpeechSynthesizer;

    invoke-direct {v2, v1, p3}, Lorg/catrobat/catroid/stage/SpeechSynthesizer;-><init>(Lorg/catrobat/catroid/content/Scope;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    invoke-virtual {v0, v2}, Lorg/catrobat/catroid/content/actions/SpeakAction;->setSpeechSynthesizer(Lorg/catrobat/catroid/stage/SpeechSynthesizer;)V

    .line 788
    const-class v2, Lorg/catrobat/catroid/utils/MobileServiceAvailability;

    invoke-static {v2}, Lorg/koin/java/KoinJavaComponent;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/utils/MobileServiceAvailability;

    invoke-virtual {v0, v2}, Lorg/catrobat/catroid/content/actions/SpeakAction;->setMobileServiceAvailability(Lorg/catrobat/catroid/utils/MobileServiceAvailability;)V

    .line 789
    sget-object v2, Lorg/catrobat/catroid/stage/StageActivity;->activeStageActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v0, v2}, Lorg/catrobat/catroid/content/actions/SpeakAction;->setContext(Landroid/content/Context;)V

    .line 791
    return-object v0
.end method

.method public createSpeakAndWaitAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "text"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 795
    const-class v0, Lorg/catrobat/catroid/content/actions/SpeakAndWaitAction;

    invoke-static {v0}, Lorg/catrobat/catroid/content/ActionFactory;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/SpeakAndWaitAction;

    .line 796
    .local v0, "action":Lorg/catrobat/catroid/content/actions/SpeakAndWaitAction;
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 797
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    new-instance v2, Lorg/catrobat/catroid/stage/SpeechSynthesizer;

    invoke-direct {v2, v1, p3}, Lorg/catrobat/catroid/stage/SpeechSynthesizer;-><init>(Lorg/catrobat/catroid/content/Scope;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    invoke-virtual {v0, v2}, Lorg/catrobat/catroid/content/actions/SpeakAndWaitAction;->setSpeechSynthesizer(Lorg/catrobat/catroid/stage/SpeechSynthesizer;)V

    .line 798
    const-class v2, Lorg/catrobat/catroid/utils/MobileServiceAvailability;

    invoke-static {v2}, Lorg/koin/java/KoinJavaComponent;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/utils/MobileServiceAvailability;

    invoke-virtual {v0, v2}, Lorg/catrobat/catroid/content/actions/SpeakAndWaitAction;->setMobileServiceAvailability(Lorg/catrobat/catroid/utils/MobileServiceAvailability;)V

    .line 799
    sget-object v2, Lorg/catrobat/catroid/stage/StageActivity;->activeStageActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v0, v2}, Lorg/catrobat/catroid/content/actions/SpeakAndWaitAction;->setContext(Landroid/content/Context;)V

    .line 800
    return-object v0
.end method

.method public createStampAction(Lorg/catrobat/catroid/content/Sprite;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 1
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;

    .line 598
    const-class v0, Lorg/catrobat/catroid/content/actions/StampAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/StampAction;

    .line 599
    .local v0, "action":Lorg/catrobat/catroid/content/actions/StampAction;
    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/actions/StampAction;->setSprite(Lorg/catrobat/catroid/content/Sprite;)V

    .line 600
    return-object v0
.end method

.method public createStartListeningAction(Lorg/catrobat/catroid/formulaeditor/UserVariable;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 1
    .param p1, "userVariable"    # Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .line 1579
    const-class v0, Lorg/catrobat/catroid/content/actions/StartListeningAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/StartListeningAction;

    .line 1580
    .local v0, "action":Lorg/catrobat/catroid/content/actions/StartListeningAction;
    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/actions/StartListeningAction;->setUserVariable(Lorg/catrobat/catroid/formulaeditor/UserVariable;)V

    .line 1581
    return-object v0
.end method

.method public createStopAllSoundsAction()Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 1

    .line 804
    const-class v0, Lorg/catrobat/catroid/content/actions/StopAllSoundsAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    return-object v0
.end method

.method public createStopScriptAction(ILorg/catrobat/catroid/content/Script;Lorg/catrobat/catroid/content/Sprite;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 1
    .param p1, "spinnerSelection"    # I
    .param p2, "currentScript"    # Lorg/catrobat/catroid/content/Script;
    .param p3, "sprite"    # Lorg/catrobat/catroid/content/Sprite;

    .line 1355
    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 1366
    const-class v0, Lorg/catrobat/catroid/content/actions/StopAllScriptsAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    return-object v0

    .line 1361
    :cond_0
    const-class v0, Lorg/catrobat/catroid/content/actions/StopOtherScriptsAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/StopOtherScriptsAction;

    .line 1362
    .local v0, "stopOtherScriptsAction":Lorg/catrobat/catroid/content/actions/StopOtherScriptsAction;
    invoke-virtual {v0, p2}, Lorg/catrobat/catroid/content/actions/StopOtherScriptsAction;->setCurrentScript(Lorg/catrobat/catroid/content/Script;)V

    .line 1363
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/StopOtherScriptsAction;->setSprite(Lorg/catrobat/catroid/content/Sprite;)V

    .line 1364
    return-object v0

    .line 1357
    .end local v0    # "stopOtherScriptsAction":Lorg/catrobat/catroid/content/actions/StopOtherScriptsAction;
    :cond_1
    const-class v0, Lorg/catrobat/catroid/content/actions/StopThisScriptAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/StopThisScriptAction;

    .line 1358
    .local v0, "stopThisScriptAction":Lorg/catrobat/catroid/content/actions/StopThisScriptAction;
    invoke-virtual {v0, p2}, Lorg/catrobat/catroid/content/actions/StopThisScriptAction;->setCurrentScript(Lorg/catrobat/catroid/content/Script;)V

    .line 1359
    return-object v0
.end method

.method public createStopSoundAction(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/common/SoundInfo;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 1
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sound"    # Lorg/catrobat/catroid/common/SoundInfo;

    .line 611
    const-class v0, Lorg/catrobat/catroid/content/actions/StopSoundAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/StopSoundAction;

    .line 612
    .local v0, "action":Lorg/catrobat/catroid/content/actions/StopSoundAction;
    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/actions/StopSoundAction;->setSprite(Lorg/catrobat/catroid/content/Sprite;)V

    .line 613
    invoke-virtual {v0, p2}, Lorg/catrobat/catroid/content/actions/StopSoundAction;->setSound(Lorg/catrobat/catroid/common/SoundInfo;)V

    .line 614
    return-object v0
.end method

.method public createStoreCSVIntoUserListAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/UserList;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "userListFormulaColumn"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p4, "userListFormulaCSV"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p5, "userList"    # Lorg/catrobat/catroid/formulaeditor/UserList;

    .line 952
    const-class v0, Lorg/catrobat/catroid/content/actions/StoreCSVIntoUserListAction;

    invoke-static {v0}, Lorg/catrobat/catroid/content/ActionFactory;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/StoreCSVIntoUserListAction;

    .line 953
    .local v0, "action":Lorg/catrobat/catroid/content/actions/StoreCSVIntoUserListAction;
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 954
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/StoreCSVIntoUserListAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 955
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/StoreCSVIntoUserListAction;->setFormulaColumnToExtract(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 956
    invoke-virtual {v0, p4}, Lorg/catrobat/catroid/content/actions/StoreCSVIntoUserListAction;->setFormulaCSVData(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 957
    invoke-virtual {v0, p5}, Lorg/catrobat/catroid/content/actions/StoreCSVIntoUserListAction;->setUserList(Lorg/catrobat/catroid/formulaeditor/UserList;)V

    .line 958
    return-object v0
.end method

.method public createTapAtAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "x"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p4, "y"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 1457
    const-class v0, Lorg/catrobat/catroid/content/actions/TapAtAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/TapAtAction;

    .line 1458
    .local v0, "action":Lorg/catrobat/catroid/content/actions/TapAtAction;
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 1459
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/TapAtAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 1460
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/TapAtAction;->setStartX(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 1461
    invoke-virtual {v0, p4}, Lorg/catrobat/catroid/content/actions/TapAtAction;->setStartY(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 1462
    return-object v0
.end method

.method public createTapForAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "x"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p4, "y"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p5, "duration"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 1467
    const-class v0, Lorg/catrobat/catroid/content/actions/TapAtAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/TapAtAction;

    .line 1468
    .local v0, "action":Lorg/catrobat/catroid/content/actions/TapAtAction;
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 1469
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/TapAtAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 1470
    invoke-virtual {v0, p5}, Lorg/catrobat/catroid/content/actions/TapAtAction;->setDurationFormula(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 1471
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/TapAtAction;->setStartX(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 1472
    invoke-virtual {v0, p4}, Lorg/catrobat/catroid/content/actions/TapAtAction;->setStartY(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 1473
    return-object v0
.end method

.method public createThinkSayBubbleAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;Lorg/catrobat/catroid/formulaeditor/Formula;I)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "androidStringProvider"    # Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;
    .param p4, "text"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p5, "type"    # I

    .line 979
    const-class v0, Lorg/catrobat/catroid/content/actions/ThinkSayBubbleAction;

    invoke-static {v0}, Lorg/catrobat/catroid/content/ActionFactory;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/ThinkSayBubbleAction;

    .line 980
    .local v0, "action":Lorg/catrobat/catroid/content/actions/ThinkSayBubbleAction;
    invoke-virtual {v0, p4}, Lorg/catrobat/catroid/content/actions/ThinkSayBubbleAction;->setText(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 981
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 982
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/ThinkSayBubbleAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 983
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/ThinkSayBubbleAction;->setAndroidStringProvider(Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;)V

    .line 984
    invoke-virtual {v0, p5}, Lorg/catrobat/catroid/content/actions/ThinkSayBubbleAction;->setType(I)V

    .line 985
    return-object v0
.end method

.method public createThinkSayForBubbleAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;Lorg/catrobat/catroid/formulaeditor/Formula;I)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "androidStringProvider"    # Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;
    .param p4, "text"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p5, "type"    # I

    .line 990
    const-class v0, Lorg/catrobat/catroid/content/actions/ThinkSayBubbleAction;

    invoke-static {v0}, Lorg/catrobat/catroid/content/ActionFactory;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/ThinkSayBubbleAction;

    .line 991
    .local v0, "action":Lorg/catrobat/catroid/content/actions/ThinkSayBubbleAction;
    invoke-virtual {v0, p4}, Lorg/catrobat/catroid/content/actions/ThinkSayBubbleAction;->setText(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 992
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 993
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/ThinkSayBubbleAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 994
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/ThinkSayBubbleAction;->setAndroidStringProvider(Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;)V

    .line 995
    invoke-virtual {v0, p5}, Lorg/catrobat/catroid/content/actions/ThinkSayBubbleAction;->setType(I)V

    .line 996
    return-object v0
.end method

.method public createTouchAndSlideAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "x"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p4, "y"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p5, "xChange"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p6, "yChange"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p7, "duration"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 1478
    const-class v0, Lorg/catrobat/catroid/content/actions/TapAtAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/TapAtAction;

    .line 1479
    .local v0, "action":Lorg/catrobat/catroid/content/actions/TapAtAction;
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 1480
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/TapAtAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 1481
    invoke-virtual {v0, p7}, Lorg/catrobat/catroid/content/actions/TapAtAction;->setDurationFormula(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 1482
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/TapAtAction;->setStartX(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 1483
    invoke-virtual {v0, p4}, Lorg/catrobat/catroid/content/actions/TapAtAction;->setStartY(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 1484
    invoke-virtual {v0, p5}, Lorg/catrobat/catroid/content/actions/TapAtAction;->setChangeX(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 1485
    invoke-virtual {v0, p6}, Lorg/catrobat/catroid/content/actions/TapAtAction;->setChangeY(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 1486
    return-object v0
.end method

.method public createTripleStitchAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "steps"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 1111
    const-class v0, Lorg/catrobat/catroid/content/actions/TripleStitchAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/TripleStitchAction;

    .line 1112
    .local v0, "action":Lorg/catrobat/catroid/content/actions/TripleStitchAction;
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 1113
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/TripleStitchAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 1114
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/TripleStitchAction;->setSteps(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 1115
    return-object v0
.end method

.method public createTurnLeftAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "degrees"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 858
    const-class v0, Lorg/catrobat/catroid/content/actions/TurnLeftAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/TurnLeftAction;

    .line 859
    .local v0, "action":Lorg/catrobat/catroid/content/actions/TurnLeftAction;
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 860
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/TurnLeftAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 861
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/TurnLeftAction;->setDegrees(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 862
    return-object v0
.end method

.method public createTurnLeftSpeedAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 2
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "degreesPerSecond"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 1175
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No physics action available in non-physics sprite!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createTurnRightAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "degrees"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 866
    const-class v0, Lorg/catrobat/catroid/content/actions/TurnRightAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/TurnRightAction;

    .line 867
    .local v0, "action":Lorg/catrobat/catroid/content/actions/TurnRightAction;
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 868
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/TurnRightAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 869
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/TurnRightAction;->setDegrees(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 870
    return-object v0
.end method

.method public createTurnRightSpeedAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 2
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "degreesPerSecond"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 1170
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No physics action available in non-physics sprite!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createUpdateCameraPreviewAction(Z)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 1
    .param p1, "turnOn"    # Z

    .line 1262
    const-class v0, Lorg/catrobat/catroid/content/actions/CameraBrickAction;

    invoke-static {v0}, Lorg/catrobat/catroid/content/ActionFactory;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/CameraBrickAction;

    .line 1263
    .local v0, "action":Lorg/catrobat/catroid/content/actions/CameraBrickAction;
    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/actions/CameraBrickAction;->setActive(Z)V

    .line 1264
    return-object v0
.end method

.method public createUserBrickAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Ljava/util/List;Ljava/util/UUID;)Lorg/catrobat/catroid/content/actions/EventAction;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p4, "userDefinedBrickID"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/catrobat/catroid/content/Sprite;",
            "Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;",
            ">;",
            "Ljava/util/UUID;",
            ")",
            "Lorg/catrobat/catroid/content/actions/EventAction;"
        }
    .end annotation

    .line 221
    .local p3, "userDefinedBrickInputs":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;>;"
    const-class v0, Lorg/catrobat/catroid/content/actions/UserDefinedBrickAction;

    invoke-static {v0}, Lorg/catrobat/catroid/content/ActionFactory;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/UserDefinedBrickAction;

    .line 223
    .local v0, "action":Lorg/catrobat/catroid/content/actions/UserDefinedBrickAction;
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 224
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/UserDefinedBrickAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 225
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/UserDefinedBrickAction;->setInputs(Ljava/util/List;)V

    .line 226
    invoke-virtual {v0, p4}, Lorg/catrobat/catroid/content/actions/UserDefinedBrickAction;->setUserDefinedBrickID(Ljava/util/UUID;)V

    .line 227
    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/actions/UserDefinedBrickAction;->setSprite(Lorg/catrobat/catroid/content/Sprite;)V

    .line 228
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/catrobat/catroid/content/actions/UserDefinedBrickAction;->setWait(Z)V

    .line 229
    return-object v0
.end method

.method public createVibrateAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "duration"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 1254
    const-class v0, Lorg/catrobat/catroid/content/actions/VibrateAction;

    invoke-static {v0}, Lorg/catrobat/catroid/content/ActionFactory;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/VibrateAction;

    .line 1255
    .local v0, "action":Lorg/catrobat/catroid/content/actions/VibrateAction;
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 1256
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/VibrateAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 1257
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/VibrateAction;->setDuration(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 1258
    return-object v0
.end method

.method public createWaitAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "delay"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 240
    const-class v0, Lorg/catrobat/catroid/content/actions/WaitAction;

    invoke-static {v0}, Lorg/catrobat/catroid/content/ActionFactory;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/WaitAction;

    .line 241
    .local v0, "action":Lorg/catrobat/catroid/content/actions/WaitAction;
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 242
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/WaitAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 243
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/WaitAction;->setDelay(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 244
    return-object v0
.end method

.method public createWaitForBubbleBrickAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "delay"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 258
    const-class v0, Lorg/catrobat/catroid/content/actions/WaitForBubbleBrickAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/WaitForBubbleBrickAction;

    .line 259
    .local v0, "action":Lorg/catrobat/catroid/content/actions/WaitForBubbleBrickAction;
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 260
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/WaitForBubbleBrickAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 261
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/WaitForBubbleBrickAction;->setDelay(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 262
    return-object v0
.end method

.method public createWaitForSoundAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "delay"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p4, "soundFilePath"    # Ljava/lang/String;

    .line 249
    const-class v0, Lorg/catrobat/catroid/content/actions/WaitForSoundAction;

    invoke-static {v0}, Lorg/catrobat/catroid/content/ActionFactory;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/WaitForSoundAction;

    .line 250
    .local v0, "action":Lorg/catrobat/catroid/content/actions/WaitForSoundAction;
    invoke-virtual {v0, p4}, Lorg/catrobat/catroid/content/actions/WaitForSoundAction;->setSoundFilePath(Ljava/lang/String;)V

    .line 251
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 252
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/WaitForSoundAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 253
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/WaitForSoundAction;->setDelay(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 254
    return-object v0
.end method

.method public createWaitTillIdleAction()Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 1

    .line 1534
    const-class v0, Lorg/catrobat/catroid/content/actions/WaitTillIdleAction;

    invoke-static {v0}, Lorg/catrobat/catroid/content/ActionFactory;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    return-object v0
.end method

.method public createWaitUntilAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "condition"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 1059
    const-class v0, Lorg/catrobat/catroid/content/actions/WaitUntilAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/WaitUntilAction;

    .line 1060
    .local v0, "action":Lorg/catrobat/catroid/content/actions/WaitUntilAction;
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 1061
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/WaitUntilAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 1062
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/WaitUntilAction;->setCondition(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 1063
    return-object v0
.end method

.method public createWebRequestAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/UserVariable;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "variableFormula"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p4, "userVariable"    # Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .line 1553
    const-class v0, Lorg/catrobat/catroid/content/actions/WebRequestAction;

    invoke-static {v0}, Lorg/catrobat/catroid/content/ActionFactory;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/WebRequestAction;

    .line 1554
    .local v0, "action":Lorg/catrobat/catroid/content/actions/WebRequestAction;
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 1555
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/WebRequestAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 1556
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/WebRequestAction;->setFormula(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 1557
    invoke-virtual {v0, p4}, Lorg/catrobat/catroid/content/actions/WebRequestAction;->setUserVariable(Lorg/catrobat/catroid/formulaeditor/UserVariable;)V

    .line 1558
    return-object v0
.end method

.method public createWriteEmbroideryToFileAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "fileName"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 1136
    const-class v0, Lorg/catrobat/catroid/content/actions/WriteEmbroideryToFileAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/WriteEmbroideryToFileAction;

    .line 1137
    .local v0, "action":Lorg/catrobat/catroid/content/actions/WriteEmbroideryToFileAction;
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 1138
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/WriteEmbroideryToFileAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 1139
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/WriteEmbroideryToFileAction;->setFormula(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 1141
    return-object v0
.end method

.method public createWriteListOnDeviceAction(Lorg/catrobat/catroid/formulaeditor/UserList;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 4
    .param p1, "userList"    # Lorg/catrobat/catroid/formulaeditor/UserList;

    .line 1523
    const-class v0, Lorg/catrobat/catroid/content/actions/WriteUserDataOnDeviceAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/WriteUserDataOnDeviceAction;

    .line 1524
    .local v0, "action":Lorg/catrobat/catroid/content/actions/WriteUserDataOnDeviceAction;
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Project;->getDirectory()Ljava/io/File;

    move-result-object v1

    .line 1525
    .local v1, "projectDirectory":Ljava/io/File;
    new-instance v2, Lorg/catrobat/catroid/io/DeviceListAccessor;

    invoke-direct {v2, v1}, Lorg/catrobat/catroid/io/DeviceListAccessor;-><init>(Ljava/io/File;)V

    .line 1526
    .local v2, "accessor":Lorg/catrobat/catroid/io/DeviceUserDataAccessor;
    move-object v3, p1

    .line 1527
    .local v3, "data":Lorg/catrobat/catroid/formulaeditor/UserData;
    invoke-virtual {v0, v3}, Lorg/catrobat/catroid/content/actions/WriteUserDataOnDeviceAction;->setUserData(Lorg/catrobat/catroid/formulaeditor/UserData;)V

    .line 1528
    invoke-virtual {v0, v2}, Lorg/catrobat/catroid/content/actions/WriteUserDataOnDeviceAction;->setAccessor(Lorg/catrobat/catroid/io/DeviceUserDataAccessor;)V

    .line 1530
    return-object v0
.end method

.method public createWriteVariableOnDeviceAction(Lorg/catrobat/catroid/formulaeditor/UserVariable;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "userVariable"    # Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .line 1490
    const-class v0, Lorg/catrobat/catroid/content/actions/WriteUserDataOnDeviceAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/WriteUserDataOnDeviceAction;

    .line 1491
    .local v0, "action":Lorg/catrobat/catroid/content/actions/WriteUserDataOnDeviceAction;
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Project;->getDirectory()Ljava/io/File;

    move-result-object v1

    .line 1492
    .local v1, "projectDirectory":Ljava/io/File;
    new-instance v2, Lorg/catrobat/catroid/io/DeviceVariableAccessor;

    invoke-direct {v2, v1}, Lorg/catrobat/catroid/io/DeviceVariableAccessor;-><init>(Ljava/io/File;)V

    .line 1493
    .local v2, "accessor":Lorg/catrobat/catroid/io/DeviceVariableAccessor;
    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/actions/WriteUserDataOnDeviceAction;->setUserData(Lorg/catrobat/catroid/formulaeditor/UserData;)V

    .line 1494
    invoke-virtual {v0, v2}, Lorg/catrobat/catroid/content/actions/WriteUserDataOnDeviceAction;->setAccessor(Lorg/catrobat/catroid/io/DeviceUserDataAccessor;)V

    .line 1496
    return-object v0
.end method

.method public createWriteVariableToFileAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/UserVariable;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "variableFormula"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p4, "userVariable"    # Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .line 1501
    const-class v0, Lorg/catrobat/catroid/content/actions/WriteVariableToFileAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/WriteVariableToFileAction;

    .line 1502
    .local v0, "action":Lorg/catrobat/catroid/content/actions/WriteVariableToFileAction;
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 1503
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/WriteVariableToFileAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 1504
    invoke-virtual {v0, p4}, Lorg/catrobat/catroid/content/actions/WriteVariableToFileAction;->setUserVariable(Lorg/catrobat/catroid/formulaeditor/UserVariable;)V

    .line 1505
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/WriteVariableToFileAction;->setFormula(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 1507
    return-object v0
.end method

.method public createZigZagStitchAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .param p3, "length"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p4, "width"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 1120
    const-class v0, Lorg/catrobat/catroid/content/actions/ZigZagStitchAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/ZigZagStitchAction;

    .line 1121
    .local v0, "action":Lorg/catrobat/catroid/content/actions/ZigZagStitchAction;
    new-instance v1, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 1122
    .local v1, "scope":Lorg/catrobat/catroid/content/Scope;
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/ZigZagStitchAction;->setScope(Lorg/catrobat/catroid/content/Scope;)V

    .line 1123
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/actions/ZigZagStitchAction;->setLength(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 1124
    invoke-virtual {v0, p4}, Lorg/catrobat/catroid/content/actions/ZigZagStitchAction;->setWidth(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 1125
    return-object v0
.end method
