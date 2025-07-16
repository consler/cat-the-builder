.class public final Lorg/catrobat/paintroid/ui/KeyboardListener;
.super Ljava/lang/Object;
.source "KeyboardListener.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u001a\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000bH\u0002R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000f"
    }
    d2 = {
        "Lorg/catrobat/paintroid/ui/KeyboardListener;",
        "",
        "activityRootView",
        "Landroid/view/View;",
        "(Landroid/view/View;)V",
        "isSoftKeyboardVisible",
        "",
        "()Z",
        "setSoftKeyboardVisible",
        "(Z)V",
        "dpToPx",
        "",
        "displayMetrics",
        "Landroid/util/DisplayMetrics;",
        "dpValue",
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
.field private isSoftKeyboardVisible:Z


# direct methods
.method public static synthetic $r8$lambda$l4XRNzyQaWqAGgcPIrQlGaJoNCA(Landroid/view/View;Lorg/catrobat/paintroid/ui/KeyboardListener;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/catrobat/paintroid/ui/KeyboardListener;->_init_$lambda-0(Landroid/view/View;Lorg/catrobat/paintroid/ui/KeyboardListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    const-string v0, "activityRootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lorg/catrobat/paintroid/ui/KeyboardListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p0}, Lorg/catrobat/paintroid/ui/KeyboardListener$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;Lorg/catrobat/paintroid/ui/KeyboardListener;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private static final _init_$lambda-0(Landroid/view/View;Lorg/catrobat/paintroid/ui/KeyboardListener;)V
    .locals 4

    const-string v0, "$activityRootView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    int-to-float v0, v0

    const-string v1, "displayMetrics"

    .line 34
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p1, p0, v3, v1, v2}, Lorg/catrobat/paintroid/ui/KeyboardListener;->dpToPx$default(Lorg/catrobat/paintroid/ui/KeyboardListener;Landroid/util/DisplayMetrics;FILjava/lang/Object;)F

    move-result p0

    cmpl-float p0, v0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Lorg/catrobat/paintroid/ui/KeyboardListener;->setSoftKeyboardVisible(Z)V

    return-void
.end method

.method private final dpToPx(Landroid/util/DisplayMetrics;F)F
    .locals 1

    const/4 v0, 0x1

    .line 39
    invoke-static {v0, p2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    return p1
.end method

.method static synthetic dpToPx$default(Lorg/catrobat/paintroid/ui/KeyboardListener;Landroid/util/DisplayMetrics;FILjava/lang/Object;)F
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/high16 p2, 0x43960000    # 300.0f

    .line 38
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/catrobat/paintroid/ui/KeyboardListener;->dpToPx(Landroid/util/DisplayMetrics;F)F

    move-result p0

    return p0
.end method


# virtual methods
.method public final isSoftKeyboardVisible()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lorg/catrobat/paintroid/ui/KeyboardListener;->isSoftKeyboardVisible:Z

    return v0
.end method

.method public final setSoftKeyboardVisible(Z)V
    .locals 0

    .line 28
    iput-boolean p1, p0, Lorg/catrobat/paintroid/ui/KeyboardListener;->isSoftKeyboardVisible:Z

    return-void
.end method
