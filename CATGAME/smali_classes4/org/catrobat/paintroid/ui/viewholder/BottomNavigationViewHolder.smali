.class public final Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;
.super Ljava/lang/Object;
.source "BottomNavigationViewHolder.kt"

# interfaces
.implements Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomNavigationViewHolder;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBottomNavigationViewHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BottomNavigationViewHolder.kt\norg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,92:1\n1#2:93\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0008\u0010\u0017\u001a\u00020\u0014H\u0016J\u0008\u0010\u0018\u001a\u00020\u0014H\u0002J\u0010\u0010\u0019\u001a\u00020\n2\u0006\u0010\u0006\u001a\u00020\u0007H\u0002J\u0010\u0010\u001a\u001a\u00020\u00142\u0006\u0010\u001b\u001a\u00020\u0005H\u0016J\u0008\u0010\u0015\u001a\u00020\u0014H\u0016J\u0012\u0010\u001c\u001a\u00020\u00142\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
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
        "colorItemView",
        "Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;",
        "enableColorItemView",
        "",
        "show",
        "",
        "hide",
        "initColorButton",
        "setAppearance",
        "setColorButtonColor",
        "color",
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
.field private final bottomNavigation:Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomNavigationAppearance;

.field private final bottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

.field private final colorButton:Landroid/widget/ImageView;

.field private final colorItemView:Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

.field private final layout:Landroid/view/View;

.field private final orientation:I


# direct methods
.method public constructor <init>(Landroid/view/View;ILandroid/content/Context;)V
    .locals 1

    const-string v0, "layout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;->layout:Landroid/view/View;

    .line 38
    iput p2, p0, Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;->orientation:I

    .line 43
    sget p2, Lorg/catrobat/paintroid/R$id;->pocketpaint_bottom_navigation:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "layout.findViewById(R.id\u2026tpaint_bottom_navigation)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    iput-object p1, p0, Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;->bottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    .line 49
    invoke-direct {p0, p3}, Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;->setAppearance(Landroid/content/Context;)Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomNavigationAppearance;

    move-result-object p2

    iput-object p2, p0, Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;->bottomNavigation:Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomNavigationAppearance;

    const/4 p2, 0x0

    .line 51
    invoke-virtual {p1, p2}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    const/4 p2, 0x2

    .line 52
    invoke-virtual {p1, p2}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    iput-object p1, p0, Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;->colorItemView:Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    .line 53
    sget p2, Lorg/catrobat/paintroid/R$id;->icon:I

    invoke-virtual {p1, p2}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "colorItemView.findViewById(R.id.icon)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;->colorButton:Landroid/widget/ImageView;

    .line 54
    invoke-direct {p0}, Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;->initColorButton()V

    return-void

    .line 52
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type com.google.android.material.bottomnavigation.BottomNavigationItemView"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 51
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type com.google.android.material.bottomnavigation.BottomNavigationMenuView"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final initColorButton()V
    .locals 2

    .line 78
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;->colorButton:Landroid/widget/ImageView;

    .line 79
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v1, -0x1

    .line 80
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    const/4 v1, 0x2

    .line 81
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    return-void
.end method

.method private final setAppearance(Landroid/content/Context;)Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomNavigationAppearance;
    .locals 2

    .line 86
    iget v0, p0, Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 87
    new-instance p1, Lorg/catrobat/paintroid/ui/BottomNavigationPortrait;

    iget-object v0, p0, Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;->bottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-direct {p1, v0}, Lorg/catrobat/paintroid/ui/BottomNavigationPortrait;-><init>(Lcom/google/android/material/bottomnavigation/BottomNavigationView;)V

    check-cast p1, Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomNavigationAppearance;

    goto :goto_0

    .line 89
    :cond_0
    new-instance v0, Lorg/catrobat/paintroid/ui/BottomNavigationLandscape;

    iget-object v1, p0, Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;->bottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-direct {v0, p1, v1}, Lorg/catrobat/paintroid/ui/BottomNavigationLandscape;-><init>(Landroid/content/Context;Lcom/google/android/material/bottomnavigation/BottomNavigationView;)V

    move-object p1, v0

    check-cast p1, Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomNavigationAppearance;

    :goto_0
    return-object p1
.end method


# virtual methods
.method public enableColorItemView(Z)V
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;->colorItemView:Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setClickable(Z)V

    return-void
.end method

.method public final getBottomNavigationView()Lcom/google/android/material/bottomnavigation/BottomNavigationView;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;->bottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    return-object v0
.end method

.method public hide()V
    .locals 2

    .line 62
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;->layout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setColorButtonColor(I)V
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;->colorButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    return-void
.end method

.method public show()V
    .locals 2

    .line 58
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;->layout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public showCurrentTool(Lorg/catrobat/paintroid/tools/ToolType;)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;->bottomNavigation:Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomNavigationAppearance;

    invoke-interface {v0, p1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$BottomNavigationAppearance;->showCurrentTool(Lorg/catrobat/paintroid/tools/ToolType;)V

    :goto_0
    return-void
.end method
