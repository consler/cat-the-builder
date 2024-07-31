.class public Lorg/catrobat/catroid/content/ConditionScriptTrigger;
.super Ljava/lang/Object;
.source "ConditionScriptTrigger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/content/ConditionScriptTrigger$TriggerStatus;
    }
.end annotation


# static fields
.field static final ALREADY_TRIGGERED:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field static final TRIGGER_NOW:I


# instance fields
.field private final formula:Lorg/catrobat/catroid/formulaeditor/Formula;

.field private status:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-class v0, Lorg/catrobat/catroid/content/ConditionScriptTrigger;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/content/ConditionScriptTrigger;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 1
    .param p1, "formula"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lorg/catrobat/catroid/content/ConditionScriptTrigger;->status:I

    .line 53
    iput-object p1, p0, Lorg/catrobat/catroid/content/ConditionScriptTrigger;->formula:Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 54
    return-void
.end method

.method private triggerScript(Lorg/catrobat/catroid/content/Sprite;)V
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;

    .line 71
    iget v0, p0, Lorg/catrobat/catroid/content/ConditionScriptTrigger;->status:I

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lorg/catrobat/catroid/content/EventWrapper;

    new-instance v1, Lorg/catrobat/catroid/content/eventids/WhenConditionEventId;

    iget-object v2, p0, Lorg/catrobat/catroid/content/ConditionScriptTrigger;->formula:Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/content/eventids/WhenConditionEventId;-><init>(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/catrobat/catroid/content/EventWrapper;-><init>(Lorg/catrobat/catroid/content/eventids/EventId;Z)V

    .line 73
    .local v0, "eventWrapper":Lorg/catrobat/catroid/content/EventWrapper;
    iget-object v1, p1, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-virtual {v1, v0}, Lorg/catrobat/catroid/content/Look;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    .line 74
    const/4 v1, 0x1

    iput v1, p0, Lorg/catrobat/catroid/content/ConditionScriptTrigger;->status:I

    .line 76
    .end local v0    # "eventWrapper":Lorg/catrobat/catroid/content/EventWrapper;
    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 80
    if-ne p0, p1, :cond_0

    .line 81
    const/4 v0, 0x1

    return v0

    .line 83
    :cond_0
    instance-of v0, p1, Lorg/catrobat/catroid/content/ConditionScriptTrigger;

    if-nez v0, :cond_1

    .line 84
    const/4 v0, 0x0

    return v0

    .line 86
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/catrobat/catroid/content/ConditionScriptTrigger;

    .line 87
    .local v0, "that":Lorg/catrobat/catroid/content/ConditionScriptTrigger;
    iget-object v1, p0, Lorg/catrobat/catroid/content/ConditionScriptTrigger;->formula:Lorg/catrobat/catroid/formulaeditor/Formula;

    iget-object v2, v0, Lorg/catrobat/catroid/content/ConditionScriptTrigger;->formula:Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method evaluateAndTriggerActions(Lorg/catrobat/catroid/content/Sprite;)V
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;

    .line 58
    :try_start_0
    new-instance v0, Lorg/catrobat/catroid/content/Scope;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 59
    .local v0, "scope":Lorg/catrobat/catroid/content/Scope;
    iget-object v1, p0, Lorg/catrobat/catroid/content/ConditionScriptTrigger;->formula:Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-virtual {v1, v0}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretBoolean(Lorg/catrobat/catroid/content/Scope;)Z

    move-result v1

    .line 60
    .local v1, "conditionValue":Z
    if-eqz v1, :cond_0

    .line 61
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/content/ConditionScriptTrigger;->triggerScript(Lorg/catrobat/catroid/content/Sprite;)V

    goto :goto_0

    .line 63
    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Lorg/catrobat/catroid/content/ConditionScriptTrigger;->status:I
    :try_end_0
    .catch Lorg/catrobat/catroid/formulaeditor/InterpretationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .end local v0    # "scope":Lorg/catrobat/catroid/content/Scope;
    .end local v1    # "conditionValue":Z
    :goto_0
    goto :goto_1

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    sget-object v1, Lorg/catrobat/catroid/content/ConditionScriptTrigger;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .end local v0    # "e":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    :goto_1
    return-void
.end method

.method public hashCode()I
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/catrobat/catroid/content/ConditionScriptTrigger;->formula:Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
