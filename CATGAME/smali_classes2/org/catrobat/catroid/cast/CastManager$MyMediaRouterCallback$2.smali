.class Lorg/catrobat/catroid/cast/CastManager$MyMediaRouterCallback$2;
.super Ljava/lang/Object;
.source "CastManager.java"

# interfaces
.implements Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/cast/CastManager$MyMediaRouterCallback;->startCastService(Landroidx/appcompat/app/AppCompatActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/catrobat/catroid/cast/CastManager$MyMediaRouterCallback;

.field final synthetic val$activity:Landroidx/appcompat/app/AppCompatActivity;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/cast/CastManager$MyMediaRouterCallback;Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 0
    .param p1, "this$1"    # Lorg/catrobat/catroid/cast/CastManager$MyMediaRouterCallback;

    .line 451
    iput-object p1, p0, Lorg/catrobat/catroid/cast/CastManager$MyMediaRouterCallback$2;->this$1:Lorg/catrobat/catroid/cast/CastManager$MyMediaRouterCallback;

    iput-object p2, p0, Lorg/catrobat/catroid/cast/CastManager$MyMediaRouterCallback$2;->val$activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoteDisplaySessionEnded(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;)V
    .locals 0
    .param p1, "castRemoteDisplayLocalService"    # Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;

    .line 470
    return-void
.end method

.method public onRemoteDisplaySessionError(Lcom/google/android/gms/common/api/Status;)V
    .locals 1
    .param p1, "errorReason"    # Lcom/google/android/gms/common/api/Status;

    .line 464
    iget-object v0, p0, Lorg/catrobat/catroid/cast/CastManager$MyMediaRouterCallback$2;->this$1:Lorg/catrobat/catroid/cast/CastManager$MyMediaRouterCallback;

    invoke-virtual {v0}, Lorg/catrobat/catroid/cast/CastManager$MyMediaRouterCallback;->onCastStop()V

    .line 465
    iget-object v0, p0, Lorg/catrobat/catroid/cast/CastManager$MyMediaRouterCallback$2;->val$activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    .line 466
    return-void
.end method

.method public onRemoteDisplaySessionStarted(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;)V
    .locals 0
    .param p1, "service"    # Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;

    .line 460
    return-void
.end method

.method public onServiceCreated(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;)V
    .locals 0
    .param p1, "castRemoteDisplayLocalService"    # Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;

    .line 455
    return-void
.end method
