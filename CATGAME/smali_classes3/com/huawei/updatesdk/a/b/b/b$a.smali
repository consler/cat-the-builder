.class Lcom/huawei/updatesdk/a/b/b/b$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/updatesdk/a/b/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/huawei/updatesdk/a/b/b/b$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/huawei/updatesdk/a/b/b/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/huawei/updatesdk/a/b/b/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/huawei/updatesdk/a/b/b/a;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-static {v1}, Lcom/huawei/updatesdk/a/b/c/b;->a(Landroid/content/Intent;)Lcom/huawei/updatesdk/a/b/c/b;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/4 v0, 0x3

    if-eq v3, v0, :cond_2

    const/4 v0, 0x4

    if-eq v3, v0, :cond_1

    const/4 v0, 0x5

    if-eq v3, v0, :cond_2

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/huawei/updatesdk/a/b/b/b;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/appmarket.apk"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.huawei.appmarket"

    invoke-static {v0, v3}, Lcom/huawei/updatesdk/service/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget p1, p1, Landroid/os/Message;->what:I

    const-string v3, "download_status_param"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-static {}, Lcom/huawei/updatesdk/service/b/c;->a()Lcom/huawei/updatesdk/service/b/c;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/huawei/updatesdk/service/b/c;->a(Lcom/huawei/updatesdk/a/b/c/b;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/huawei/updatesdk/a/b/b/a;->b()I

    move-result p1

    const-string v3, "download_apk_size"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0}, Lcom/huawei/updatesdk/a/b/b/a;->a()I

    move-result p1

    const-string v0, "download_apk_already"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/huawei/updatesdk/service/b/c;->a()Lcom/huawei/updatesdk/service/b/c;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/huawei/updatesdk/service/b/c;->b(Lcom/huawei/updatesdk/a/b/c/b;)V

    :goto_0
    return-void
.end method
