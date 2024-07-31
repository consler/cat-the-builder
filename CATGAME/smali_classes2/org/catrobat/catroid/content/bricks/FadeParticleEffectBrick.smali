.class public final Lorg/catrobat/catroid/content/bricks/FadeParticleEffectBrick;
.super Lorg/catrobat/catroid/content/bricks/BrickBaseType;
.source "FadeParticleEffectBrick.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/content/bricks/FadeParticleEffectBrick$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB\u000f\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0018\u0010\u000c\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\r2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u0008\u0010\u0011\u001a\u00020\u0012H\u0002J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0008\u0010\u0015\u001a\u00020\u0003H\u0016J$\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u00182\n\u0010\u0019\u001a\u0006\u0012\u0002\u0008\u00030\r2\u0006\u0010\u001a\u001a\u00020\u0012H\u0002R\u000e\u0010\u0005\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lorg/catrobat/catroid/content/bricks/FadeParticleEffectBrick;",
        "Lorg/catrobat/catroid/content/bricks/BrickBaseType;",
        "fadeType",
        "",
        "(I)V",
        "fadeSpinnerSelectionId",
        "addActionToSequence",
        "",
        "sprite",
        "Lorg/catrobat/catroid/content/Sprite;",
        "sequence",
        "Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;",
        "createArrayAdapter",
        "Landroid/widget/ArrayAdapter;",
        "",
        "context",
        "Landroid/content/Context;",
        "createItemSelectedListener",
        "Landroid/widget/AdapterView$OnItemSelectedListener;",
        "getView",
        "Landroid/view/View;",
        "getViewResource",
        "setupAdditiveSpinner",
        "spinner",
        "Landroid/widget/Spinner;",
        "adapter",
        "onItemSelectedListener",
        "Companion",
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
.field public static final Companion:Lorg/catrobat/catroid/content/bricks/FadeParticleEffectBrick$Companion;

.field public static final FADE_IN:I = 0x0

.field public static final FADE_OUT:I = 0x1


# instance fields
.field private fadeSpinnerSelectionId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/catroid/content/bricks/FadeParticleEffectBrick$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/content/bricks/FadeParticleEffectBrick$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/catroid/content/bricks/FadeParticleEffectBrick;->Companion:Lorg/catrobat/catroid/content/bricks/FadeParticleEffectBrick$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/catrobat/catroid/content/bricks/FadeParticleEffectBrick;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "fadeType"    # I

    .line 35
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/BrickBaseType;-><init>()V

    .line 42
    iput p1, p0, Lorg/catrobat/catroid/content/bricks/FadeParticleEffectBrick;->fadeSpinnerSelectionId:I

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 35
    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/content/bricks/FadeParticleEffectBrick;-><init>(I)V

    return-void
.end method

.method public static final synthetic access$getFadeSpinnerSelectionId$p(Lorg/catrobat/catroid/content/bricks/FadeParticleEffectBrick;)I
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/catroid/content/bricks/FadeParticleEffectBrick;

    .line 35
    iget v0, p0, Lorg/catrobat/catroid/content/bricks/FadeParticleEffectBrick;->fadeSpinnerSelectionId:I

    return v0
.end method

.method public static final synthetic access$setFadeSpinnerSelectionId$p(Lorg/catrobat/catroid/content/bricks/FadeParticleEffectBrick;I)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/catroid/content/bricks/FadeParticleEffectBrick;
    .param p1, "<set-?>"    # I

    .line 35
    iput p1, p0, Lorg/catrobat/catroid/content/bricks/FadeParticleEffectBrick;->fadeSpinnerSelectionId:I

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

    .line 64
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 65
    .local v0, "spinnerValues":[Ljava/lang/String;
    const v1, 0x7f12060f

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 66
    const v1, 0x7f12060e

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 67
    nop

    .line 68
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x1090008

    invoke-direct {v1, p1, v2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 67
    nop

    .line 69
    .local v1, "spinnerAdapter":Landroid/widget/ArrayAdapter;
    const v2, 0x1090009

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 70
    return-object v1
.end method

.method private final createItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 1

    .line 74
    new-instance v0, Lorg/catrobat/catroid/content/bricks/FadeParticleEffectBrick$createItemSelectedListener$1;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/content/bricks/FadeParticleEffectBrick$createItemSelectedListener$1;-><init>(Lorg/catrobat/catroid/content/bricks/FadeParticleEffectBrick;)V

    check-cast v0, Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method private final setupAdditiveSpinner(Landroid/widget/Spinner;Landroid/widget/ArrayAdapter;Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 1
    .param p1, "spinner"    # Landroid/widget/Spinner;
    .param p2, "adapter"    # Landroid/widget/ArrayAdapter;
    .param p3, "onItemSelectedListener"    # Landroid/widget/AdapterView$OnItemSelectedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/Spinner;",
            "Landroid/widget/ArrayAdapter<",
            "*>;",
            "Landroid/widget/AdapterView$OnItemSelectedListener;",
            ")V"
        }
    .end annotation

    .line 59
    move-object v0, p2

    check-cast v0, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 60
    invoke-virtual {p1, p3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 61
    return-void
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 2
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    const-string v0, "sprite"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sequence"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    nop

    .line 92
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getActionFactory()Lorg/catrobat/catroid/content/ActionFactory;

    move-result-object v0

    .line 93
    nop

    .line 94
    iget v1, p0, Lorg/catrobat/catroid/content/bricks/FadeParticleEffectBrick;->fadeSpinnerSelectionId:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 92
    :goto_0
    invoke-virtual {v0, p1, v1}, Lorg/catrobat/catroid/content/ActionFactory;->createFadeParticleEffectsAction(Lorg/catrobat/catroid/content/Sprite;Z)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    .line 91
    invoke-virtual {p2, v0}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 97
    return-void
.end method

.method public getView(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/BrickBaseType;->getView(Landroid/content/Context;)Landroid/view/View;

    .line 48
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/FadeParticleEffectBrick;->view:Landroid/view/View;

    const v1, 0x7f0a011a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 49
    .local v0, "fadeSpinner":Landroid/widget/Spinner;
    const-string v1, "fadeSpinner"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/catrobat/catroid/content/bricks/FadeParticleEffectBrick;->createArrayAdapter(Landroid/content/Context;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/FadeParticleEffectBrick;->createItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/catrobat/catroid/content/bricks/FadeParticleEffectBrick;->setupAdditiveSpinner(Landroid/widget/Spinner;Landroid/widget/ArrayAdapter;Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 50
    iget v1, p0, Lorg/catrobat/catroid/content/bricks/FadeParticleEffectBrick;->fadeSpinnerSelectionId:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 51
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/FadeParticleEffectBrick;->view:Landroid/view/View;

    const-string v2, "view"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public getViewResource()I
    .locals 1

    .line 44
    const v0, 0x7f0d007a

    return v0
.end method
