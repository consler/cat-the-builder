.class public Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
.source "ScriptSequenceAction.java"


# instance fields
.field protected final script:Lorg/catrobat/catroid/content/Script;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lorg/catrobat/catroid/content/Script;)V
    .locals 0
    .param p1, "action1"    # Lcom/badlogic/gdx/scenes/scene2d/Action;
    .param p2, "action2"    # Lcom/badlogic/gdx/scenes/scene2d/Action;
    .param p3, "action3"    # Lcom/badlogic/gdx/scenes/scene2d/Action;
    .param p4, "action4"    # Lcom/badlogic/gdx/scenes/scene2d/Action;
    .param p5, "action5"    # Lcom/badlogic/gdx/scenes/scene2d/Action;
    .param p6, "script"    # Lorg/catrobat/catroid/content/Script;

    .line 62
    invoke-direct/range {p0 .. p5}, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 63
    iput-object p6, p0, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->script:Lorg/catrobat/catroid/content/Script;

    .line 64
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lorg/catrobat/catroid/content/Script;)V
    .locals 0
    .param p1, "action1"    # Lcom/badlogic/gdx/scenes/scene2d/Action;
    .param p2, "action2"    # Lcom/badlogic/gdx/scenes/scene2d/Action;
    .param p3, "action3"    # Lcom/badlogic/gdx/scenes/scene2d/Action;
    .param p4, "action4"    # Lcom/badlogic/gdx/scenes/scene2d/Action;
    .param p5, "script"    # Lorg/catrobat/catroid/content/Script;

    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 58
    iput-object p5, p0, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->script:Lorg/catrobat/catroid/content/Script;

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lorg/catrobat/catroid/content/Script;)V
    .locals 0
    .param p1, "action1"    # Lcom/badlogic/gdx/scenes/scene2d/Action;
    .param p2, "action2"    # Lcom/badlogic/gdx/scenes/scene2d/Action;
    .param p3, "action3"    # Lcom/badlogic/gdx/scenes/scene2d/Action;
    .param p4, "script"    # Lorg/catrobat/catroid/content/Script;

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 53
    iput-object p4, p0, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->script:Lorg/catrobat/catroid/content/Script;

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lorg/catrobat/catroid/content/Script;)V
    .locals 0
    .param p1, "action1"    # Lcom/badlogic/gdx/scenes/scene2d/Action;
    .param p2, "action2"    # Lcom/badlogic/gdx/scenes/scene2d/Action;
    .param p3, "script"    # Lorg/catrobat/catroid/content/Script;

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 48
    iput-object p3, p0, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->script:Lorg/catrobat/catroid/content/Script;

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/Action;Lorg/catrobat/catroid/content/Script;)V
    .locals 0
    .param p1, "action1"    # Lcom/badlogic/gdx/scenes/scene2d/Action;
    .param p2, "script"    # Lorg/catrobat/catroid/content/Script;

    .line 42
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 43
    iput-object p2, p0, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->script:Lorg/catrobat/catroid/content/Script;

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/content/Script;)V
    .locals 0
    .param p1, "script"    # Lorg/catrobat/catroid/content/Script;

    .line 37
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->script:Lorg/catrobat/catroid/content/Script;

    .line 39
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 34
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->clone()Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;
    .locals 3

    .line 71
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->script:Lorg/catrobat/catroid/content/Script;

    invoke-static {v0}, Lorg/catrobat/catroid/content/ActionFactory;->createScriptSequenceAction(Lorg/catrobat/catroid/content/Script;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 72
    .local v0, "copy":Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->getActions()Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 73
    .local v2, "childAction":Lcom/badlogic/gdx/scenes/scene2d/Action;
    invoke-virtual {v0, v2}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 74
    .end local v2    # "childAction":Lcom/badlogic/gdx/scenes/scene2d/Action;
    goto :goto_0

    .line 75
    :cond_0
    return-object v0
.end method

.method public cloneAndChangeScript(Lorg/catrobat/catroid/content/Script;)Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;
    .locals 3
    .param p1, "script"    # Lorg/catrobat/catroid/content/Script;

    .line 79
    invoke-static {p1}, Lorg/catrobat/catroid/content/ActionFactory;->createScriptSequenceAction(Lorg/catrobat/catroid/content/Script;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 80
    .local v0, "copy":Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->getActions()Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 81
    .local v2, "childAction":Lcom/badlogic/gdx/scenes/scene2d/Action;
    invoke-virtual {v0, v2}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 82
    .end local v2    # "childAction":Lcom/badlogic/gdx/scenes/scene2d/Action;
    goto :goto_0

    .line 83
    :cond_0
    return-object v0
.end method

.method public getScript()Lorg/catrobat/catroid/content/Script;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->script:Lorg/catrobat/catroid/content/Script;

    return-object v0
.end method
