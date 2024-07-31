.class public Lorg/catrobat/catroid/cast/CastService$FirstScreenPresentation;
.super Lcom/google/android/gms/cast/CastPresentation;
.source "CastService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/cast/CastService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FirstScreenPresentation"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/cast/CastService;


# direct methods
.method public constructor <init>(Lorg/catrobat/catroid/cast/CastService;Landroid/content/Context;Landroid/view/Display;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/cast/CastService;
    .param p2, "serviceContext"    # Landroid/content/Context;
    .param p3, "display"    # Landroid/view/Display;

    .line 75
    iput-object p1, p0, Lorg/catrobat/catroid/cast/CastService$FirstScreenPresentation;->this$0:Lorg/catrobat/catroid/cast/CastService;

    .line 76
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/cast/CastPresentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    .line 77
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 81
    invoke-super {p0, p1}, Lcom/google/android/gms/cast/CastPresentation;->onCreate(Landroid/os/Bundle;)V

    .line 83
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lorg/catrobat/catroid/cast/CastService$FirstScreenPresentation;->this$0:Lorg/catrobat/catroid/cast/CastService;

    invoke-virtual {v1}, Lorg/catrobat/catroid/cast/CastService;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 84
    .local v0, "layout":Landroid/widget/RelativeLayout;
    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/cast/CastService$FirstScreenPresentation;->setContentView(Landroid/view/View;)V

    .line 86
    invoke-static {}, Lorg/catrobat/catroid/cast/CastManager;->getInstance()Lorg/catrobat/catroid/cast/CastManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/cast/CastManager;->setIsConnected(Z)V

    .line 87
    invoke-static {}, Lorg/catrobat/catroid/cast/CastManager;->getInstance()Lorg/catrobat/catroid/cast/CastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/catrobat/catroid/cast/CastManager;->setRemoteLayout(Landroid/widget/RelativeLayout;)V

    .line 88
    invoke-static {}, Lorg/catrobat/catroid/cast/CastManager;->getInstance()Lorg/catrobat/catroid/cast/CastManager;

    move-result-object v1

    iget-object v2, p0, Lorg/catrobat/catroid/cast/CastService$FirstScreenPresentation;->this$0:Lorg/catrobat/catroid/cast/CastService;

    invoke-virtual {v2}, Lorg/catrobat/catroid/cast/CastService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/cast/CastManager;->setRemoteLayoutToIdleScreen(Landroid/content/Context;)V

    .line 89
    return-void
.end method
