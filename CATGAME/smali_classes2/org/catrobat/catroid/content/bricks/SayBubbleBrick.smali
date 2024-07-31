.class public Lorg/catrobat/catroid/content/bricks/SayBubbleBrick;
.super Lorg/catrobat/catroid/content/bricks/ThinkBubbleBrick;
.source "SayBubbleBrick.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/ThinkBubbleBrick;-><init>()V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .line 42
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/content/bricks/ThinkBubbleBrick;-><init>(Ljava/lang/String;)V

    .line 43
    return-void
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 6
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 52
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getActionFactory()Lorg/catrobat/catroid/content/ActionFactory;

    move-result-object v0

    new-instance v3, Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;

    .line 53
    invoke-static {}, Lorg/catrobat/catroid/CatroidApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v3, v1}, Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;-><init>(Landroid/content/Context;)V

    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->STRING:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    .line 54
    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/content/bricks/SayBubbleBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v4

    .line 52
    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/catrobat/catroid/content/ActionFactory;->createThinkSayBubbleAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;Lorg/catrobat/catroid/formulaeditor/Formula;I)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 56
    return-void
.end method

.method public getViewResource()I
    .locals 1

    .line 47
    const v0, 0x7f0d00c9

    return v0
.end method
