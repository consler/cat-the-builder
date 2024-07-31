.class public final Lorg/catrobat/catroid/ui/recyclerview/IndicatorDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "IndicatorDecoration.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/ui/recyclerview/IndicatorDecoration$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIndicatorDecoration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IndicatorDecoration.kt\norg/catrobat/catroid/ui/recyclerview/IndicatorDecoration\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,129:1\n1#2:130\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 $2\u00020\u0001:\u0001$B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J \u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0007\u001a\u00020\u00088BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\t\u0010\nR\u001b\u0010\r\u001a\u00020\u000e8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u000c\u001a\u0004\u0008\u000f\u0010\u0010R\u000e\u0010\u0012\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0013\u001a\u00020\u00148BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u000c\u001a\u0004\u0008\u0015\u0010\u0016R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"
    }
    d2 = {
        "Lorg/catrobat/catroid/ui/recyclerview/IndicatorDecoration;",
        "Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "diffRadius",
        "",
        "evaluator",
        "Landroid/animation/ArgbEvaluator;",
        "getEvaluator",
        "()Landroid/animation/ArgbEvaluator;",
        "evaluator$delegate",
        "Lkotlin/Lazy;",
        "interpolator",
        "Landroid/view/animation/AccelerateDecelerateInterpolator;",
        "getInterpolator",
        "()Landroid/view/animation/AccelerateDecelerateInterpolator;",
        "interpolator$delegate",
        "margin",
        "paint",
        "Landroid/graphics/Paint;",
        "getPaint",
        "()Landroid/graphics/Paint;",
        "paint$delegate",
        "selectedColor",
        "",
        "unselectedColor",
        "unselectedRadius",
        "onDrawOver",
        "",
        "canvas",
        "Landroid/graphics/Canvas;",
        "parent",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "state",
        "Landroidx/recyclerview/widget/RecyclerView$State;",
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
.field public static final Companion:Lorg/catrobat/catroid/ui/recyclerview/IndicatorDecoration$Companion;

.field private static final DIFF_RADIUS:F = 1.5f

.field private static final MARGIN:F = 8.0f

.field private static final UNSELECTED_RADIUS:F = 4.0f


# instance fields
.field private final diffRadius:F

.field private final evaluator$delegate:Lkotlin/Lazy;

.field private final interpolator$delegate:Lkotlin/Lazy;

.field private final margin:F

.field private final paint$delegate:Lkotlin/Lazy;

.field private final selectedColor:I

.field private final unselectedColor:I

.field private final unselectedRadius:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/IndicatorDecoration$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/IndicatorDecoration$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/catroid/ui/recyclerview/IndicatorDecoration;->Companion:Lorg/catrobat/catroid/ui/recyclerview/IndicatorDecoration$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 46
    const v0, 0x7f0600a3

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lorg/catrobat/catroid/ui/recyclerview/IndicatorDecoration;->selectedColor:I

    .line 48
    const v0, 0x7f0600a4

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lorg/catrobat/catroid/ui/recyclerview/IndicatorDecoration;->unselectedColor:I

    .line 50
    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-static {p1, v0}, Lorg/catrobat/catroid/utils/ExtensionsKt;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    iput v0, p0, Lorg/catrobat/catroid/ui/recyclerview/IndicatorDecoration;->diffRadius:F

    .line 51
    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {p1, v0}, Lorg/catrobat/catroid/utils/ExtensionsKt;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    iput v0, p0, Lorg/catrobat/catroid/ui/recyclerview/IndicatorDecoration;->unselectedRadius:F

    .line 52
    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {p1, v1}, Lorg/catrobat/catroid/utils/ExtensionsKt;->dpToPx(Landroid/content/Context;F)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lorg/catrobat/catroid/ui/recyclerview/IndicatorDecoration;->margin:F

    .line 54
    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/IndicatorDecoration$paint$2;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/ui/recyclerview/IndicatorDecoration$paint$2;-><init>(Lorg/catrobat/catroid/ui/recyclerview/IndicatorDecoration;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/IndicatorDecoration;->paint$delegate:Lkotlin/Lazy;

    .line 61
    sget-object v0, Lorg/catrobat/catroid/ui/recyclerview/IndicatorDecoration$evaluator$2;->INSTANCE:Lorg/catrobat/catroid/ui/recyclerview/IndicatorDecoration$evaluator$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/IndicatorDecoration;->evaluator$delegate:Lkotlin/Lazy;

    .line 65
    sget-object v0, Lorg/catrobat/catroid/ui/recyclerview/IndicatorDecoration$interpolator$2;->INSTANCE:Lorg/catrobat/catroid/ui/recyclerview/IndicatorDecoration$interpolator$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/IndicatorDecoration;->interpolator$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getUnselectedColor$p(Lorg/catrobat/catroid/ui/recyclerview/IndicatorDecoration;)I
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/catroid/ui/recyclerview/IndicatorDecoration;

    .line 37
    iget v0, p0, Lorg/catrobat/catroid/ui/recyclerview/IndicatorDecoration;->unselectedColor:I

    return v0
.end method

.method private final getEvaluator()Landroid/animation/ArgbEvaluator;
    .locals 1

    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/IndicatorDecoration;->evaluator$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ArgbEvaluator;

    return-object v0
.end method

.method private final getInterpolator()Landroid/view/animation/AccelerateDecelerateInterpolator;
    .locals 1

    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/IndicatorDecoration;->interpolator$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    return-object v0
.end method

.method private final getPaint()Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/IndicatorDecoration;->paint$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Paint;

    return-object v0
.end method


# virtual methods
.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 26
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p3, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "canvas"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "parent"

    move-object/from16 v3, p2

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "state"

    move-object/from16 v4, p3

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-super/range {p0 .. p3}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 75
    nop

    .line 76
    nop

    .line 77
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 76
    move-object v5, v2

    .line 130
    .local v5, "it":Landroidx/recyclerview/widget/RecyclerView$Adapter;
    const/4 v6, 0x0

    .line 76
    .local v6, "$i$a$-takeIf-IndicatorDecoration$onDrawOver$1":I
    const-string v7, "it"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v7

    if-lez v7, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .end local v5    # "it":Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .end local v6    # "$i$a$-takeIf-IndicatorDecoration$onDrawOver$1":I
    :goto_0
    const/4 v6, 0x0

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v6

    :goto_1
    if-eqz v2, :cond_b

    .line 77
    nop

    .local v2, "$this$run":Landroidx/recyclerview/widget/RecyclerView$Adapter;
    const/4 v5, 0x0

    .line 78
    .local v5, "$i$a$-run-IndicatorDecoration$onDrawOver$2":I
    if-eqz v2, :cond_a

    move-object v7, v2

    check-cast v7, Lorg/catrobat/catroid/ui/recyclerview/adapter/FeaturedProjectsAdapter;

    invoke-virtual {v7}, Lorg/catrobat/catroid/ui/recyclerview/adapter/FeaturedProjectsAdapter;->getItemCount()I

    move-result v7

    .line 80
    .local v7, "itemCount":I
    nop

    .line 81
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v10

    instance-of v11, v10, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez v11, :cond_2

    goto :goto_2

    :cond_2
    move-object v6, v10

    :goto_2
    check-cast v6, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v6, :cond_9

    .local v6, "layoutManager":Landroidx/recyclerview/widget/LinearLayoutManager;
    const/4 v10, 0x0

    .line 82
    .local v10, "$i$a$-let-IndicatorDecoration$onDrawOver$2$1":I
    invoke-virtual {v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v11

    .line 83
    .local v11, "firstItemPosition":I
    rem-int v12, v11, v7

    .line 85
    .local v12, "actualItemPosition":I
    nop

    .line 86
    nop

    .line 85
    invoke-virtual {v6, v11}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v13

    if-eqz v13, :cond_8

    .line 86
    nop

    .local v13, "firstView":Landroid/view/View;
    const/4 v14, 0x0

    .line 87
    .local v14, "$i$a$-let-IndicatorDecoration$onDrawOver$2$1$1":I
    iget v15, v0, Lorg/catrobat/catroid/ui/recyclerview/IndicatorDecoration;->margin:F

    add-int/lit8 v8, v7, -0x1

    int-to-float v8, v8

    mul-float/2addr v15, v8

    .line 88
    .local v15, "totalWidth":F
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v15

    const/4 v9, 0x2

    int-to-float v9, v9

    div-float/2addr v8, v9

    .line 89
    .local v8, "startX":F
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    move-object/from16 v18, v2

    .end local v2    # "$this$run":Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .local v18, "$this$run":Landroidx/recyclerview/widget/RecyclerView$Adapter;
    iget v2, v0, Lorg/catrobat/catroid/ui/recyclerview/IndicatorDecoration;->margin:F

    sub-float/2addr v9, v2

    .line 91
    .local v9, "y":F
    const-string v2, "firstView"

    invoke-static {v13, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 92
    .local v2, "left":I
    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 93
    .local v3, "width":I
    invoke-direct/range {p0 .. p0}, Lorg/catrobat/catroid/ui/recyclerview/IndicatorDecoration;->getInterpolator()Landroid/view/animation/AccelerateDecelerateInterpolator;

    move-result-object v4

    move/from16 v19, v5

    .end local v5    # "$i$a$-run-IndicatorDecoration$onDrawOver$2":I
    .local v19, "$i$a$-run-IndicatorDecoration$onDrawOver$2":I
    mul-int/lit8 v5, v2, -0x1

    int-to-float v5, v5

    move/from16 v20, v2

    .end local v2    # "left":I
    .local v20, "left":I
    int-to-float v2, v3

    div-float/2addr v5, v2

    invoke-virtual {v4, v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;->getInterpolation(F)F

    move-result v2

    .line 95
    .local v2, "progress":F
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v7, :cond_7

    .line 96
    .local v4, "i":I
    iget v5, v0, Lorg/catrobat/catroid/ui/recyclerview/IndicatorDecoration;->unselectedRadius:F

    .line 98
    .local v5, "radius":F
    nop

    .line 99
    move/from16 v16, v3

    .end local v3    # "width":I
    .local v16, "width":I
    const-string v3, "null cannot be cast to non-null type kotlin.Int"

    if-ne v4, v12, :cond_4

    .line 100
    move-object/from16 v21, v6

    .end local v6    # "layoutManager":Landroidx/recyclerview/widget/LinearLayoutManager;
    .local v21, "layoutManager":Landroidx/recyclerview/widget/LinearLayoutManager;
    iget v6, v0, Lorg/catrobat/catroid/ui/recyclerview/IndicatorDecoration;->diffRadius:F

    move/from16 v22, v7

    move/from16 v17, v10

    const/4 v7, 0x1

    .end local v7    # "itemCount":I
    .end local v10    # "$i$a$-let-IndicatorDecoration$onDrawOver$2$1":I
    .local v17, "$i$a$-let-IndicatorDecoration$onDrawOver$2$1":I
    .local v22, "itemCount":I
    int-to-float v10, v7

    sub-float v23, v10, v2

    mul-float v6, v6, v23

    add-float/2addr v5, v6

    .line 101
    invoke-direct/range {p0 .. p0}, Lorg/catrobat/catroid/ui/recyclerview/IndicatorDecoration;->getPaint()Landroid/graphics/Paint;

    move-result-object v6

    invoke-direct/range {p0 .. p0}, Lorg/catrobat/catroid/ui/recyclerview/IndicatorDecoration;->getEvaluator()Landroid/animation/ArgbEvaluator;

    move-result-object v7

    .line 102
    sub-float/2addr v10, v2

    .line 103
    move/from16 v24, v5

    .end local v5    # "radius":F
    .local v24, "radius":F
    iget v5, v0, Lorg/catrobat/catroid/ui/recyclerview/IndicatorDecoration;->unselectedColor:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 104
    move/from16 v25, v11

    .end local v11    # "firstItemPosition":I
    .local v25, "firstItemPosition":I
    iget v11, v0, Lorg/catrobat/catroid/ui/recyclerview/IndicatorDecoration;->selectedColor:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 101
    invoke-virtual {v7, v10, v5, v11}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setColor(I)V

    move/from16 v5, v24

    goto :goto_4

    :cond_3
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 108
    .end local v17    # "$i$a$-let-IndicatorDecoration$onDrawOver$2$1":I
    .end local v21    # "layoutManager":Landroidx/recyclerview/widget/LinearLayoutManager;
    .end local v22    # "itemCount":I
    .end local v24    # "radius":F
    .end local v25    # "firstItemPosition":I
    .restart local v5    # "radius":F
    .restart local v6    # "layoutManager":Landroidx/recyclerview/widget/LinearLayoutManager;
    .restart local v7    # "itemCount":I
    .restart local v10    # "$i$a$-let-IndicatorDecoration$onDrawOver$2$1":I
    .restart local v11    # "firstItemPosition":I
    :cond_4
    move-object/from16 v21, v6

    move/from16 v22, v7

    move/from16 v17, v10

    move/from16 v25, v11

    .end local v6    # "layoutManager":Landroidx/recyclerview/widget/LinearLayoutManager;
    .end local v7    # "itemCount":I
    .end local v10    # "$i$a$-let-IndicatorDecoration$onDrawOver$2$1":I
    .end local v11    # "firstItemPosition":I
    .restart local v17    # "$i$a$-let-IndicatorDecoration$onDrawOver$2$1":I
    .restart local v21    # "layoutManager":Landroidx/recyclerview/widget/LinearLayoutManager;
    .restart local v22    # "itemCount":I
    .restart local v25    # "firstItemPosition":I
    add-int/lit8 v6, v12, 0x1

    if-ne v4, v6, :cond_6

    .line 109
    iget v6, v0, Lorg/catrobat/catroid/ui/recyclerview/IndicatorDecoration;->diffRadius:F

    mul-float/2addr v6, v2

    add-float/2addr v5, v6

    .line 110
    nop

    .line 111
    invoke-direct/range {p0 .. p0}, Lorg/catrobat/catroid/ui/recyclerview/IndicatorDecoration;->getPaint()Landroid/graphics/Paint;

    move-result-object v6

    invoke-direct/range {p0 .. p0}, Lorg/catrobat/catroid/ui/recyclerview/IndicatorDecoration;->getEvaluator()Landroid/animation/ArgbEvaluator;

    move-result-object v7

    .line 112
    nop

    .line 113
    iget v10, v0, Lorg/catrobat/catroid/ui/recyclerview/IndicatorDecoration;->unselectedColor:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 114
    iget v11, v0, Lorg/catrobat/catroid/ui/recyclerview/IndicatorDecoration;->selectedColor:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 111
    invoke-virtual {v7, v2, v10, v11}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_5

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_4

    :cond_5
    new-instance v6, Ljava/lang/NullPointerException;

    invoke-direct {v6, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 119
    :cond_6
    invoke-direct/range {p0 .. p0}, Lorg/catrobat/catroid/ui/recyclerview/IndicatorDecoration;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    iget v6, v0, Lorg/catrobat/catroid/ui/recyclerview/IndicatorDecoration;->unselectedColor:I

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 120
    :goto_4
    nop

    .line 122
    int-to-float v3, v4

    iget v6, v0, Lorg/catrobat/catroid/ui/recyclerview/IndicatorDecoration;->margin:F

    mul-float/2addr v3, v6

    add-float/2addr v3, v8

    invoke-direct/range {p0 .. p0}, Lorg/catrobat/catroid/ui/recyclerview/IndicatorDecoration;->getPaint()Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual {v1, v3, v9, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 95
    .end local v5    # "radius":F
    nop

    .end local v4    # "i":I
    add-int/lit8 v4, v4, 0x1

    move/from16 v3, v16

    move/from16 v10, v17

    move-object/from16 v6, v21

    move/from16 v7, v22

    move/from16 v11, v25

    goto/16 :goto_3

    .end local v16    # "width":I
    .end local v17    # "$i$a$-let-IndicatorDecoration$onDrawOver$2$1":I
    .end local v21    # "layoutManager":Landroidx/recyclerview/widget/LinearLayoutManager;
    .end local v22    # "itemCount":I
    .end local v25    # "firstItemPosition":I
    .restart local v3    # "width":I
    .restart local v6    # "layoutManager":Landroidx/recyclerview/widget/LinearLayoutManager;
    .restart local v7    # "itemCount":I
    .restart local v10    # "$i$a$-let-IndicatorDecoration$onDrawOver$2$1":I
    .restart local v11    # "firstItemPosition":I
    :cond_7
    move/from16 v16, v3

    move-object/from16 v21, v6

    move/from16 v22, v7

    move/from16 v17, v10

    move/from16 v25, v11

    .line 124
    .end local v2    # "progress":F
    .end local v3    # "width":I
    .end local v6    # "layoutManager":Landroidx/recyclerview/widget/LinearLayoutManager;
    .end local v7    # "itemCount":I
    .end local v8    # "startX":F
    .end local v9    # "y":F
    .end local v10    # "$i$a$-let-IndicatorDecoration$onDrawOver$2$1":I
    .end local v11    # "firstItemPosition":I
    .end local v15    # "totalWidth":F
    .end local v20    # "left":I
    .restart local v17    # "$i$a$-let-IndicatorDecoration$onDrawOver$2$1":I
    .restart local v21    # "layoutManager":Landroidx/recyclerview/widget/LinearLayoutManager;
    .restart local v22    # "itemCount":I
    .restart local v25    # "firstItemPosition":I
    nop

    .end local v13    # "firstView":Landroid/view/View;
    .end local v14    # "$i$a$-let-IndicatorDecoration$onDrawOver$2$1$1":I
    goto :goto_5

    .line 86
    .end local v17    # "$i$a$-let-IndicatorDecoration$onDrawOver$2$1":I
    .end local v18    # "$this$run":Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .end local v19    # "$i$a$-run-IndicatorDecoration$onDrawOver$2":I
    .end local v21    # "layoutManager":Landroidx/recyclerview/widget/LinearLayoutManager;
    .end local v22    # "itemCount":I
    .end local v25    # "firstItemPosition":I
    .local v2, "$this$run":Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .local v5, "$i$a$-run-IndicatorDecoration$onDrawOver$2":I
    .restart local v6    # "layoutManager":Landroidx/recyclerview/widget/LinearLayoutManager;
    .restart local v7    # "itemCount":I
    .restart local v10    # "$i$a$-let-IndicatorDecoration$onDrawOver$2$1":I
    .restart local v11    # "firstItemPosition":I
    :cond_8
    move-object/from16 v18, v2

    move/from16 v19, v5

    move-object/from16 v21, v6

    move/from16 v22, v7

    move/from16 v17, v10

    move/from16 v25, v11

    .end local v2    # "$this$run":Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .end local v5    # "$i$a$-run-IndicatorDecoration$onDrawOver$2":I
    .end local v6    # "layoutManager":Landroidx/recyclerview/widget/LinearLayoutManager;
    .end local v7    # "itemCount":I
    .end local v10    # "$i$a$-let-IndicatorDecoration$onDrawOver$2$1":I
    .end local v11    # "firstItemPosition":I
    .restart local v17    # "$i$a$-let-IndicatorDecoration$onDrawOver$2$1":I
    .restart local v18    # "$this$run":Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .restart local v19    # "$i$a$-run-IndicatorDecoration$onDrawOver$2":I
    .restart local v21    # "layoutManager":Landroidx/recyclerview/widget/LinearLayoutManager;
    .restart local v22    # "itemCount":I
    .restart local v25    # "firstItemPosition":I
    :goto_5
    goto :goto_6

    .line 81
    .end local v12    # "actualItemPosition":I
    .end local v17    # "$i$a$-let-IndicatorDecoration$onDrawOver$2$1":I
    .end local v18    # "$this$run":Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .end local v19    # "$i$a$-run-IndicatorDecoration$onDrawOver$2":I
    .end local v21    # "layoutManager":Landroidx/recyclerview/widget/LinearLayoutManager;
    .end local v22    # "itemCount":I
    .end local v25    # "firstItemPosition":I
    .restart local v2    # "$this$run":Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .restart local v5    # "$i$a$-run-IndicatorDecoration$onDrawOver$2":I
    .restart local v7    # "itemCount":I
    :cond_9
    move-object/from16 v18, v2

    move/from16 v19, v5

    move/from16 v22, v7

    .end local v2    # "$this$run":Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .end local v5    # "$i$a$-run-IndicatorDecoration$onDrawOver$2":I
    .end local v7    # "itemCount":I
    .restart local v18    # "$this$run":Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .restart local v19    # "$i$a$-run-IndicatorDecoration$onDrawOver$2":I
    .restart local v22    # "itemCount":I
    :goto_6
    goto :goto_7

    .line 78
    .end local v18    # "$this$run":Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .end local v19    # "$i$a$-run-IndicatorDecoration$onDrawOver$2":I
    .end local v22    # "itemCount":I
    .restart local v2    # "$this$run":Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .restart local v5    # "$i$a$-run-IndicatorDecoration$onDrawOver$2":I
    :cond_a
    move-object/from16 v18, v2

    .end local v2    # "$this$run":Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .restart local v18    # "$this$run":Landroidx/recyclerview/widget/RecyclerView$Adapter;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "null cannot be cast to non-null type org.catrobat.catroid.ui.recyclerview.adapter.FeaturedProjectsAdapter"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 77
    .end local v5    # "$i$a$-run-IndicatorDecoration$onDrawOver$2":I
    .end local v18    # "$this$run":Landroidx/recyclerview/widget/RecyclerView$Adapter;
    :cond_b
    :goto_7
    nop

    .line 127
    return-void
.end method
