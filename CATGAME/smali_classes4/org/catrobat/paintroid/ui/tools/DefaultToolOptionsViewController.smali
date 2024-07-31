.class public final Lorg/catrobat/paintroid/ui/tools/DefaultToolOptionsViewController;
.super Ljava/lang/Object;
.source "DefaultToolOptionsViewController.kt"

# interfaces
.implements Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u000c\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0016\u001a\u00020\u0017H\u0016J\u0008\u0010\u0018\u001a\u00020\u0017H\u0016J\u0008\u0010\u0019\u001a\u00020\u0017H\u0016J\u0008\u0010\u001a\u001a\u00020\u0017H\u0016J\u0008\u0010\u001b\u001a\u00020\u0017H\u0002J\u0008\u0010\u001c\u001a\u00020\u0017H\u0002J\u0008\u0010\u001d\u001a\u00020\u0017H\u0016J\u0008\u0010\u001e\u001a\u00020\u0017H\u0016J\u0010\u0010\u001f\u001a\u00020\u00172\u0006\u0010\t\u001a\u00020\nH\u0016J\u0008\u0010 \u001a\u00020\u0017H\u0016J\u0008\u0010!\u001a\u00020\u0017H\u0016J\u0008\u0010\"\u001a\u00020\u0017H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u00020\u000c8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u00020\u00088VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006#"
    }
    d2 = {
        "Lorg/catrobat/paintroid/ui/tools/DefaultToolOptionsViewController;",
        "Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;",
        "activity",
        "Landroid/app/Activity;",
        "(Landroid/app/Activity;)V",
        "getActivity",
        "()Landroid/app/Activity;",
        "bottomNavigation",
        "Landroid/view/ViewGroup;",
        "callback",
        "Lorg/catrobat/paintroid/tools/options/ToolOptionsVisibilityController$Callback;",
        "enabled",
        "",
        "isVisible",
        "()Z",
        "mainToolOptions",
        "toolOptionsShown",
        "toolSpecificOptionsLayout",
        "getToolSpecificOptionsLayout",
        "()Landroid/view/ViewGroup;",
        "topBarSpecificViewCheckmark",
        "Landroid/view/View;",
        "disable",
        "",
        "enable",
        "hide",
        "hideCheckmark",
        "notifyHide",
        "notifyShow",
        "removeToolViews",
        "resetToOrigin",
        "setCallback",
        "show",
        "showCheckmark",
        "showDelayed",
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
.field private final activity:Landroid/app/Activity;

.field private final bottomNavigation:Landroid/view/ViewGroup;

.field private callback:Lorg/catrobat/paintroid/tools/options/ToolOptionsVisibilityController$Callback;

.field private enabled:Z

.field private final mainToolOptions:Landroid/view/ViewGroup;

.field private toolOptionsShown:Z

.field private final topBarSpecificViewCheckmark:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/paintroid/ui/tools/DefaultToolOptionsViewController;->activity:Landroid/app/Activity;

    .line 30
    sget v0, Lorg/catrobat/paintroid/R$id;->pocketpaint_main_bottom_navigation:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "activity.findViewById(R.\u2026t_main_bottom_navigation)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultToolOptionsViewController;->bottomNavigation:Landroid/view/ViewGroup;

    .line 32
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultToolOptionsViewController;->activity:Landroid/app/Activity;

    sget v1, Lorg/catrobat/paintroid/R$id;->pocketpaint_layout_tool_options:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "activity.findViewById(R.\u2026aint_layout_tool_options)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultToolOptionsViewController;->mainToolOptions:Landroid/view/ViewGroup;

    .line 34
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultToolOptionsViewController;->activity:Landroid/app/Activity;

    sget v1, Lorg/catrobat/paintroid/R$id;->pocketpaint_btn_top_checkmark:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "activity.findViewById(R.\u2026tpaint_btn_top_checkmark)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultToolOptionsViewController;->topBarSpecificViewCheckmark:Landroid/view/View;

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultToolOptionsViewController;->enabled:Z

    .line 45
    nop

    .line 46
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultToolOptionsViewController;->mainToolOptions:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 47
    return-void
.end method

.method public static final synthetic access$getBottomNavigation$p(Lorg/catrobat/paintroid/ui/tools/DefaultToolOptionsViewController;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/paintroid/ui/tools/DefaultToolOptionsViewController;

    .line 28
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultToolOptionsViewController;->bottomNavigation:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public static final synthetic access$getMainToolOptions$p(Lorg/catrobat/paintroid/ui/tools/DefaultToolOptionsViewController;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/paintroid/ui/tools/DefaultToolOptionsViewController;

    .line 28
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultToolOptionsViewController;->mainToolOptions:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private final notifyHide()V
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultToolOptionsViewController;->callback:Lorg/catrobat/paintroid/tools/options/ToolOptionsVisibilityController$Callback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/options/ToolOptionsVisibilityController$Callback;->onHide()V

    .line 51
    :cond_0
    return-void
.end method

.method private final notifyShow()V
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultToolOptionsViewController;->callback:Lorg/catrobat/paintroid/tools/options/ToolOptionsVisibilityController$Callback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/options/ToolOptionsVisibilityController$Callback;->onShow()V

    .line 55
    :cond_0
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 1

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultToolOptionsViewController;->enabled:Z

    .line 74
    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/tools/DefaultToolOptionsViewController;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/tools/DefaultToolOptionsViewController;->resetToOrigin()V

    .line 77
    :cond_0
    return-void
.end method

.method public enable()V
    .locals 1

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultToolOptionsViewController;->enabled:Z

    .line 81
    return-void
.end method

.method public final getActivity()Landroid/app/Activity;
    .locals 1

    .line 28
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultToolOptionsViewController;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public getToolSpecificOptionsLayout()Landroid/view/ViewGroup;
    .locals 2

    .line 40
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultToolOptionsViewController;->activity:Landroid/app/Activity;

    sget v1, Lorg/catrobat/paintroid/R$id;->pocketpaint_layout_tool_specific_options:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "activity.findViewById(R.\u2026ut_tool_specific_options)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public hide()V
    .locals 3

    .line 64
    iget-boolean v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultToolOptionsViewController;->enabled:Z

    if-nez v0, :cond_0

    .line 65
    return-void

    .line 67
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultToolOptionsViewController;->toolOptionsShown:Z

    .line 68
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultToolOptionsViewController;->mainToolOptions:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/paintroid/ui/tools/DefaultToolOptionsViewController;->bottomNavigation:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getY()F

    move-result v1

    iget-object v2, p0, Lorg/catrobat/paintroid/ui/tools/DefaultToolOptionsViewController;->bottomNavigation:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    .line 69
    invoke-direct {p0}, Lorg/catrobat/paintroid/ui/tools/DefaultToolOptionsViewController;->notifyHide()V

    .line 70
    return-void
.end method

.method public hideCheckmark()V
    .locals 2

    .line 115
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultToolOptionsViewController;->topBarSpecificViewCheckmark:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 116
    return-void
.end method

.method public isVisible()Z
    .locals 1

    .line 43
    iget-boolean v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultToolOptionsViewController;->toolOptionsShown:Z

    return v0
.end method

.method public removeToolViews()V
    .locals 1

    .line 102
    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/tools/DefaultToolOptionsViewController;->getToolSpecificOptionsLayout()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 103
    const/4 v0, 0x0

    check-cast v0, Lorg/catrobat/paintroid/tools/options/ToolOptionsVisibilityController$Callback;

    iput-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultToolOptionsViewController;->callback:Lorg/catrobat/paintroid/tools/options/ToolOptionsVisibilityController$Callback;

    .line 104
    return-void
.end method

.method public resetToOrigin()V
    .locals 3

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultToolOptionsViewController;->toolOptionsShown:Z

    .line 59
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultToolOptionsViewController;->mainToolOptions:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 60
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultToolOptionsViewController;->mainToolOptions:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/catrobat/paintroid/ui/tools/DefaultToolOptionsViewController;->bottomNavigation:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getY()F

    move-result v1

    iget-object v2, p0, Lorg/catrobat/paintroid/ui/tools/DefaultToolOptionsViewController;->bottomNavigation:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setY(F)V

    .line 61
    return-void
.end method

.method public setCallback(Lorg/catrobat/paintroid/tools/options/ToolOptionsVisibilityController$Callback;)V
    .locals 1
    .param p1, "callback"    # Lorg/catrobat/paintroid/tools/options/ToolOptionsVisibilityController$Callback;

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    iput-object p1, p0, Lorg/catrobat/paintroid/ui/tools/DefaultToolOptionsViewController;->callback:Lorg/catrobat/paintroid/tools/options/ToolOptionsVisibilityController$Callback;

    .line 108
    return-void
.end method

.method public show()V
    .locals 2

    .line 84
    iget-boolean v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultToolOptionsViewController;->enabled:Z

    if-nez v0, :cond_0

    .line 85
    return-void

    .line 87
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultToolOptionsViewController;->toolOptionsShown:Z

    .line 88
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultToolOptionsViewController;->mainToolOptions:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultToolOptionsViewController;->mainToolOptions:Landroid/view/ViewGroup;

    new-instance v1, Lorg/catrobat/paintroid/ui/tools/DefaultToolOptionsViewController$show$1;

    invoke-direct {v1, p0}, Lorg/catrobat/paintroid/ui/tools/DefaultToolOptionsViewController$show$1;-><init>(Lorg/catrobat/paintroid/ui/tools/DefaultToolOptionsViewController;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 94
    invoke-direct {p0}, Lorg/catrobat/paintroid/ui/tools/DefaultToolOptionsViewController;->notifyShow()V

    .line 95
    return-void
.end method

.method public showCheckmark()V
    .locals 2

    .line 111
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultToolOptionsViewController;->topBarSpecificViewCheckmark:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 112
    return-void
.end method

.method public showDelayed()V
    .locals 2

    .line 98
    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/tools/DefaultToolOptionsViewController;->getToolSpecificOptionsLayout()Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Lorg/catrobat/paintroid/ui/tools/DefaultToolOptionsViewController$showDelayed$1;

    invoke-direct {v1, p0}, Lorg/catrobat/paintroid/ui/tools/DefaultToolOptionsViewController$showDelayed$1;-><init>(Lorg/catrobat/paintroid/ui/tools/DefaultToolOptionsViewController;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 99
    return-void
.end method
