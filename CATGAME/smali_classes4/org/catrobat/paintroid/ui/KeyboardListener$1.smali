.class final Lorg/catrobat/paintroid/ui/KeyboardListener$1;
.super Ljava/lang/Object;
.source "KeyboardListener.kt"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/paintroid/ui/KeyboardListener;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "onGlobalLayout"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic $activityRootView:Landroid/view/View;

.field final synthetic this$0:Lorg/catrobat/paintroid/ui/KeyboardListener;


# direct methods
.method constructor <init>(Lorg/catrobat/paintroid/ui/KeyboardListener;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/paintroid/ui/KeyboardListener$1;->this$0:Lorg/catrobat/paintroid/ui/KeyboardListener;

    iput-object p2, p0, Lorg/catrobat/paintroid/ui/KeyboardListener$1;->$activityRootView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 7

    .line 32
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/KeyboardListener$1;->$activityRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const-string v1, "activityRootView.rootView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lorg/catrobat/paintroid/ui/KeyboardListener$1;->$activityRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 33
    .local v0, "heightDifference":I
    iget-object v1, p0, Lorg/catrobat/paintroid/ui/KeyboardListener$1;->$activityRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "activityRootView.resources"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 34
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v2, p0, Lorg/catrobat/paintroid/ui/KeyboardListener$1;->this$0:Lorg/catrobat/paintroid/ui/KeyboardListener;

    int-to-float v3, v0

    const-string v4, "displayMetrics"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v2, v1, v4, v5, v6}, Lorg/catrobat/paintroid/ui/KeyboardListener;->dpToPx$default(Lorg/catrobat/paintroid/ui/KeyboardListener;Landroid/util/DisplayMetrics;FILjava/lang/Object;)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Lorg/catrobat/paintroid/ui/KeyboardListener;->setSoftKeyboardVisible(Z)V

    .line 35
    .end local v0    # "heightDifference":I
    .end local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    return-void
.end method
