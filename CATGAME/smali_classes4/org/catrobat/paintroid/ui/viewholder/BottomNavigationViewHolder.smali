.class public final Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;
.super Ljava/lang/Object;
.source "BottomNavigationViewHolder.kt"

# interfaces
.implements Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomNavigationViewHolder;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBottomNavigationViewHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BottomNavigationViewHolder.kt\norg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,87:1\n1#2:88\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u0008\u0010\u0013\u001a\u00020\u0012H\u0002J\u0010\u0010\u0014\u001a\u00020\n2\u0006\u0010\u0006\u001a\u00020\u0007H\u0002J\u0010\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0005H\u0016J\u0008\u0010\u0017\u001a\u00020\u0012H\u0016J\u0012\u0010\u0018\u001a\u00020\u00122\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0016R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;",
        "Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomNavigationViewHolder;",
        "layout",
        "Landroid/view/View;",
        "orientation",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/view/View;ILandroid/content/Context;)V",
        "bottomNavigation",
        "Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomNavigationAppearance;",
        "bottomNavigationView",
        "Lcom/google/android/material/bottomnavigation/BottomNavigationView;",
        "getBottomNavigationView",
        "()Lcom/google/android/material/bottomnavigation/BottomNavigationView;",
        "colorButton",
        "Landroid/widget/ImageView;",
        "hide",
        "",
        "initColorButton",
        "setAppearance",
        "setColorButtonColor",
        "color",
        "show",
        "showCurrentTool",
        "toolType",
        "Lorg/catrobat/paintroid/tools/ToolType;",
        "Paintroid_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private final bottomNavigation:Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomNavigationAppearance;

.field private final bottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

.field private final colorButton:Landroid/widget/ImageView;

.field private final layout:Landroid/view/View;

.field private final orientation:I


# direct methods
.method public constructor <init>(Landroid/view/View;ILandroid/content/Context;)V
    .locals 4
    .param p1, "layout"    # Landroid/view/View;
    .param p2, "orientation"    # I
    .param p3, "context"    # Landroid/content/Context;

    const-string v0, "layout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;->layout:Landroid/view/View;

    iput p2, p0, Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;->orientation:I

    .line 43
    sget v0, Lorg/catrobat/paintroid/R$id;->pocketpaint_bottom_navigation:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "layout.findViewById(R.id\u2026tpaint_bottom_navigation)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    iput-object v0, p0, Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;->bottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    .line 47
    nop

    .line 48
    invoke-direct {p0, p3}, Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;->setAppearance(Landroid/content/Context;)Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomNavigationAppearance;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;->bottomNavigation:Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomNavigationAppearance;

    .line 49
    nop

    .line 50
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;->bottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    .line 49
    nop

    .line 51
    .local v0, "bottomNavigationMenuView":Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    .line 52
    .local v1, "item":Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;
    sget v2, Lorg/catrobat/paintroid/R$id;->icon:I

    invoke-virtual {v1, v2}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "item.findViewById(R.id.icon)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;->colorButton:Landroid/widget/ImageView;

    .line 53
    invoke-direct {p0}, Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;->initColorButton()V

    .line 54
    .end local v0    # "bottomNavigationMenuView":Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;
    .end local v1    # "item":Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;
    return-void

    .line 51
    .restart local v0    # "bottomNavigationMenuView":Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null cannot be cast to non-null type com.google.android.material.bottomnavigation.BottomNavigationItemView"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 50
    .end local v0    # "bottomNavigationMenuView":Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type com.google.android.material.bottomnavigation.BottomNavigationMenuView"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final initColorButton()V
    .locals 3

    .line 73
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;->colorButton:Landroid/widget/ImageView;

    .local v0, "$this$apply":Landroid/widget/ImageView;
    const/4 v1, 0x0

    .line 74
    .local v1, "$i$a$-apply-BottomNavigationViewHolder$initColorButton$1":I
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 75
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 76
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 77
    nop

    .line 73
    .end local v0    # "$this$apply":Landroid/widget/ImageView;
    .end local v1    # "$i$a$-apply-BottomNavigationViewHolder$initColorButton$1":I
    nop

    .line 78
    return-void
.end method

.method private final setAppearance(Landroid/content/Context;)Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomNavigationAppearance;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 81
    iget v0, p0, Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 82
    new-instance v0, Lorg/catrobat/paintroid/ui/BottomNavigationPortrait;

    iget-object v1, p0, Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;->bottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-direct {v0, v1}, Lorg/catrobat/paintroid/ui/BottomNavigationPortrait;-><init>(Lcom/google/android/material/bottomnavigation/BottomNavigationView;)V

    check-cast v0, Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomNavigationAppearance;

    goto :goto_0

    .line 84
    :cond_0
    new-instance v0, Lorg/catrobat/paintroid/ui/BottomNavigationLandscape;

    iget-object v1, p0, Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;->bottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-direct {v0, p1, v1}, Lorg/catrobat/paintroid/ui/BottomNavigationLandscape;-><init>(Landroid/content/Context;Lcom/google/android/material/bottomnavigation/BottomNavigationView;)V

    check-cast v0, Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomNavigationAppearance;

    .line 81
    :goto_0
    nop

    .line 85
    return-object v0
.end method


# virtual methods
.method public final getBottomNavigationView()Lcom/google/android/material/bottomnavigation/BottomNavigationView;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;->bottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    return-object v0
.end method

.method public hide()V
    .locals 2

    .line 61
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;->layout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 62
    return-void
.end method

.method public setColorButtonColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 69
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;->colorButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 70
    return-void
.end method

.method public show()V
    .locals 2

    .line 57
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;->layout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 58
    return-void
.end method

.method public showCurrentTool(Lorg/catrobat/paintroid/tools/ToolType;)V
    .locals 3
    .param p1, "toolType"    # Lorg/catrobat/paintroid/tools/ToolType;

    .line 65
    if-eqz p1, :cond_0

    move-object v0, p1

    .line 88
    .local v0, "it":Lorg/catrobat/paintroid/tools/ToolType;
    const/4 v1, 0x0

    .line 65
    .local v1, "$i$a$-let-BottomNavigationViewHolder$showCurrentTool$1":I
    iget-object v2, p0, Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;->bottomNavigation:Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomNavigationAppearance;

    invoke-interface {v2, v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomNavigationAppearance;->showCurrentTool(Lorg/catrobat/paintroid/tools/ToolType;)V

    .line 66
    .end local v0    # "it":Lorg/catrobat/paintroid/tools/ToolType;
    .end local v1    # "$i$a$-let-BottomNavigationViewHolder$showCurrentTool$1":I
    :cond_0
    return-void
.end method
