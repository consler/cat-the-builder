.class public Lorg/catrobat/catroid/content/bricks/ThinkBubbleBrick;
.super Lorg/catrobat/catroid/content/bricks/FormulaBrick;
.source "ThinkBubbleBrick.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;-><init>()V

    .line 41
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->STRING:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const v1, 0x7f0a0089

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/ThinkBubbleBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 45
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-direct {v0, p1}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/content/bricks/ThinkBubbleBrick;-><init>(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 1
    .param p1, "formula"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 49
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/ThinkBubbleBrick;-><init>()V

    .line 50
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->STRING:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {p0, v0, p1}, Lorg/catrobat/catroid/content/bricks/ThinkBubbleBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 51
    return-void
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 6
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 60
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getActionFactory()Lorg/catrobat/catroid/content/ActionFactory;

    move-result-object v0

    new-instance v3, Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;

    .line 61
    invoke-static {}, Lorg/catrobat/catroid/CatroidApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v3, v1}, Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;-><init>(Landroid/content/Context;)V

    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->STRING:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/content/bricks/ThinkBubbleBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v4

    .line 60
    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/catrobat/catroid/content/ActionFactory;->createThinkSayBubbleAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;Lorg/catrobat/catroid/formulaeditor/Formula;I)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 63
    return-void
.end method

.method public getViewResource()I
    .locals 1

    .line 55
    const v0, 0x7f0d00f6

    return v0
.end method
