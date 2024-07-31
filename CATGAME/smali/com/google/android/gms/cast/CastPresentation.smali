.class public Lcom/google/android/gms/cast/CastPresentation;
.super Landroid/app/Presentation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/cast/CastPresentation;->zzb()V

    .line 3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;I)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;I)V

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/cast/CastPresentation;->zzb()V

    .line 6
    return-void
.end method

.method private final zzb()V
    .locals 2

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/cast/CastPresentation;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    const/16 v1, 0x7ee

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 10
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 11
    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 12
    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 13
    :cond_0
    return-void
.end method
