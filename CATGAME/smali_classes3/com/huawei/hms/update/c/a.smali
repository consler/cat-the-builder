.class public Lcom/huawei/hms/update/c/a;
.super Landroid/content/BroadcastReceiver;
.source "SilentInstallReceive.java"


# instance fields
.field private a:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/huawei/hms/update/c/a;->a:Landroid/os/Handler;

    .line 42
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 46
    if-nez p2, :cond_0

    .line 47
    return-void

    .line 51
    :cond_0
    :try_start_0
    const-string p1, "TestIntent"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    nop

    .line 57
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 59
    const-string v0, "com.huawei.appmarket.service.downloadservice.Receiver"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 61
    if-nez p1, :cond_1

    .line 62
    return-void

    .line 65
    :cond_1
    new-instance p2, Landroid/os/Message;

    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    .line 66
    const/16 v0, 0x65

    iput v0, p2, Landroid/os/Message;->what:I

    .line 67
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 68
    iget-object p1, p0, Lcom/huawei/hms/update/c/a;->a:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 70
    goto :goto_1

    :cond_2
    const-string v0, "com.huawei.appmarket.service.downloadservice.progress.Receiver"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 71
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 72
    if-nez p1, :cond_3

    .line 73
    return-void

    .line 76
    :cond_3
    new-instance p2, Landroid/os/Message;

    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    .line 77
    const/16 v0, 0x66

    iput v0, p2, Landroid/os/Message;->what:I

    .line 78
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 79
    iget-object p1, p0, Lcom/huawei/hms/update/c/a;->a:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 80
    :cond_4
    const-string v0, "com.huawei.appmarket.service.installerservice.Receiver"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 81
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 82
    if-nez p1, :cond_5

    .line 83
    return-void

    .line 85
    :cond_5
    new-instance p2, Landroid/os/Message;

    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    .line 86
    const/16 v0, 0x67

    iput v0, p2, Landroid/os/Message;->what:I

    .line 87
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 88
    iget-object p1, p0, Lcom/huawei/hms/update/c/a;->a:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 80
    :cond_6
    :goto_0
    nop

    .line 90
    :goto_1
    return-void

    .line 52
    :catch_0
    move-exception p1

    .line 53
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "intent has some error"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SilentInstallReceive"

    invoke-static {p2, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method
