.class Lcom/huawei/hms/update/ui/k$1;
.super Landroid/os/Handler;
.source "SilentUpdateWizard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/update/ui/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/huawei/hms/update/ui/k;


# direct methods
.method constructor <init>(Lcom/huawei/hms/update/ui/k;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/huawei/hms/update/ui/k$1;->a:Lcom/huawei/hms/update/ui/k;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 69
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 70
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 80
    :pswitch_0
    iget-object p1, p0, Lcom/huawei/hms/update/ui/k$1;->a:Lcom/huawei/hms/update/ui/k;

    invoke-static {p1, v0}, Lcom/huawei/hms/update/ui/k;->c(Lcom/huawei/hms/update/ui/k;Landroid/os/Bundle;)V

    .line 81
    goto :goto_0

    .line 76
    :pswitch_1
    iget-object p1, p0, Lcom/huawei/hms/update/ui/k$1;->a:Lcom/huawei/hms/update/ui/k;

    invoke-static {p1, v0}, Lcom/huawei/hms/update/ui/k;->b(Lcom/huawei/hms/update/ui/k;Landroid/os/Bundle;)V

    .line 77
    goto :goto_0

    .line 72
    :pswitch_2
    iget-object p1, p0, Lcom/huawei/hms/update/ui/k$1;->a:Lcom/huawei/hms/update/ui/k;

    invoke-static {p1, v0}, Lcom/huawei/hms/update/ui/k;->a(Lcom/huawei/hms/update/ui/k;Landroid/os/Bundle;)V

    .line 73
    nop

    .line 86
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
