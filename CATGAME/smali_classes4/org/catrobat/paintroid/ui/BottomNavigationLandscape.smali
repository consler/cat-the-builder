.class public final Lorg/catrobat/paintroid/ui/BottomNavigationLandscape;
.super Ljava/lang/Object;
.source "BottomNavigationLandscape.kt"

# interfaces
.implements Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomNavigationAppearance;


# annotations
.annotation runtime Lkotlin/Metadata;
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
        "Paintroid_signedRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final bottomNavigationMenuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

.field private final bottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/material/bottomnavigation/BottomNavigationView;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bottomNavigationView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/catrobat/paintroid/ui/BottomNavigationLandscape;->bottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    const/4 v0, 0x0

    .line 34
    invoke-virtual {p2, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    check-cast p2, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    iput-object p2, p0, Lorg/catrobat/paintroid/ui/BottomNavigationLandscape;->bottomNavigationMenuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    .line 37
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/ui/BottomNavigationLandscape;->setAppearance(Landroid/content/Context;)V

    return-void

    .line 34
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type com.google.android.material.bottomnavigation.BottomNavigationMenuView"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final setAppearance(Landroid/content/Context;)V
    .locals 11

    .line 49
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lorg/catrobat/paintroid/ui/BottomNavigationLandscape;->bottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const-string v2, "bottomNavigationView.menu"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-interface {v1}, Landroid/view/Menu;->size()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    add-int/lit8 v5, v4, 0x1

    .line 52
    iget-object v6, p0, Lorg/catrobat/paintroid/ui/BottomNavigationLandscape;->bottomNavigationMenuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {v6, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_1

    check-cast v6, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    .line 53
    sget v7, Lorg/catrobat/paintroid/R$layout;->pocketpaint_layout_bottom_navigation_item:I

    iget-object v8, p0, Lorg/catrobat/paintroid/ui/BottomNavigationLandscape;->bottomNavigationMenuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v0, v7, v8, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 54
    sget v8, Lorg/catrobat/paintroid/R$id;->icon:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 55
    sget v9, Lorg/catrobat/paintroid/R$id;->title:I

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 56
    invoke-interface {v1, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 57
    sget v10, Lorg/catrobat/paintroid/R$color;->pocketpaint_welcome_dot_active:I

    invoke-static {p1, v10}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 58
    invoke-interface {v1, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    invoke-virtual {v6}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->removeAllViews()V

    .line 60
    invoke-virtual {v6, v7}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->addView(Landroid/view/View;)V

    if-lt v5, v2, :cond_0

    goto :goto_1

    :cond_0
    move v4, v5

    goto :goto_0

    .line 52
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type com.google.android.material.bottomnavigation.BottomNavigationItemView"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public showCurrentTool(Lorg/catrobat/paintroid/tools/ToolType;)V
    .locals 3

    const-string v0, "toolType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/BottomNavigationLandscape;->bottomNavigationMenuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 42
    sget v1, Lorg/catrobat/paintroid/R$id;->icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 43
    sget v2, Lorg/catrobat/paintroid/R$id;->title:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 44
    invoke-virtual {p1}, Lorg/catrobat/paintroid/tools/ToolType;->getDrawableResource()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 45
    invoke-virtual {p1}, Lorg/catrobat/paintroid/tools/ToolType;->getNameResource()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
