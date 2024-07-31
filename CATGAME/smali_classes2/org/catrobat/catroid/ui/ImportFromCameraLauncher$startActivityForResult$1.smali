.class public final Lorg/catrobat/catroid/ui/ImportFromCameraLauncher$startActivityForResult$1;
.super Lorg/catrobat/catroid/ui/runtimepermissions/RequiresPermissionTask;
.source "ImportLaunchers.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/ImportFromCameraLauncher;->startActivityForResult(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "org/catrobat/catroid/ui/ImportFromCameraLauncher$startActivityForResult$1",
        "Lorg/catrobat/catroid/ui/runtimepermissions/RequiresPermissionTask;",
        "task",
        "",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic $requestCode:I

.field final synthetic this$0:Lorg/catrobat/catroid/ui/ImportFromCameraLauncher;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/ImportFromCameraLauncher;IILjava/util/List;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/ui/ImportFromCameraLauncher;
    .param p2, "$captured_local_variable$1"    # I
    .param p3, "$super_call_param$2"    # I
    .param p4, "$super_call_param$3"    # Ljava/util/List;
    .param p5, "$super_call_param$4"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List;",
            "I)V"
        }
    .end annotation

    .line 142
    iput-object p1, p0, Lorg/catrobat/catroid/ui/ImportFromCameraLauncher$startActivityForResult$1;->this$0:Lorg/catrobat/catroid/ui/ImportFromCameraLauncher;

    iput p2, p0, Lorg/catrobat/catroid/ui/ImportFromCameraLauncher$startActivityForResult$1;->$requestCode:I

    invoke-direct {p0, p3, p4, p5}, Lorg/catrobat/catroid/ui/runtimepermissions/RequiresPermissionTask;-><init>(ILjava/util/List;I)V

    return-void
.end method


# virtual methods
.method public task()V
    .locals 5

    .line 147
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ImportFromCameraLauncher$startActivityForResult$1;->this$0:Lorg/catrobat/catroid/ui/ImportFromCameraLauncher;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/ImportFromCameraLauncher;->createCameraCacheDir()V

    .line 148
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 149
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 150
    iget-object v1, p0, Lorg/catrobat/catroid/ui/ImportFromCameraLauncher$startActivityForResult$1;->this$0:Lorg/catrobat/catroid/ui/ImportFromCameraLauncher;

    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/ImportFromCameraLauncher;->getCacheCameraUri()Landroid/net/Uri;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    const-string v2, "output"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 152
    iget-object v1, p0, Lorg/catrobat/catroid/ui/ImportFromCameraLauncher$startActivityForResult$1;->this$0:Lorg/catrobat/catroid/ui/ImportFromCameraLauncher;

    invoke-static {v1}, Lorg/catrobat/catroid/ui/ImportFromCameraLauncher;->access$getActivity$p(Lorg/catrobat/catroid/ui/ImportFromCameraLauncher;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v1

    const v2, 0x7f120728

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    .line 154
    .local v1, "chooser":Landroid/content/Intent;
    nop

    .line 155
    :try_start_0
    iget-object v2, p0, Lorg/catrobat/catroid/ui/ImportFromCameraLauncher$startActivityForResult$1;->this$0:Lorg/catrobat/catroid/ui/ImportFromCameraLauncher;

    invoke-static {v2}, Lorg/catrobat/catroid/ui/ImportFromCameraLauncher;->access$getActivity$p(Lorg/catrobat/catroid/ui/ImportFromCameraLauncher;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v2

    iget v3, p0, Lorg/catrobat/catroid/ui/ImportFromCameraLauncher$startActivityForResult$1;->$requestCode:I

    invoke-virtual {v2, v1, v3}, Landroidx/appcompat/app/AppCompatActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 156
    :catch_0
    move-exception v2

    .line 157
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    sget-object v3, Lorg/catrobat/catroid/ui/runtimepermissions/RequiresPermissionTask;->TAG:Ljava/lang/String;

    const-string v4, "Could not find camera."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    :goto_0
    nop

    .line 159
    return-void
.end method
