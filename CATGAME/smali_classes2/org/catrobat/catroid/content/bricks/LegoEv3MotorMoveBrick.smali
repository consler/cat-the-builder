.class public Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick;
.super Lorg/catrobat/catroid/content/bricks/FormulaBrick;
.source "LegoEv3MotorMoveBrick.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick$Motor;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private motor:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;-><init>()V

    .line 49
    sget-object v0, Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick$Motor;->MOTOR_A:Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick$Motor;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick$Motor;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick;->motor:Ljava/lang/String;

    .line 50
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->LEGO_EV3_SPEED:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const v1, 0x7f0a0376

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick$Motor;I)V
    .locals 2
    .param p1, "motorEnum"    # Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick$Motor;
    .param p2, "speedValue"    # I

    .line 54
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    invoke-direct {p0, p1, v0}, Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick;-><init>(Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick$Motor;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick$Motor;Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 1
    .param p1, "motorEnum"    # Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick$Motor;
    .param p2, "speed"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 58
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick;-><init>()V

    .line 59
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick$Motor;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick;->motor:Ljava/lang/String;

    .line 60
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->LEGO_EV3_SPEED:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {p0, v0, p2}, Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 61
    return-void
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 94
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getActionFactory()Lorg/catrobat/catroid/content/ActionFactory;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick;->motor:Ljava/lang/String;

    .line 95
    invoke-static {v1}, Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick$Motor;->valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick$Motor;

    move-result-object v1

    sget-object v2, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->LEGO_EV3_SPEED:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v2

    .line 94
    invoke-virtual {v0, p1, p2, v1, v2}, Lorg/catrobat/catroid/content/ActionFactory;->createLegoEv3SingleMotorMoveAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick$Motor;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 96
    return-void
.end method

.method public addRequiredResources(Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;)V
    .locals 1
    .param p1, "requiredResourcesSet"    # Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;

    .line 88
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;->add(Ljava/lang/Integer;)Z

    .line 89
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->addRequiredResources(Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;)V

    .line 90
    return-void
.end method

.method public getView(Landroid/content/Context;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 70
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->getView(Landroid/content/Context;)Landroid/view/View;

    .line 72
    nop

    .line 73
    const v0, 0x7f030012

    const v1, 0x1090008

    invoke-static {p1, v0, v1}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 74
    .local v0, "spinnerAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 76
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick;->view:Landroid/view/View;

    const v2, 0x7f0a010a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 77
    .local v1, "spinner":Landroid/widget/Spinner;
    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 78
    new-instance v2, Lorg/catrobat/catroid/content/AdapterViewOnItemSelectedListenerImpl;

    new-instance v3, Lorg/catrobat/catroid/content/bricks/-$$Lambda$LegoEv3MotorMoveBrick$P89MoutsvHjukEJnI6-dcVxdzFc;

    invoke-direct {v3, p0}, Lorg/catrobat/catroid/content/bricks/-$$Lambda$LegoEv3MotorMoveBrick$P89MoutsvHjukEJnI6-dcVxdzFc;-><init>(Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick;)V

    invoke-direct {v2, v3}, Lorg/catrobat/catroid/content/AdapterViewOnItemSelectedListenerImpl;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 82
    iget-object v2, p0, Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick;->motor:Ljava/lang/String;

    invoke-static {v2}, Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick$Motor;->valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick$Motor;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick$Motor;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 83
    iget-object v2, p0, Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick;->view:Landroid/view/View;

    return-object v2
.end method

.method public getViewResource()I
    .locals 1

    .line 65
    const v0, 0x7f0d0074

    return v0
.end method

.method public synthetic lambda$getView$0$LegoEv3MotorMoveBrick(Ljava/lang/Integer;)Lkotlin/Unit;
    .locals 2
    .param p1, "position"    # Ljava/lang/Integer;

    .line 79
    invoke-static {}, Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick$Motor;->values()[Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick$Motor;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick$Motor;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick;->motor:Ljava/lang/String;

    .line 80
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
