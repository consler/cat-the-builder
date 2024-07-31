.class public Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick;
.super Lorg/catrobat/catroid/content/bricks/BrickBaseType;
.source "LegoEv3SetLedBrick.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private ledStatus:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/BrickBaseType;-><init>()V

    .line 50
    sget-object v0, Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;->LED_GREEN:Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick;->ledStatus:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;)V
    .locals 1
    .param p1, "ledStatusEnum"    # Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;

    .line 53
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/BrickBaseType;-><init>()V

    .line 54
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick;->ledStatus:Ljava/lang/String;

    .line 55
    return-void
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 2
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 87
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getActionFactory()Lorg/catrobat/catroid/content/ActionFactory;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick;->ledStatus:Ljava/lang/String;

    invoke-static {v1}, Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;->valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/ActionFactory;->createLegoEv3SetLedAction(Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 88
    return-void
.end method

.method public addRequiredResources(Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;)V
    .locals 1
    .param p1, "requiredResourcesSet"    # Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;

    .line 82
    const/16 v0, 0x14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;->add(Ljava/lang/Integer;)Z

    .line 83
    return-void
.end method

.method public getView(Landroid/content/Context;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 64
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/BrickBaseType;->getView(Landroid/content/Context;)Landroid/view/View;

    .line 66
    nop

    .line 67
    const v0, 0x7f030011

    const v1, 0x1090008

    invoke-static {p1, v0, v1}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 68
    .local v0, "spinnerAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 70
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick;->view:Landroid/view/View;

    const v2, 0x7f0a0113

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 71
    .local v1, "spinner":Landroid/widget/Spinner;
    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 72
    new-instance v2, Lorg/catrobat/catroid/content/AdapterViewOnItemSelectedListenerImpl;

    new-instance v3, Lorg/catrobat/catroid/content/bricks/-$$Lambda$LegoEv3SetLedBrick$o3WUYJ_M0ecl03EhcHR4ACjmWhs;

    invoke-direct {v3, p0}, Lorg/catrobat/catroid/content/bricks/-$$Lambda$LegoEv3SetLedBrick$o3WUYJ_M0ecl03EhcHR4ACjmWhs;-><init>(Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick;)V

    invoke-direct {v2, v3}, Lorg/catrobat/catroid/content/AdapterViewOnItemSelectedListenerImpl;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 76
    iget-object v2, p0, Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick;->ledStatus:Ljava/lang/String;

    invoke-static {v2}, Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;->valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 77
    iget-object v2, p0, Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick;->view:Landroid/view/View;

    return-object v2
.end method

.method public getViewResource()I
    .locals 1

    .line 59
    const v0, 0x7f0d0078

    return v0
.end method

.method public synthetic lambda$getView$0$LegoEv3SetLedBrick(Ljava/lang/Integer;)Lkotlin/Unit;
    .locals 2
    .param p1, "position"    # Ljava/lang/Integer;

    .line 73
    invoke-static {}, Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;->values()[Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick;->ledStatus:Ljava/lang/String;

    .line 74
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
