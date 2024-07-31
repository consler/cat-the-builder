.class public Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick;
.super Lorg/catrobat/catroid/content/bricks/UserVariableBrickWithVisualPlacement;
.source "ShowTextColorSizeAlignmentBrick.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick$ShowTextColorSizeAlignmentBrickCallback;,
        Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick$AlignmentStyle;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public alignmentSelection:I

.field private final transient showFormulaEditorStrategy:Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 71
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/UserVariableBrickWithVisualPlacement;-><init>()V

    .line 67
    const/4 v0, 0x1

    iput v0, p0, Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick;->alignmentSelection:I

    .line 72
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->X_POSITION:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const v1, 0x7f0a025b

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 73
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->Y_POSITION:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const v1, 0x7f0a025c

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 74
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->SIZE:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const v1, 0x7f0a025a

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 75
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->COLOR:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const v1, 0x7f0a0259

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 77
    new-instance v0, Lorg/catrobat/catroid/content/strategy/ShowColorPickerFormulaEditorStrategy;

    invoke-direct {v0}, Lorg/catrobat/catroid/content/strategy/ShowColorPickerFormulaEditorStrategy;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick;->showFormulaEditorStrategy:Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy;

    .line 78
    return-void
.end method

.method public constructor <init>(IIDLjava/lang/String;)V
    .locals 4
    .param p1, "xPosition"    # I
    .param p2, "yPosition"    # I
    .param p3, "size"    # D
    .param p5, "color"    # Ljava/lang/String;

    .line 81
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    new-instance v1, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    new-instance v2, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Double;)V

    new-instance v3, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-direct {v3, p5}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick;-><init>(Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 82
    return-void
.end method

.method private constructor <init>(Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 1
    .param p1, "xPosition"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p2, "yPosition"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p3, "size"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p4, "color"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 85
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick;-><init>()V

    .line 86
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->X_POSITION:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {p0, v0, p1}, Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 87
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->Y_POSITION:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {p0, v0, p2}, Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 88
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->SIZE:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {p0, v0, p3}, Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 89
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->COLOR:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {p0, v0, p4}, Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 90
    return-void
.end method

.method static synthetic access$200(Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick;
    .param p1, "x1"    # Landroid/view/View;

    .line 63
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick;->superShowFormulaEditor(Landroid/view/View;)V

    return-void
.end method

.method private getColor()Ljava/lang/String;
    .locals 1

    .line 172
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->COLOR:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/Formula;->getRoot()Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private sanitizeTextSize()F
    .locals 4

    .line 176
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->SIZE:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v0

    .line 177
    .local v0, "sizeFormula":Lorg/catrobat/catroid/formulaeditor/Formula;
    const/high16 v1, 0x3f800000    # 1.0f

    .line 179
    .local v1, "size":F
    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/Formula;->getRoot()Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->getElementType()Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    move-result-object v2

    sget-object v3, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    if-ne v2, v3, :cond_0

    .line 180
    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/Formula;->getRoot()Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float v1, v2, v3

    .line 182
    :cond_0
    const v2, 0x3dcccccd    # 0.1f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_1

    .line 183
    const/high16 v1, 0x3f800000    # 1.0f

    .line 186
    :cond_1
    return v1
.end method

.method private superShowFormulaEditor(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 107
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/UserVariableBrickWithVisualPlacement;->showFormulaEditorToEditFormula(Landroid/view/View;)V

    .line 108
    return-void
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 12
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 156
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick;->userVariable:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick;->userVariable:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/UserVariable;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 157
    :cond_0
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .line 158
    invoke-static {}, Lorg/catrobat/catroid/CatroidApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1205bf

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "NoVariableSet"

    invoke-direct {v0, v2, v1}, Lorg/catrobat/catroid/formulaeditor/UserVariable;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick;->userVariable:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .line 159
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick;->userVariable:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/formulaeditor/UserVariable;->setDummy(Z)V

    .line 162
    :cond_1
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getActionFactory()Lorg/catrobat/catroid/content/ActionFactory;

    move-result-object v2

    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->X_POSITION:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    .line 163
    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v5

    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->Y_POSITION:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    .line 164
    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v6

    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->SIZE:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    .line 165
    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v7

    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->COLOR:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    .line 166
    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v8

    iget-object v9, p0, Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick;->userVariable:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    iget v10, p0, Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick;->alignmentSelection:I

    new-instance v11, Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;

    .line 168
    invoke-static {}, Lorg/catrobat/catroid/CatroidApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v11, v0}, Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;-><init>(Landroid/content/Context;)V

    .line 162
    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v2 .. v11}, Lorg/catrobat/catroid/content/ActionFactory;->createShowVariableColorAndSizeAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/UserVariable;ILorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 169
    return-void
.end method

.method public generateIntentForVisualPlacement(Lorg/catrobat/catroid/content/bricks/Brick$BrickField;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)Landroid/content/Intent;
    .locals 3
    .param p1, "brickFieldX"    # Lorg/catrobat/catroid/content/bricks/Brick$BrickField;
    .param p2, "brickFieldY"    # Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    .line 201
    invoke-super {p0, p1, p2}, Lorg/catrobat/catroid/content/bricks/UserVariableBrickWithVisualPlacement;->generateIntentForVisualPlacement(Lorg/catrobat/catroid/content/bricks/Brick$BrickField;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)Landroid/content/Intent;

    move-result-object v0

    .line 202
    .local v0, "intent":Landroid/content/Intent;
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick;->getColor()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TEXT_COLOR"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick;->sanitizeTextSize()F

    move-result v1

    const-string v2, "TEXT_SIZE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 204
    iget v1, p0, Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick;->alignmentSelection:I

    const-string v2, "TEXT_ALIGNMENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 205
    return-object v0
.end method

.method public getDefaultBrickField()Lorg/catrobat/catroid/content/bricks/Brick$BrickField;
    .locals 1

    .line 93
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->X_POSITION:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    return-object v0
.end method

.method public bridge synthetic getDefaultBrickField()Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;
    .locals 1

    .line 63
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick;->getDefaultBrickField()Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    move-result-object v0

    return-object v0
.end method

.method protected getSpinnerId()I
    .locals 1

    .line 117
    const v0, 0x7f0a05b2

    return v0
.end method

.method public getView(Landroid/content/Context;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 122
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/UserVariableBrickWithVisualPlacement;->getView(Landroid/content/Context;)Landroid/view/View;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/common/Nameable;>;"
    new-instance v1, Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick$AlignmentStyle;

    const v2, 0x7f12014a

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick$AlignmentStyle;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    new-instance v1, Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick$AlignmentStyle;

    const v2, 0x7f120149

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick$AlignmentStyle;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    new-instance v1, Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick$AlignmentStyle;

    const v2, 0x7f12014b

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick$AlignmentStyle;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    new-instance v1, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;

    .line 128
    const v2, 0x7f0a0256

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick;->view:Landroid/view/View;

    invoke-direct {v1, v2, v3, v0}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;-><init>(Ljava/lang/Integer;Landroid/view/View;Ljava/util/List;)V

    .line 129
    .local v1, "spinner":Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;, "Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner<Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick$AlignmentStyle;>;"
    iget v2, p0, Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick;->alignmentSelection:I

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->setSelection(I)V

    .line 130
    new-instance v2, Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick$1;

    invoke-direct {v2, p0}, Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick$1;-><init>(Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick;)V

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->setOnItemSelectedListener(Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$OnItemSelectedListener;)V

    .line 151
    iget-object v2, p0, Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick;->view:Landroid/view/View;

    return-object v2
.end method

.method public getViewResource()I
    .locals 1

    .line 112
    const v0, 0x7f0d00e9

    return v0
.end method

.method public getXEditTextId()I
    .locals 1

    .line 191
    const v0, 0x7f0a025b

    return v0
.end method

.method public getYEditTextId()I
    .locals 1

    .line 196
    const v0, 0x7f0a025c

    return v0
.end method

.method public showFormulaEditorToEditFormula(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0259

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick;->getColor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/catrobat/catroid/utils/ShowTextUtils;->isValidColorString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    new-instance v0, Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick$ShowTextColorSizeAlignmentBrickCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick$ShowTextColorSizeAlignmentBrickCallback;-><init>(Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick;Landroid/view/View;Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick$1;)V

    .line 100
    .local v0, "callback":Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy$Callback;
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick;->showFormulaEditorStrategy:Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy;

    invoke-interface {v1, p1, v0}, Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy;->showFormulaEditorToEditFormula(Landroid/view/View;Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy$Callback;)V

    .line 101
    .end local v0    # "callback":Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy$Callback;
    goto :goto_0

    .line 102
    :cond_0
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick;->superShowFormulaEditor(Landroid/view/View;)V

    .line 104
    :goto_0
    return-void
.end method
