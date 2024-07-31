.class public final Lorg/catrobat/catroid/utils/ToastUtil;
.super Ljava/lang/Object;
.source "ToastUtil.java"


# static fields
.field private static final DEFAULT_COLOR:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method private static createToast(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "duration"    # I
    .param p3, "color"    # I

    .line 66
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 67
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    .local v0, "activity":Landroid/app/Activity;
    goto :goto_0

    .line 68
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    invoke-static {p0}, Lorg/catrobat/catroid/ui/UiUtils;->getActivityFromContextWrapper(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    move-object v1, v0

    .local v1, "activity":Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 69
    return-void

    .line 68
    :cond_1
    move-object v0, v1

    .line 72
    .end local v1    # "activity":Landroid/app/Activity;
    .restart local v0    # "activity":Landroid/app/Activity;
    :goto_0
    new-instance v1, Lorg/catrobat/catroid/utils/-$$Lambda$ToastUtil$eU_0brA2hZKJLuLdlqORiLt6Rts;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/catrobat/catroid/utils/-$$Lambda$ToastUtil$eU_0brA2hZKJLuLdlqORiLt6Rts;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 80
    return-void
.end method

.method static synthetic lambda$createToast$0(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "duration"    # I
    .param p3, "color"    # I

    .line 73
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 74
    .local v0, "toast":Landroid/widget/Toast;
    if-eqz p3, :cond_0

    .line 75
    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x102000b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 76
    .local v1, "textViewOfToast":Landroid/widget/TextView;
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 78
    .end local v1    # "textViewOfToast":Landroid/widget/TextView;
    :cond_0
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 79
    return-void
.end method

.method public static showError(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messageId"    # I

    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1}, Lorg/catrobat/catroid/utils/ToastUtil;->createToast(Landroid/content/Context;Ljava/lang/String;II)V

    .line 46
    return-void
.end method

.method public static showError(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lorg/catrobat/catroid/utils/ToastUtil;->createToast(Landroid/content/Context;Ljava/lang/String;II)V

    .line 42
    return-void
.end method

.method public static showErrorWithColor(Landroid/content/Context;II)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messageId"    # I
    .param p2, "color"    # I

    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p2}, Lorg/catrobat/catroid/utils/ToastUtil;->createToast(Landroid/content/Context;Ljava/lang/String;II)V

    .line 50
    return-void
.end method

.method public static showInfoLong(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;

    .line 61
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/catrobat/catroid/utils/ToastUtil;->createToast(Landroid/content/Context;Ljava/lang/String;II)V

    .line 62
    return-void
.end method

.method public static showSuccess(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messageId"    # I

    .line 57
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1}, Lorg/catrobat/catroid/utils/ToastUtil;->createToast(Landroid/content/Context;Ljava/lang/String;II)V

    .line 58
    return-void
.end method

.method public static showSuccess(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;

    .line 53
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lorg/catrobat/catroid/utils/ToastUtil;->createToast(Landroid/content/Context;Ljava/lang/String;II)V

    .line 54
    return-void
.end method
