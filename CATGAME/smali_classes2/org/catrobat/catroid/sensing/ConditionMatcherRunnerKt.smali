.class public final Lorg/catrobat/catroid/sensing/ConditionMatcherRunnerKt;
.super Ljava/lang/Object;
.source "ConditionMatcherRunner.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConditionMatcherRunner.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConditionMatcherRunner.kt\norg/catrobat/catroid/sensing/ConditionMatcherRunnerKt\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,99:1\n10205#2:100\n10627#2,5:101\n*E\n*S KotlinDebug\n*F\n+ 1 ConditionMatcherRunner.kt\norg/catrobat/catroid/sensing/ConditionMatcherRunnerKt\n*L\n45#1:100\n45#1,5:101\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u0014\u0010\u0004\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0002\u001a\u0014\u0010\u0006\u001a\u00020\u0007*\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u0003H\u0002\u001a\u000c\u0010\t\u001a\u00020\u0007*\u00020\nH\u0002\u001a\u0015\u0010\u000b\u001a\u00020\u000c*\u0008\u0012\u0004\u0012\u00020\u000e0\r\u00a2\u0006\u0002\u0010\u000f\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "EPSILON",
        "",
        "clearColor",
        "Lcom/badlogic/gdx/graphics/Color;",
        "absDiff",
        "f",
        "equalsColor",
        "",
        "color",
        "isOdd",
        "",
        "toBoundingRectangle",
        "Lorg/catrobat/catroid/sensing/BoundingRectangle;",
        "",
        "Lcom/badlogic/gdx/math/Polygon;",
        "([Lcom/badlogic/gdx/math/Polygon;)Lorg/catrobat/catroid/sensing/BoundingRectangle;",
        "catroid_catroidDebug"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field private static final EPSILON:F = 0.03125f

.field private static final clearColor:Lcom/badlogic/gdx/graphics/Color;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 32
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lorg/catrobat/catroid/sensing/ConditionMatcherRunnerKt;->clearColor:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method private static final absDiff(FF)F
    .locals 1
    .param p0, "$this$absDiff"    # F
    .param p1, "f"    # F

    .line 43
    sub-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method public static final synthetic access$equalsColor(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Z
    .locals 1
    .param p0, "$this$access_u24equalsColor"    # Lcom/badlogic/gdx/graphics/Color;
    .param p1, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .line 1
    invoke-static {p0, p1}, Lorg/catrobat/catroid/sensing/ConditionMatcherRunnerKt;->equalsColor(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$getClearColor$p()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    .line 1
    sget-object v0, Lorg/catrobat/catroid/sensing/ConditionMatcherRunnerKt;->clearColor:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public static final synthetic access$isOdd(I)Z
    .locals 1
    .param p0, "$this$access_u24isOdd"    # I

    .line 1
    invoke-static {p0}, Lorg/catrobat/catroid/sensing/ConditionMatcherRunnerKt;->isOdd(I)Z

    move-result v0

    return v0
.end method

.method private static final equalsColor(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Z
    .locals 4
    .param p0, "$this$equalsColor"    # Lcom/badlogic/gdx/graphics/Color;
    .param p1, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .line 37
    nop

    .line 38
    nop

    .line 39
    nop

    .line 40
    nop

    .line 37
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/Color;->r:F

    invoke-static {v0, v1}, Lorg/catrobat/catroid/sensing/ConditionMatcherRunnerKt;->absDiff(FF)F

    move-result v0

    const/high16 v1, 0x3d000000    # 0.03125f

    cmpg-float v0, v0, v1

    const/4 v2, 0x1

    if-gez v0, :cond_0

    .line 38
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, p1, Lcom/badlogic/gdx/graphics/Color;->g:F

    invoke-static {v0, v3}, Lorg/catrobat/catroid/sensing/ConditionMatcherRunnerKt;->absDiff(FF)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 39
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v3, p1, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-static {v0, v3}, Lorg/catrobat/catroid/sensing/ConditionMatcherRunnerKt;->absDiff(FF)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    sget-object v0, Lorg/catrobat/catroid/sensing/ConditionMatcherRunnerKt;->clearColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 37
    :goto_0
    return v2
.end method

.method private static final isOdd(I)Z
    .locals 2
    .param p0, "$this$isOdd"    # I

    .line 34
    rem-int/lit8 v0, p0, 0x2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static final toBoundingRectangle([Lcom/badlogic/gdx/math/Polygon;)Lorg/catrobat/catroid/sensing/BoundingRectangle;
    .locals 12
    .param p0, "$this$toBoundingRectangle"    # [Lcom/badlogic/gdx/math/Polygon;

    const-string v0, "$this$toBoundingRectangle"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    move-object v0, p0

    .local v0, "$this$flatMap$iv":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 100
    .local v1, "$i$f$flatMap":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$flatMapTo$iv$iv":[Ljava/lang/Object;
    const/4 v4, 0x0

    .line 101
    .local v4, "$i$f$flatMapTo":I
    array-length v5, v3

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    aget-object v7, v3, v6

    .line 102
    .local v7, "element$iv$iv":Ljava/lang/Object;
    move-object v8, v7

    .local v8, "polygon":Lcom/badlogic/gdx/math/Polygon;
    const/4 v9, 0x0

    .line 45
    .local v9, "$i$a$-flatMap-ConditionMatcherRunnerKt$toBoundingRectangle$1":I
    invoke-virtual {v8}, Lcom/badlogic/gdx/math/Polygon;->getVertices()[F

    move-result-object v10

    const-string v11, "polygon.vertices"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10}, Lkotlin/collections/ArraysKt;->asIterable([F)Ljava/lang/Iterable;

    move-result-object v8

    .line 103
    .end local v9    # "$i$a$-flatMap-ConditionMatcherRunnerKt$toBoundingRectangle$1":I
    .local v8, "list$iv$iv":Ljava/lang/Iterable;
    invoke-static {v2, v8}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 101
    .end local v8    # "list$iv$iv":Ljava/lang/Iterable;
    nop

    .end local v7    # "element$iv$iv":Ljava/lang/Object;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 105
    :cond_0
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$flatMapTo$iv$iv":[Ljava/lang/Object;
    .end local v4    # "$i$f$flatMapTo":I
    check-cast v2, Ljava/util/List;

    .line 100
    nop

    .line 45
    .end local v0    # "$this$flatMap$iv":[Ljava/lang/Object;
    .end local v1    # "$i$f$flatMap":I
    new-instance v0, Lorg/catrobat/catroid/sensing/BoundingRectangle;

    invoke-direct {v0, v2}, Lorg/catrobat/catroid/sensing/BoundingRectangle;-><init>(Ljava/util/List;)V

    return-object v0
.end method
