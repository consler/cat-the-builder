.class public Lorg/catrobat/catroid/cast/CastService;
.super Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;
.source "CastService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/cast/CastService$FirstScreenPresentation;
    }
.end annotation


# instance fields
.field private display:Landroid/view/Display;

.field private presentation:Lcom/google/android/gms/cast/CastPresentation;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;-><init>()V

    return-void
.end method

.method private dismissPresentation()V
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/catrobat/catroid/cast/CastService;->presentation:Lcom/google/android/gms/cast/CastPresentation;

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {v0}, Lcom/google/android/gms/cast/CastPresentation;->dismiss()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/catrobat/catroid/cast/CastService;->presentation:Lcom/google/android/gms/cast/CastPresentation;

    .line 56
    :cond_0
    return-void
.end method


# virtual methods
.method public createPresentation(Landroid/view/Display;)V
    .locals 3
    .param p1, "display"    # Landroid/view/Display;

    .line 59
    if-eqz p1, :cond_0

    .line 60
    iput-object p1, p0, Lorg/catrobat/catroid/cast/CastService;->display:Landroid/view/Display;

    .line 62
    :cond_0
    invoke-direct {p0}, Lorg/catrobat/catroid/cast/CastService;->dismissPresentation()V

    .line 63
    new-instance v0, Lorg/catrobat/catroid/cast/CastService$FirstScreenPresentation;

    iget-object v1, p0, Lorg/catrobat/catroid/cast/CastService;->display:Landroid/view/Display;

    invoke-direct {v0, p0, p0, v1}, Lorg/catrobat/catroid/cast/CastService$FirstScreenPresentation;-><init>(Lorg/catrobat/catroid/cast/CastService;Landroid/content/Context;Landroid/view/Display;)V

    iput-object v0, p0, Lorg/catrobat/catroid/cast/CastService;->presentation:Lcom/google/android/gms/cast/CastPresentation;

    .line 66
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/cast/CastPresentation;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {p0}, Lorg/catrobat/catroid/cast/CastService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1201c1

    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/cast/CastService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;Ljava/lang/String;)V

    .line 69
    invoke-direct {p0}, Lorg/catrobat/catroid/cast/CastService;->dismissPresentation()V

    .line 71
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public onCreatePresentation(Landroid/view/Display;)V
    .locals 0
    .param p1, "display"    # Landroid/view/Display;

    .line 43
    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/cast/CastService;->createPresentation(Landroid/view/Display;)V

    .line 44
    return-void
.end method

.method public onDismissPresentation()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lorg/catrobat/catroid/cast/CastService;->dismissPresentation()V

    .line 49
    return-void
.end method
