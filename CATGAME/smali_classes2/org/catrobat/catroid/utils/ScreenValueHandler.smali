.class public final Lorg/catrobat/catroid/utils/ScreenValueHandler;
.super Ljava/lang/Object;
.source "ScreenValueHandler.java"


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static updateScreenWidthAndHeight(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 38
    if-eqz p0, :cond_0

    .line 39
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 40
    .local v0, "windowManager":Landroid/view/WindowManager;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 41
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 42
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v2, Lorg/catrobat/catroid/common/ScreenValues;->SCREEN_WIDTH:I

    .line 43
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v2, Lorg/catrobat/catroid/common/ScreenValues;->SCREEN_HEIGHT:I

    .line 44
    .end local v0    # "windowManager":Landroid/view/WindowManager;
    .end local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    goto :goto_0

    .line 45
    :cond_0
    invoke-static {}, Lorg/catrobat/catroid/common/ScreenValues;->setToDefaultScreenSize()V

    .line 47
    :goto_0
    return-void
.end method
