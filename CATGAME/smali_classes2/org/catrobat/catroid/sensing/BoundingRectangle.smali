.class public final Lorg/catrobat/catroid/sensing/BoundingRectangle;
.super Ljava/lang/Object;
.source "ConditionMatcherRunner.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConditionMatcherRunner.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConditionMatcherRunner.kt\norg/catrobat/catroid/sensing/BoundingRectangle\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,99:1\n745#2:100\n756#2:101\n1828#2,2:102\n757#2,2:104\n1830#2:106\n759#2:107\n745#2:108\n756#2:109\n1828#2,2:110\n757#2,2:112\n1830#2:114\n759#2:115\n*E\n*S KotlinDebug\n*F\n+ 1 ConditionMatcherRunner.kt\norg/catrobat/catroid/sensing/BoundingRectangle\n*L\n55#1:100\n55#1:101\n55#1,2:102\n55#1,2:104\n55#1:106\n55#1:107\n56#1:108\n56#1:109\n56#1,2:110\n56#1,2:112\n56#1:114\n56#1:115\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000f\u0018\u00002\u00020\u0001B\u0013\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0002\u0010\u0005J\u0018\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003*\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u0002J\u0018\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003*\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u0002R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\n\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\tR\u0011\u0010\u000c\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\tR\u0011\u0010\u000e\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\tR\u0011\u0010\u0010\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\tR\u0011\u0010\u0012\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\t\u00a8\u0006\u0016"
    }
    d2 = {
        "Lorg/catrobat/catroid/sensing/BoundingRectangle;",
        "",
        "vertices",
        "",
        "",
        "(Ljava/util/List;)V",
        "bottom",
        "",
        "getBottom",
        "()I",
        "height",
        "getHeight",
        "left",
        "getLeft",
        "right",
        "getRight",
        "top",
        "getTop",
        "width",
        "getWidth",
        "getXVertices",
        "getYVertices",
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
.field private final bottom:I

.field private final height:I

.field private final left:I

.field private final right:I

.field private final top:I

.field private final width:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .param p1, "vertices"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    const-string v0, "vertices"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/sensing/BoundingRectangle;->getYVertices(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->min(Ljava/lang/Iterable;)Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput v0, p0, Lorg/catrobat/catroid/sensing/BoundingRectangle;->top:I

    .line 49
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/sensing/BoundingRectangle;->getYVertices(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->max(Ljava/lang/Iterable;)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-int v0, v0

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput v0, p0, Lorg/catrobat/catroid/sensing/BoundingRectangle;->bottom:I

    .line 50
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/sensing/BoundingRectangle;->getXVertices(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->min(Ljava/lang/Iterable;)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-int v0, v0

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    iput v0, p0, Lorg/catrobat/catroid/sensing/BoundingRectangle;->left:I

    .line 51
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/sensing/BoundingRectangle;->getXVertices(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->max(Ljava/lang/Iterable;)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-int v1, v0

    :cond_3
    iput v1, p0, Lorg/catrobat/catroid/sensing/BoundingRectangle;->right:I

    .line 52
    iget v0, p0, Lorg/catrobat/catroid/sensing/BoundingRectangle;->left:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/catrobat/catroid/sensing/BoundingRectangle;->width:I

    .line 53
    iget v0, p0, Lorg/catrobat/catroid/sensing/BoundingRectangle;->bottom:I

    iget v1, p0, Lorg/catrobat/catroid/sensing/BoundingRectangle;->top:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/catrobat/catroid/sensing/BoundingRectangle;->height:I

    return-void
.end method

.method private final getXVertices(Ljava/util/List;)Ljava/util/List;
    .locals 17
    .param p1, "$this$getXVertices"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 56
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$filterIndexed$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 108
    .local v1, "$i$f$filterIndexed":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$filterIndexedTo$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 109
    .local v4, "$i$f$filterIndexedTo":I
    move-object v5, v3

    .local v5, "$this$forEachIndexed$iv$iv$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 110
    .local v6, "$i$f$forEachIndexed":I
    const/4 v7, 0x0

    .line 111
    .local v7, "index$iv$iv$iv":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .local v9, "item$iv$iv$iv":Ljava/lang/Object;
    add-int/lit8 v10, v7, 0x1

    .end local v7    # "index$iv$iv$iv":I
    .local v10, "index$iv$iv$iv":I
    if-gez v7, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    .local v7, "index$iv$iv":I
    :cond_0
    move-object v11, v9

    .local v11, "element$iv$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 112
    .local v12, "$i$a$-forEachIndexed-CollectionsKt___CollectionsKt$filterIndexedTo$1$iv$iv":I
    move-object v13, v11

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->floatValue()F

    move-result v13

    .local v13, "$noName_1":F
    move v14, v7

    .local v14, "i":I
    const/4 v15, 0x0

    .line 56
    .local v15, "$i$a$-filterIndexed-BoundingRectangle$getXVertices$1":I
    invoke-static {v14}, Lorg/catrobat/catroid/sensing/ConditionMatcherRunnerKt;->access$isOdd(I)Z

    move-result v16

    .end local v13    # "$noName_1":F
    .end local v14    # "i":I
    .end local v15    # "$i$a$-filterIndexed-BoundingRectangle$getXVertices$1":I
    xor-int/lit8 v13, v16, 0x1

    if-eqz v13, :cond_1

    invoke-interface {v2, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_1
    move v7, v10

    .end local v7    # "index$iv$iv":I
    .end local v9    # "item$iv$iv$iv":Ljava/lang/Object;
    .end local v11    # "element$iv$iv":Ljava/lang/Object;
    .end local v12    # "$i$a$-forEachIndexed-CollectionsKt___CollectionsKt$filterIndexedTo$1$iv$iv":I
    goto :goto_0

    .line 114
    .end local v10    # "index$iv$iv$iv":I
    .local v7, "index$iv$iv$iv":I
    :cond_2
    nop

    .line 115
    .end local v5    # "$this$forEachIndexed$iv$iv$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$forEachIndexed":I
    .end local v7    # "index$iv$iv$iv":I
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$filterIndexedTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$filterIndexedTo":I
    check-cast v2, Ljava/util/List;

    .line 108
    nop

    .line 56
    .end local v0    # "$this$filterIndexed$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$filterIndexed":I
    return-object v2
.end method

.method private final getYVertices(Ljava/util/List;)Ljava/util/List;
    .locals 16
    .param p1, "$this$getYVertices"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 55
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$filterIndexed$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 100
    .local v1, "$i$f$filterIndexed":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$filterIndexedTo$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 101
    .local v4, "$i$f$filterIndexedTo":I
    move-object v5, v3

    .local v5, "$this$forEachIndexed$iv$iv$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 102
    .local v6, "$i$f$forEachIndexed":I
    const/4 v7, 0x0

    .line 103
    .local v7, "index$iv$iv$iv":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .local v9, "item$iv$iv$iv":Ljava/lang/Object;
    add-int/lit8 v10, v7, 0x1

    .end local v7    # "index$iv$iv$iv":I
    .local v10, "index$iv$iv$iv":I
    if-gez v7, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    .local v7, "index$iv$iv":I
    :cond_0
    move-object v11, v9

    .local v11, "element$iv$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 104
    .local v12, "$i$a$-forEachIndexed-CollectionsKt___CollectionsKt$filterIndexedTo$1$iv$iv":I
    move-object v13, v11

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->floatValue()F

    move-result v13

    .local v13, "$noName_1":F
    move v14, v7

    .local v14, "i":I
    const/4 v15, 0x0

    .line 55
    .local v15, "$i$a$-filterIndexed-BoundingRectangle$getYVertices$1":I
    invoke-static {v14}, Lorg/catrobat/catroid/sensing/ConditionMatcherRunnerKt;->access$isOdd(I)Z

    move-result v13

    .end local v13    # "$noName_1":F
    .end local v14    # "i":I
    .end local v15    # "$i$a$-filterIndexed-BoundingRectangle$getYVertices$1":I
    if-eqz v13, :cond_1

    invoke-interface {v2, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_1
    move v7, v10

    .end local v7    # "index$iv$iv":I
    .end local v9    # "item$iv$iv$iv":Ljava/lang/Object;
    .end local v11    # "element$iv$iv":Ljava/lang/Object;
    .end local v12    # "$i$a$-forEachIndexed-CollectionsKt___CollectionsKt$filterIndexedTo$1$iv$iv":I
    goto :goto_0

    .line 106
    .end local v10    # "index$iv$iv$iv":I
    .local v7, "index$iv$iv$iv":I
    :cond_2
    nop

    .line 107
    .end local v5    # "$this$forEachIndexed$iv$iv$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$forEachIndexed":I
    .end local v7    # "index$iv$iv$iv":I
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$filterIndexedTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$filterIndexedTo":I
    check-cast v2, Ljava/util/List;

    .line 100
    nop

    .line 55
    .end local v0    # "$this$filterIndexed$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$filterIndexed":I
    return-object v2
.end method


# virtual methods
.method public final getBottom()I
    .locals 1

    .line 49
    iget v0, p0, Lorg/catrobat/catroid/sensing/BoundingRectangle;->bottom:I

    return v0
.end method

.method public final getHeight()I
    .locals 1

    .line 53
    iget v0, p0, Lorg/catrobat/catroid/sensing/BoundingRectangle;->height:I

    return v0
.end method

.method public final getLeft()I
    .locals 1

    .line 50
    iget v0, p0, Lorg/catrobat/catroid/sensing/BoundingRectangle;->left:I

    return v0
.end method

.method public final getRight()I
    .locals 1

    .line 51
    iget v0, p0, Lorg/catrobat/catroid/sensing/BoundingRectangle;->right:I

    return v0
.end method

.method public final getTop()I
    .locals 1

    .line 48
    iget v0, p0, Lorg/catrobat/catroid/sensing/BoundingRectangle;->top:I

    return v0
.end method

.method public final getWidth()I
    .locals 1

    .line 52
    iget v0, p0, Lorg/catrobat/catroid/sensing/BoundingRectangle;->width:I

    return v0
.end method
