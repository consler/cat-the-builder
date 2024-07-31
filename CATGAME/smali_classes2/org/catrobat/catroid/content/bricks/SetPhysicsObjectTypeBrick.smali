.class public Lorg/catrobat/catroid/content/bricks/SetPhysicsObjectTypeBrick;
.super Lorg/catrobat/catroid/content/bricks/BrickBaseType;
.source "SetPhysicsObjectTypeBrick.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private type:Lorg/catrobat/catroid/physics/PhysicsObject$Type;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/BrickBaseType;-><init>()V

    .line 43
    sget-object v0, Lorg/catrobat/catroid/physics/PhysicsObject$Type;->NONE:Lorg/catrobat/catroid/physics/PhysicsObject$Type;

    iput-object v0, p0, Lorg/catrobat/catroid/content/bricks/SetPhysicsObjectTypeBrick;->type:Lorg/catrobat/catroid/physics/PhysicsObject$Type;

    .line 46
    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/physics/PhysicsObject$Type;)V
    .locals 1
    .param p1, "type"    # Lorg/catrobat/catroid/physics/PhysicsObject$Type;

    .line 48
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/BrickBaseType;-><init>()V

    .line 43
    sget-object v0, Lorg/catrobat/catroid/physics/PhysicsObject$Type;->NONE:Lorg/catrobat/catroid/physics/PhysicsObject$Type;

    iput-object v0, p0, Lorg/catrobat/catroid/content/bricks/SetPhysicsObjectTypeBrick;->type:Lorg/catrobat/catroid/physics/PhysicsObject$Type;

    .line 49
    iput-object p1, p0, Lorg/catrobat/catroid/content/bricks/SetPhysicsObjectTypeBrick;->type:Lorg/catrobat/catroid/physics/PhysicsObject$Type;

    .line 50
    return-void
.end method

.method private createAdapter(Landroid/content/Context;)Landroid/widget/ArrayAdapter;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 79
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090008

    invoke-direct {v0, p1, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 80
    .local v0, "arrayAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f03001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 83
    .local v4, "type":Ljava/lang/String;
    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 82
    .end local v4    # "type":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 86
    :cond_0
    return-object v0
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 2
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 91
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getActionFactory()Lorg/catrobat/catroid/content/ActionFactory;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/SetPhysicsObjectTypeBrick;->type:Lorg/catrobat/catroid/physics/PhysicsObject$Type;

    invoke-virtual {v0, p1, v1}, Lorg/catrobat/catroid/content/ActionFactory;->createSetPhysicsObjectTypeAction(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/physics/PhysicsObject$Type;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 92
    return-void
.end method

.method public addRequiredResources(Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;)V
    .locals 1
    .param p1, "requiredResourcesSet"    # Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;

    .line 54
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;->add(Ljava/lang/Integer;)Z

    .line 55
    return-void
.end method

.method public getType()Lorg/catrobat/catroid/physics/PhysicsObject$Type;
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/SetPhysicsObjectTypeBrick;->type:Lorg/catrobat/catroid/physics/PhysicsObject$Type;

    return-object v0
.end method

.method public getView(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 64
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/BrickBaseType;->getView(Landroid/content/Context;)Landroid/view/View;

    .line 66
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/SetPhysicsObjectTypeBrick;->view:Landroid/view/View;

    const v1, 0x7f0a0230

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 67
    .local v0, "spinner":Landroid/widget/Spinner;
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/content/bricks/SetPhysicsObjectTypeBrick;->createAdapter(Landroid/content/Context;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 68
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/SetPhysicsObjectTypeBrick;->type:Lorg/catrobat/catroid/physics/PhysicsObject$Type;

    invoke-virtual {v1}, Lorg/catrobat/catroid/physics/PhysicsObject$Type;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 69
    new-instance v1, Lorg/catrobat/catroid/content/AdapterViewOnItemSelectedListenerImpl;

    new-instance v2, Lorg/catrobat/catroid/content/bricks/-$$Lambda$SetPhysicsObjectTypeBrick$Pmcib7uCfZK7hbiESOmCV4ZxOoE;

    invoke-direct {v2, p0}, Lorg/catrobat/catroid/content/bricks/-$$Lambda$SetPhysicsObjectTypeBrick$Pmcib7uCfZK7hbiESOmCV4ZxOoE;-><init>(Lorg/catrobat/catroid/content/bricks/SetPhysicsObjectTypeBrick;)V

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/content/AdapterViewOnItemSelectedListenerImpl;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 75
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/SetPhysicsObjectTypeBrick;->view:Landroid/view/View;

    return-object v1
.end method

.method public getViewResource()I
    .locals 1

    .line 59
    const v0, 0x7f0d00b1

    return v0
.end method

.method public synthetic lambda$getView$0$SetPhysicsObjectTypeBrick(Ljava/lang/Integer;)Lkotlin/Unit;
    .locals 2
    .param p1, "position"    # Ljava/lang/Integer;

    .line 70
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {}, Lorg/catrobat/catroid/physics/PhysicsObject$Type;->values()[Lorg/catrobat/catroid/physics/PhysicsObject$Type;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 71
    invoke-static {}, Lorg/catrobat/catroid/physics/PhysicsObject$Type;->values()[Lorg/catrobat/catroid/physics/PhysicsObject$Type;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/catrobat/catroid/content/bricks/SetPhysicsObjectTypeBrick;->type:Lorg/catrobat/catroid/physics/PhysicsObject$Type;

    .line 73
    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
