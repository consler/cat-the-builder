.class public final Lorg/catrobat/catroid/ui/UiUtils;
.super Ljava/lang/Object;
.source "UiUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static getActivityFromContextWrapper(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 41
    :goto_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    .line 42
    instance-of v0, p0, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_0

    .line 43
    goto :goto_1

    .line 45
    :cond_0
    move-object v0, p0

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    .line 48
    :cond_1
    :goto_1
    instance-of v0, p0, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_2

    .line 49
    move-object v0, p0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    return-object v0

    .line 51
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getActivityFromView(Landroid/view/View;)Landroidx/appcompat/app/AppCompatActivity;
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/catrobat/catroid/ui/UiUtils;->getActivityFromContextWrapper(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    return-object v0
.end method
