.class public Lorg/catrobat/catroid/content/actions/ThinkSayBubbleAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "ThinkSayBubbleAction.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private androidStringProvider:Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;

.field private scope:Lorg/catrobat/catroid/content/Scope;

.field private text:Lorg/catrobat/catroid/formulaeditor/Formula;

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lorg/catrobat/catroid/content/actions/ThinkSayBubbleAction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/content/actions/ThinkSayBubbleAction;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    return-void
.end method


# virtual methods
.method public createBubbleActor(Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;)Lorg/catrobat/catroid/stage/ShowBubbleActor;
    .locals 4
    .param p1, "stringProvider"    # Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/formulaeditor/InterpretationException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/ThinkSayBubbleAction;->text:Lorg/catrobat/catroid/formulaeditor/Formula;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/ThinkSayBubbleAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v0, p1, v1}, Lorg/catrobat/catroid/formulaeditor/Formula;->getUserFriendlyString(Lorg/catrobat/catroid/formulaeditor/Formula$StringProvider;Lorg/catrobat/catroid/content/Scope;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "textToDisplay":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    const/4 v1, 0x0

    return-object v1

    .line 68
    :cond_1
    new-instance v1, Lorg/catrobat/catroid/stage/ShowBubbleActor;

    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/ThinkSayBubbleAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Scope;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v2

    iget v3, p0, Lorg/catrobat/catroid/content/actions/ThinkSayBubbleAction;->type:I

    invoke-direct {v1, v0, v2, v3}, Lorg/catrobat/catroid/stage/ShowBubbleActor;-><init>(Ljava/lang/String;Lorg/catrobat/catroid/content/Sprite;I)V

    return-object v1
.end method

.method public setAndroidStringProvider(Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;)V
    .locals 0
    .param p1, "androidStringProvider"    # Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;

    .line 72
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/ThinkSayBubbleAction;->androidStringProvider:Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;

    .line 73
    return-void
.end method

.method public setScope(Lorg/catrobat/catroid/content/Scope;)V
    .locals 0
    .param p1, "scope"    # Lorg/catrobat/catroid/content/Scope;

    .line 76
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/ThinkSayBubbleAction;->scope:Lorg/catrobat/catroid/content/Scope;

    .line 77
    return-void
.end method

.method public setText(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 0
    .param p1, "text"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 80
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/ThinkSayBubbleAction;->text:Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 81
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .line 84
    iput p1, p0, Lorg/catrobat/catroid/content/actions/ThinkSayBubbleAction;->type:I

    .line 85
    return-void
.end method

.method protected update(F)V
    .locals 3
    .param p1, "delta"    # F

    .line 48
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/ThinkSayBubbleAction;->androidStringProvider:Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/actions/ThinkSayBubbleAction;->createBubbleActor(Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;)Lorg/catrobat/catroid/stage/ShowBubbleActor;

    move-result-object v0
    :try_end_0
    .catch Lorg/catrobat/catroid/formulaeditor/InterpretationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .local v0, "showBubbleActor":Lorg/catrobat/catroid/stage/ShowBubbleActor;
    nop

    .line 54
    sget-object v1, Lorg/catrobat/catroid/stage/StageActivity;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/ThinkSayBubbleAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Scope;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/stage/StageListener;->getBubbleActorForSprite(Lorg/catrobat/catroid/content/Sprite;)Lorg/catrobat/catroid/stage/ShowBubbleActor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 55
    sget-object v1, Lorg/catrobat/catroid/stage/StageActivity;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/ThinkSayBubbleAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Scope;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/stage/StageListener;->removeBubbleActorForSprite(Lorg/catrobat/catroid/content/Sprite;)V

    .line 57
    :cond_0
    if-eqz v0, :cond_1

    .line 58
    sget-object v1, Lorg/catrobat/catroid/stage/StageActivity;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/ThinkSayBubbleAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Scope;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/catrobat/catroid/stage/StageListener;->setBubbleActorForSprite(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/stage/ShowBubbleActor;)V

    .line 60
    :cond_1
    return-void

    .line 49
    .end local v0    # "showBubbleActor":Lorg/catrobat/catroid/stage/ShowBubbleActor;
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    sget-object v1, Lorg/catrobat/catroid/content/actions/ThinkSayBubbleAction;->TAG:Ljava/lang/String;

    const-string v2, "Failed to create Bubble Actor"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    return-void
.end method
