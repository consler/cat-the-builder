.class public final synthetic Lorg/catrobat/catroid/utils/-$$Lambda$AddUserListDialog$dVRU12ZkfKI4ZOy8VWtuyVod61M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic f$0:Lorg/catrobat/catroid/utils/AddUserListDialog$Callback;


# direct methods
.method public synthetic constructor <init>(Lorg/catrobat/catroid/utils/AddUserListDialog$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/utils/-$$Lambda$AddUserListDialog$dVRU12ZkfKI4ZOy8VWtuyVod61M;->f$0:Lorg/catrobat/catroid/utils/AddUserListDialog$Callback;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lorg/catrobat/catroid/utils/-$$Lambda$AddUserListDialog$dVRU12ZkfKI4ZOy8VWtuyVod61M;->f$0:Lorg/catrobat/catroid/utils/AddUserListDialog$Callback;

    invoke-static {v0, p1}, Lorg/catrobat/catroid/utils/AddUserListDialog;->lambda$show$1(Lorg/catrobat/catroid/utils/AddUserListDialog$Callback;Landroid/content/DialogInterface;)V

    return-void
.end method
