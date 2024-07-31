.class public final Lorg/catrobat/paintroid/ui/KeyboardListener;
.super Ljava/lang/Object;
.source "KeyboardListener.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
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
.field private isSoftKeyboardVisible:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "activityRootView"    # Landroid/view/View;

    const-string v0, "activityRootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    nop

    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lorg/catrobat/paintroid/ui/KeyboardListener$1;

    invoke-direct {v1, p0, p1}, Lorg/catrobat/paintroid/ui/KeyboardListener$1;-><init>(Lorg/catrobat/paintroid/ui/KeyboardListener;Landroid/view/View;)V

    check-cast v1, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 36
    return-void
.end method

.method private final dpToPx(Landroid/util/DisplayMetrics;F)F
    .locals 1
    .param p1, "displayMetrics"    # Landroid/util/DisplayMetrics;
    .param p2, "dpValue"    # F

    .line 39
    nop

    .line 40
    nop

    .line 41
    nop

    .line 42
    nop

    .line 39
    const/4 v0, 0x1

    invoke-static {v0, p2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 43
    return v0
.end method

.method static synthetic dpToPx$default(Lorg/catrobat/paintroid/ui/KeyboardListener;Landroid/util/DisplayMetrics;FILjava/lang/Object;)F
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 38
    const/high16 p2, 0x43960000    # 300.0f

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
    .param p1, "<set-?>"    # Z

    .line 28
    iput-boolean p1, p0, Lorg/catrobat/paintroid/ui/KeyboardListener;->isSoftKeyboardVisible:Z

    return-void
.end method
