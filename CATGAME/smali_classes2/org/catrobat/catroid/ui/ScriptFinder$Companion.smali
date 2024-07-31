.class public final Lorg/catrobat/catroid/ui/ScriptFinder$Companion;
.super Ljava/lang/Object;
.source "ScriptFinder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/ui/ScriptFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000c\u001a\u00020\u0004R\u0019\u0010\u0003\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\r"
    }
    d2 = {
        "Lorg/catrobat/catroid/ui/ScriptFinder$Companion;",
        "",
        "()V",
        "TAG",
        "",
        "kotlin.jvm.PlatformType",
        "getTAG",
        "()Ljava/lang/String;",
        "searchBrickViews",
        "",
        "v",
        "Landroid/view/View;",
        "searchQuery",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 116
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/ScriptFinder$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getTAG()Ljava/lang/String;
    .locals 1

    .line 117
    invoke-static {}, Lorg/catrobat/catroid/ui/ScriptFinder;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final searchBrickViews(Landroid/view/View;Ljava/lang/String;)Z
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "searchQuery"    # Ljava/lang/String;

    const-string v0, "searchQuery"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    nop

    .line 122
    const/4 v0, 0x0

    :try_start_0
    instance-of v1, p1, Landroid/widget/Spinner;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v4, "null cannot be cast to non-null type java.lang.String"

    const-string v5, "(this as java.lang.String).toLowerCase(locale)"

    const-string v6, "Locale.ROOT"

    const/4 v7, 0x1

    if-eqz v1, :cond_1

    .line 123
    :try_start_1
    move-object v1, p1

    check-cast v1, Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    .line 124
    .local v1, "selectedItem":Ljava/lang/Object;
    nop

    .line 125
    nop

    .line 124
    instance-of v8, v1, Lorg/catrobat/catroid/common/Nameable;

    if-eqz v8, :cond_6

    move-object v8, v1

    check-cast v8, Lorg/catrobat/catroid/common/Nameable;

    invoke-interface {v8}, Lorg/catrobat/catroid/common/Nameable;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "selectedItem.name"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v9, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v8, :cond_0

    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/CharSequence;

    .line 125
    move-object v5, p2

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v4, v5, v0, v3, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 127
    return v7

    .line 124
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local p1    # "v":Landroid/view/View;
    .end local p2    # "searchQuery":Ljava/lang/String;
    throw v2

    .line 129
    .end local v1    # "selectedItem":Ljava/lang/Object;
    .restart local p1    # "v":Landroid/view/View;
    .restart local p2    # "searchQuery":Ljava/lang/String;
    :cond_1
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    .line 130
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_6

    .line 131
    .local v2, "i":I
    move-object v3, p1

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 132
    .local v3, "child":Landroid/view/View;
    move-object v4, p0

    check-cast v4, Lorg/catrobat/catroid/ui/ScriptFinder$Companion;

    invoke-virtual {v4, v3, p2}, Lorg/catrobat/catroid/ui/ScriptFinder$Companion;->searchBrickViews(Landroid/view/View;Ljava/lang/String;)Z

    move-result v4

    .line 133
    .local v4, "queryFoundInBrick":Z
    if-eqz v4, :cond_2

    .line 134
    return v7

    .line 130
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "queryFoundInBrick":Z
    :cond_2
    nop

    .end local v2    # "i":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 137
    :cond_3
    nop

    .line 138
    nop

    .line 137
    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_5

    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_4

    invoke-virtual {v1, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    .line 138
    move-object v4, p2

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v1, v4, v0, v3, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 140
    return v7

    .line 137
    :cond_4
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local p1    # "v":Landroid/view/View;
    .end local p2    # "searchQuery":Ljava/lang/String;
    throw v1
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 141
    .restart local p1    # "v":Landroid/view/View;
    .restart local p2    # "searchQuery":Ljava/lang/String;
    :cond_5
    goto :goto_1

    .line 142
    :catch_0
    move-exception v1

    .line 143
    .local v1, "e":Ljava/lang/NullPointerException;
    move-object v2, p0

    check-cast v2, Lorg/catrobat/catroid/ui/ScriptFinder$Companion;

    invoke-virtual {v2}, Lorg/catrobat/catroid/ui/ScriptFinder$Companion;->getTAG()Ljava/lang/String;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :cond_6
    :goto_1
    nop

    .line 145
    return v0
.end method
