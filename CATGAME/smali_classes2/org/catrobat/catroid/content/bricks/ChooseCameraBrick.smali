.class public final Lorg/catrobat/catroid/content/bricks/ChooseCameraBrick;
.super Lorg/catrobat/catroid/content/bricks/BrickBaseType;
.source "ChooseCameraBrick.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0018\u0010\u000e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000f2\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0008\u0010\u0015\u001a\u00020\u0016H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lorg/catrobat/catroid/content/bricks/ChooseCameraBrick;",
        "Lorg/catrobat/catroid/content/bricks/BrickBaseType;",
        "spinnerSelectionFRONT",
        "",
        "(Z)V",
        "addActionToSequence",
        "",
        "sprite",
        "Lorg/catrobat/catroid/content/Sprite;",
        "sequence",
        "Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;",
        "addRequiredResources",
        "requiredResourcesSet",
        "Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;",
        "createArrayAdapter",
        "Landroid/widget/ArrayAdapter;",
        "",
        "context",
        "Landroid/content/Context;",
        "getView",
        "Landroid/view/View;",
        "getViewResource",
        "",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private spinnerSelectionFRONT:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/catrobat/catroid/content/bricks/ChooseCameraBrick;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "spinnerSelectionFRONT"    # Z

    .line 35
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/BrickBaseType;-><init>()V

    iput-boolean p1, p0, Lorg/catrobat/catroid/content/bricks/ChooseCameraBrick;->spinnerSelectionFRONT:Z

    return-void
.end method

.method public synthetic constructor <init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    .line 35
    move p1, p3

    :cond_0
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/content/bricks/ChooseCameraBrick;-><init>(Z)V

    return-void
.end method

.method public static final synthetic access$getSpinnerSelectionFRONT$p(Lorg/catrobat/catroid/content/bricks/ChooseCameraBrick;)Z
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/catroid/content/bricks/ChooseCameraBrick;

    .line 35
    iget-boolean v0, p0, Lorg/catrobat/catroid/content/bricks/ChooseCameraBrick;->spinnerSelectionFRONT:Z

    return v0
.end method

.method public static final synthetic access$setSpinnerSelectionFRONT$p(Lorg/catrobat/catroid/content/bricks/ChooseCameraBrick;Z)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/catroid/content/bricks/ChooseCameraBrick;
    .param p1, "<set-?>"    # Z

    .line 35
    iput-boolean p1, p0, Lorg/catrobat/catroid/content/bricks/ChooseCameraBrick;->spinnerSelectionFRONT:Z

    return-void
.end method

.method private final createArrayAdapter(Landroid/content/Context;)Landroid/widget/ArrayAdapter;
    .locals 3
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

    .line 52
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 53
    const v1, 0x7f1201f0

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 54
    const v1, 0x7f1201f1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 52
    nop

    .line 56
    .local v0, "spinnerValues":[Ljava/lang/String;
    nop

    .line 57
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x1090008

    invoke-direct {v1, p1, v2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 56
    nop

    .line 58
    .local v1, "spinnerAdapter":Landroid/widget/ArrayAdapter;
    const v2, 0x1090009

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 59
    return-object v1
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 1
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    const-string v0, "sprite"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sequence"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-boolean v0, p0, Lorg/catrobat/catroid/content/bricks/ChooseCameraBrick;->spinnerSelectionFRONT:Z

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getActionFactory()Lorg/catrobat/catroid/content/ActionFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/ActionFactory;->createSetFrontCameraAction()Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getActionFactory()Lorg/catrobat/catroid/content/ActionFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/ActionFactory;->createSetBackCameraAction()Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 75
    :goto_0
    nop

    .line 76
    return-void
.end method

.method public addRequiredResources(Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;)V
    .locals 1
    .param p1, "requiredResourcesSet"    # Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;

    const-string v0, "requiredResourcesSet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-boolean v0, p0, Lorg/catrobat/catroid/content/bricks/ChooseCameraBrick;->spinnerSelectionFRONT:Z

    if-eqz v0, :cond_0

    .line 64
    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;->add(Ljava/lang/Integer;)Z

    goto :goto_0

    .line 66
    :cond_0
    const/16 v0, 0xb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;->add(Ljava/lang/Integer;)Z

    .line 67
    :goto_0
    nop

    .line 68
    return-void
.end method

.method public getView(Landroid/content/Context;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/BrickBaseType;->getView(Landroid/content/Context;)Landroid/view/View;

    .line 41
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/ChooseCameraBrick;->view:Landroid/view/View;

    const v1, 0x7f0a00ac

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .local v0, "$this$apply":Landroid/widget/Spinner;
    const/4 v1, 0x0

    .line 42
    .local v1, "$i$a$-apply-ChooseCameraBrick$getView$1":I
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/content/bricks/ChooseCameraBrick;->createArrayAdapter(Landroid/content/Context;)Landroid/widget/ArrayAdapter;

    move-result-object v2

    check-cast v2, Landroid/widget/SpinnerAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 43
    new-instance v2, Lorg/catrobat/catroid/content/AdapterViewOnItemSelectedListenerImpl;

    new-instance v3, Lorg/catrobat/catroid/content/bricks/ChooseCameraBrick$getView$$inlined$apply$lambda$1;

    invoke-direct {v3, p0, p1}, Lorg/catrobat/catroid/content/bricks/ChooseCameraBrick$getView$$inlined$apply$lambda$1;-><init>(Lorg/catrobat/catroid/content/bricks/ChooseCameraBrick;Landroid/content/Context;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-direct {v2, v3}, Lorg/catrobat/catroid/content/AdapterViewOnItemSelectedListenerImpl;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v2, Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 46
    iget-boolean v2, p0, Lorg/catrobat/catroid/content/bricks/ChooseCameraBrick;->spinnerSelectionFRONT:Z

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 47
    nop

    .line 41
    .end local v0    # "$this$apply":Landroid/widget/Spinner;
    .end local v1    # "$i$a$-apply-ChooseCameraBrick$getView$1":I
    nop

    .line 48
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/ChooseCameraBrick;->view:Landroid/view/View;

    const-string v1, "view"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getViewResource()I
    .locals 1

    .line 37
    const v0, 0x7f0d005c

    return v0
.end method
