.class public final Lorg/catrobat/catroid/content/bricks/ReadVariableFromFileBrick;
.super Lorg/catrobat/catroid/content/bricks/UserVariableBrickWithFormula;
.source "ReadVariableFromFileBrick.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/content/bricks/ReadVariableFromFileBrick$Mode;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u000f\u0008\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007B\u0005\u00a2\u0006\u0002\u0010\u0008J\u0018\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0010\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0018\u0010\u0014\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0008\u0010\u0018\u001a\u00020\nH\u0014J\u0010\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0008\u0010\u001b\u001a\u00020\nH\u0016R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lorg/catrobat/catroid/content/bricks/ReadVariableFromFileBrick;",
        "Lorg/catrobat/catroid/content/bricks/UserVariableBrickWithFormula;",
        "value",
        "",
        "(Ljava/lang/String;)V",
        "formula",
        "Lorg/catrobat/catroid/formulaeditor/Formula;",
        "(Lorg/catrobat/catroid/formulaeditor/Formula;)V",
        "()V",
        "spinnerSelectionID",
        "",
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
        "context",
        "Landroid/content/Context;",
        "getSpinnerId",
        "getView",
        "Landroid/view/View;",
        "getViewResource",
        "Mode",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field private static final DELETE:I = 0x1

.field private static final KEEP:I

.field public static final Mode:Lorg/catrobat/catroid/content/bricks/ReadVariableFromFileBrick$Mode;


# instance fields
.field private spinnerSelectionID:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/catroid/content/bricks/ReadVariableFromFileBrick$Mode;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/content/bricks/ReadVariableFromFileBrick$Mode;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/catroid/content/bricks/ReadVariableFromFileBrick;->Mode:Lorg/catrobat/catroid/content/bricks/ReadVariableFromFileBrick$Mode;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/UserVariableBrickWithFormula;-><init>()V

    .line 44
    nop

    .line 45
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->READ_FILENAME:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    check-cast v0, Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    const v1, 0x7f0a01c9

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/ReadVariableFromFileBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-direct {v0, p1}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/content/bricks/ReadVariableFromFileBrick;-><init>(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 1
    .param p1, "formula"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    const-string v0, "formula"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/ReadVariableFromFileBrick;-><init>()V

    .line 41
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->READ_FILENAME:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    check-cast v0, Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    invoke-virtual {p0, v0, p1}, Lorg/catrobat/catroid/content/bricks/ReadVariableFromFileBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    return-void
.end method

.method public static final synthetic access$getSpinnerSelectionID$p(Lorg/catrobat/catroid/content/bricks/ReadVariableFromFileBrick;)I
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/catroid/content/bricks/ReadVariableFromFileBrick;

    .line 37
    iget v0, p0, Lorg/catrobat/catroid/content/bricks/ReadVariableFromFileBrick;->spinnerSelectionID:I

    return v0
.end method

.method public static final synthetic access$setSpinnerSelectionID$p(Lorg/catrobat/catroid/content/bricks/ReadVariableFromFileBrick;I)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/catroid/content/bricks/ReadVariableFromFileBrick;
    .param p1, "<set-?>"    # I

    .line 37
    iput p1, p0, Lorg/catrobat/catroid/content/bricks/ReadVariableFromFileBrick;->spinnerSelectionID:I

    return-void
.end method

.method private final createArrayAdapter(Landroid/content/Context;)Landroid/widget/ArrayAdapter;
    .locals 4
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

    .line 72
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 73
    .local v0, "spinnerValues":[Ljava/lang/String;
    const v1, 0x7f120115

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 74
    const v1, 0x7f120114

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 76
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x1090008

    invoke-direct {v1, p1, v2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .local v1, "$this$apply":Landroid/widget/ArrayAdapter;
    const/4 v2, 0x0

    .line 77
    .local v2, "$i$a$-apply-ReadVariableFromFileBrick$createArrayAdapter$1":I
    const v3, 0x1090009

    invoke-virtual {v1, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 78
    return-object v1
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 8
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    const-string v0, "sprite"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sequence"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/ReadVariableFromFileBrick;->userVariable:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/UserVariable;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .local v0, "it":Ljava/lang/String;
    const/4 v1, 0x0

    .line 84
    .local v1, "$i$a$-let-ReadVariableFromFileBrick$addActionToSequence$1":I
    nop

    .line 85
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getActionFactory()Lorg/catrobat/catroid/content/ActionFactory;

    move-result-object v2

    .line 86
    move-object v4, p2

    check-cast v4, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    .line 87
    sget-object v3, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->READ_FILENAME:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    check-cast v3, Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    invoke-virtual {p0, v3}, Lorg/catrobat/catroid/content/bricks/ReadVariableFromFileBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v5

    .line 88
    iget-object v6, p0, Lorg/catrobat/catroid/content/bricks/ReadVariableFromFileBrick;->userVariable:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .line 89
    iget v3, p0, Lorg/catrobat/catroid/content/bricks/ReadVariableFromFileBrick;->spinnerSelectionID:I

    const/4 v7, 0x1

    if-ne v3, v7, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    move v7, v3

    .line 85
    :goto_0
    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lorg/catrobat/catroid/content/ActionFactory;->createReadVariableFromFileAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/UserVariable;Z)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v2

    .line 84
    invoke-virtual {p2, v2}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 92
    nop

    .line 83
    .end local v0    # "it":Ljava/lang/String;
    .end local v1    # "$i$a$-let-ReadVariableFromFileBrick$addActionToSequence$1":I
    :cond_1
    nop

    .line 93
    return-void
.end method

.method public addRequiredResources(Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;)V
    .locals 1
    .param p1, "requiredResourcesSet"    # Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;

    const-string v0, "requiredResourcesSet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    const/16 v0, 0x19

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;->add(Ljava/lang/Integer;)Z

    .line 97
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/UserVariableBrickWithFormula;->addRequiredResources(Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;)V

    .line 98
    return-void
.end method

.method protected getSpinnerId()I
    .locals 1

    .line 57
    const v0, 0x7f0a01cb

    return v0
.end method

.method public getView(Landroid/content/Context;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/UserVariableBrickWithFormula;->getView(Landroid/content/Context;)Landroid/view/View;

    .line 61
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/ReadVariableFromFileBrick;->view:Landroid/view/View;

    const v1, 0x7f0a01ca

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .local v0, "$this$apply":Landroid/widget/Spinner;
    const/4 v1, 0x0

    .line 62
    .local v1, "$i$a$-apply-ReadVariableFromFileBrick$getView$1":I
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/content/bricks/ReadVariableFromFileBrick;->createArrayAdapter(Landroid/content/Context;)Landroid/widget/ArrayAdapter;

    move-result-object v2

    check-cast v2, Landroid/widget/SpinnerAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 63
    new-instance v2, Lorg/catrobat/catroid/content/AdapterViewOnItemSelectedListenerImpl;

    new-instance v3, Lorg/catrobat/catroid/content/bricks/ReadVariableFromFileBrick$getView$$inlined$apply$lambda$1;

    invoke-direct {v3, p0, p1}, Lorg/catrobat/catroid/content/bricks/ReadVariableFromFileBrick$getView$$inlined$apply$lambda$1;-><init>(Lorg/catrobat/catroid/content/bricks/ReadVariableFromFileBrick;Landroid/content/Context;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-direct {v2, v3}, Lorg/catrobat/catroid/content/AdapterViewOnItemSelectedListenerImpl;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v2, Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 66
    iget v2, p0, Lorg/catrobat/catroid/content/bricks/ReadVariableFromFileBrick;->spinnerSelectionID:I

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 67
    nop

    .line 61
    .end local v0    # "$this$apply":Landroid/widget/Spinner;
    .end local v1    # "$i$a$-apply-ReadVariableFromFileBrick$getView$1":I
    nop

    .line 68
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/ReadVariableFromFileBrick;->view:Landroid/view/View;

    const-string v1, "view"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getViewResource()I
    .locals 1

    .line 55
    const v0, 0x7f0d00c2

    return v0
.end method
