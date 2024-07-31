.class public final Lorg/catrobat/paintroid/ui/BottomNavigationLandscape;
.super Ljava/lang/Object;
.source "BottomNavigationLandscape.kt"

# interfaces
.implements Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomNavigationAppearance;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\rH\u0016R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lorg/catrobat/paintroid/ui/BottomNavigationLandscape;",
        "Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomNavigationAppearance;",
        "context",
        "Landroid/content/Context;",
        "bottomNavigationView",
        "Lcom/google/android/material/bottomnavigation/BottomNavigationView;",
        "(Landroid/content/Context;Lcom/google/android/material/bottomnavigation/BottomNavigationView;)V",
        "bottomNavigationMenuView",
        "Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;",
        "setAppearance",
        "",
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
.field private final bottomNavigationMenuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

.field private final bottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/material/bottomnavigation/BottomNavigationView;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bottomNavigationView"    # Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bottomNavigationView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/catrobat/paintroid/ui/BottomNavigationLandscape;->bottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    .line 34
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    iput-object v0, p0, Lorg/catrobat/paintroid/ui/BottomNavigationLandscape;->bottomNavigationMenuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    .line 36
    nop

    .line 37
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/ui/BottomNavigationLandscape;->setAppearance(Landroid/content/Context;)V

    .line 38
    return-void

    .line 34
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type com.google.android.material.bottomnavigation.BottomNavigationMenuView"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final setAppearance(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .line 49
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 50
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget-object v1, p0, Lorg/catrobat/paintroid/ui/BottomNavigationLandscape;->bottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const-string v2, "bottomNavigationView.menu"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .local v1, "menu":Landroid/view/Menu;
    invoke-interface {v1}, Landroid/view/Menu;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    .line 52
    .local v4, "i":I
    iget-object v5, p0, Lorg/catrobat/paintroid/ui/BottomNavigationLandscape;->bottomNavigationMenuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {v5, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    check-cast v5, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    .line 53
    .local v5, "item":Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;
    sget v6, Lorg/catrobat/paintroid/R$layout;->pocketpaint_layout_bottom_navigation_item:I

    iget-object v7, p0, Lorg/catrobat/paintroid/ui/BottomNavigationLandscape;->bottomNavigationMenuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v0, v6, v7, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 54
    .local v6, "itemBottomNavigation":Landroid/view/View;
    sget v7, Lorg/catrobat/paintroid/R$id;->icon:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 55
    .local v7, "icon":Landroid/widget/ImageView;
    sget v8, Lorg/catrobat/paintroid/R$id;->title:I

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 56
    .local v8, "text":Landroid/widget/TextView;
    invoke-interface {v1, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const-string v10, "menu.getItem(i)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v9}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 57
    sget v9, Lorg/catrobat/paintroid/R$color;->pocketpaint_welcome_dot_active:I

    invoke-static {p1, v9}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 58
    const-string v9, "text"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v9

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v9}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    invoke-virtual {v5}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->removeAllViews()V

    .line 60
    invoke-virtual {v5, v6}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->addView(Landroid/view/View;)V

    .line 51
    .end local v5    # "item":Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;
    .end local v6    # "itemBottomNavigation":Landroid/view/View;
    .end local v7    # "icon":Landroid/widget/ImageView;
    .end local v8    # "text":Landroid/widget/TextView;
    nop

    .end local v4    # "i":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 52
    .restart local v4    # "i":I
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "null cannot be cast to non-null type com.google.android.material.bottomnavigation.BottomNavigationItemView"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 62
    .end local v4    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public showCurrentTool(Lorg/catrobat/paintroid/tools/ToolType;)V
    .locals 4
    .param p1, "toolType"    # Lorg/catrobat/paintroid/tools/ToolType;

    const-string v0, "toolType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/BottomNavigationLandscape;->bottomNavigationMenuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 42
    .local v0, "item":Landroid/view/View;
    sget v1, Lorg/catrobat/paintroid/R$id;->icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 43
    .local v1, "icon":Landroid/widget/ImageView;
    sget v2, Lorg/catrobat/paintroid/R$id;->title:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 44
    .local v2, "title":Landroid/widget/TextView;
    invoke-virtual {p1}, Lorg/catrobat/paintroid/tools/ToolType;->getDrawableResource()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 45
    invoke-virtual {p1}, Lorg/catrobat/paintroid/tools/ToolType;->getNameResource()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 46
    return-void
.end method
