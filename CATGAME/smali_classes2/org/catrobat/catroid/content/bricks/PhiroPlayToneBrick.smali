.class public Lorg/catrobat/catroid/content/bricks/PhiroPlayToneBrick;
.super Lorg/catrobat/catroid/content/bricks/FormulaBrick;
.source "PhiroPlayToneBrick.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/content/bricks/PhiroPlayToneBrick$Tone;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private tone:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;-><init>()V

    .line 49
    sget-object v0, Lorg/catrobat/catroid/content/bricks/PhiroPlayToneBrick$Tone;->DO:Lorg/catrobat/catroid/content/bricks/PhiroPlayToneBrick$Tone;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/bricks/PhiroPlayToneBrick$Tone;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/content/bricks/PhiroPlayToneBrick;->tone:Ljava/lang/String;

    .line 50
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PHIRO_DURATION_IN_SECONDS:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const v1, 0x7f0a0196

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/PhiroPlayToneBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/content/bricks/PhiroPlayToneBrick$Tone;I)V
    .locals 2
    .param p1, "toneEnum"    # Lorg/catrobat/catroid/content/bricks/PhiroPlayToneBrick$Tone;
    .param p2, "duration"    # I

    .line 54
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    invoke-direct {p0, p1, v0}, Lorg/catrobat/catroid/content/bricks/PhiroPlayToneBrick;-><init>(Lorg/catrobat/catroid/content/bricks/PhiroPlayToneBrick$Tone;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/content/bricks/PhiroPlayToneBrick$Tone;Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 1
    .param p1, "toneEnum"    # Lorg/catrobat/catroid/content/bricks/PhiroPlayToneBrick$Tone;
    .param p2, "formula"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 58
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/PhiroPlayToneBrick;-><init>()V

    .line 59
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/bricks/PhiroPlayToneBrick$Tone;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/content/bricks/PhiroPlayToneBrick;->tone:Ljava/lang/String;

    .line 60
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PHIRO_DURATION_IN_SECONDS:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {p0, v0, p2}, Lorg/catrobat/catroid/content/bricks/PhiroPlayToneBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 61
    return-void
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 95
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getActionFactory()Lorg/catrobat/catroid/content/ActionFactory;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/PhiroPlayToneBrick;->tone:Ljava/lang/String;

    .line 96
    invoke-static {v1}, Lorg/catrobat/catroid/content/bricks/PhiroPlayToneBrick$Tone;->valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/content/bricks/PhiroPlayToneBrick$Tone;

    move-result-object v1

    sget-object v2, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PHIRO_DURATION_IN_SECONDS:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    .line 97
    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/content/bricks/PhiroPlayToneBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v2

    .line 95
    invoke-virtual {v0, p1, p2, v1, v2}, Lorg/catrobat/catroid/content/ActionFactory;->createPhiroPlayToneActionAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/content/bricks/PhiroPlayToneBrick$Tone;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 98
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getActionFactory()Lorg/catrobat/catroid/content/ActionFactory;

    move-result-object v0

    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PHIRO_DURATION_IN_SECONDS:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    .line 100
    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/content/bricks/PhiroPlayToneBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v1

    .line 99
    invoke-virtual {v0, p1, p2, v1}, Lorg/catrobat/catroid/content/ActionFactory;->createDelayAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    .line 98
    invoke-virtual {p2, v0}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 101
    return-void
.end method

.method public addRequiredResources(Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;)V
    .locals 1
    .param p1, "requiredResourcesSet"    # Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;

    .line 70
    const/16 v0, 0x14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;->add(Ljava/lang/Integer;)Z

    .line 71
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->addRequiredResources(Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;)V

    .line 72
    return-void
.end method

.method public getView(Landroid/content/Context;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 76
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->getView(Landroid/content/Context;)Landroid/view/View;

    .line 78
    const v0, 0x7f030008

    const v1, 0x1090008

    invoke-static {p1, v0, v1}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 80
    .local v0, "spinnerAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 82
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/PhiroPlayToneBrick;->view:Landroid/view/View;

    const v2, 0x7f0a01a1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 83
    .local v1, "spinner":Landroid/widget/Spinner;
    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 84
    new-instance v2, Lorg/catrobat/catroid/content/AdapterViewOnItemSelectedListenerImpl;

    new-instance v3, Lorg/catrobat/catroid/content/bricks/-$$Lambda$PhiroPlayToneBrick$kr4bac4wXFU2vj27MY7OTljLLkk;

    invoke-direct {v3, p0}, Lorg/catrobat/catroid/content/bricks/-$$Lambda$PhiroPlayToneBrick$kr4bac4wXFU2vj27MY7OTljLLkk;-><init>(Lorg/catrobat/catroid/content/bricks/PhiroPlayToneBrick;)V

    invoke-direct {v2, v3}, Lorg/catrobat/catroid/content/AdapterViewOnItemSelectedListenerImpl;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 88
    iget-object v2, p0, Lorg/catrobat/catroid/content/bricks/PhiroPlayToneBrick;->tone:Ljava/lang/String;

    invoke-static {v2}, Lorg/catrobat/catroid/content/bricks/PhiroPlayToneBrick$Tone;->valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/content/bricks/PhiroPlayToneBrick$Tone;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/bricks/PhiroPlayToneBrick$Tone;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 89
    iget-object v2, p0, Lorg/catrobat/catroid/content/bricks/PhiroPlayToneBrick;->view:Landroid/view/View;

    sget-object v3, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PHIRO_DURATION_IN_SECONDS:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {p0, v2, v3}, Lorg/catrobat/catroid/content/bricks/PhiroPlayToneBrick;->setSecondsLabel(Landroid/view/View;Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)V

    .line 90
    iget-object v2, p0, Lorg/catrobat/catroid/content/bricks/PhiroPlayToneBrick;->view:Landroid/view/View;

    return-object v2
.end method

.method public getViewResource()I
    .locals 1

    .line 65
    const v0, 0x7f0d00ab

    return v0
.end method

.method public synthetic lambda$getView$0$PhiroPlayToneBrick(Ljava/lang/Integer;)Lkotlin/Unit;
    .locals 2
    .param p1, "position"    # Ljava/lang/Integer;

    .line 85
    invoke-static {}, Lorg/catrobat/catroid/content/bricks/PhiroPlayToneBrick$Tone;->values()[Lorg/catrobat/catroid/content/bricks/PhiroPlayToneBrick$Tone;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/bricks/PhiroPlayToneBrick$Tone;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/content/bricks/PhiroPlayToneBrick;->tone:Ljava/lang/String;

    .line 86
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
