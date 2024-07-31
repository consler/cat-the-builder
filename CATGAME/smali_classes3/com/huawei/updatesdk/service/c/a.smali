.class public Lcom/huawei/updatesdk/service/c/a;
.super Ljava/lang/Object;


# direct methods
.method private static a()V
    .locals 2

    const/4 v0, 0x4

    const/16 v1, -0x2712

    invoke-static {v0, v1}, Lcom/huawei/updatesdk/service/c/g;->a(II)V

    return-void
.end method

.method protected static a(Landroid/content/Context;Lcom/huawei/updatesdk/service/c/b;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/huawei/updatesdk/service/c/a;->b(Landroid/content/Context;Lcom/huawei/updatesdk/service/c/b;)V

    return-void
.end method

.method private static b(Landroid/content/Context;Lcom/huawei/updatesdk/service/c/b;)V
    .locals 5

    const-string v0, "InstallProcess"

    if-nez p1, :cond_0

    const-string p0, "system install failed,task is null"

    invoke-static {v0, p0}, Lcom/huawei/updatesdk/a/a/b/a/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "systemInstall begin!!!task:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/updatesdk/a/a/b/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/huawei/updatesdk/service/c/c$a;->a:Lcom/huawei/updatesdk/service/c/c$a;

    invoke-virtual {p1, v1}, Lcom/huawei/updatesdk/service/c/b;->a(Lcom/huawei/updatesdk/service/c/c$a;)V

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/huawei/updatesdk/service/c/g;->a(II)V

    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lcom/huawei/updatesdk/service/c/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/huawei/updatesdk/support/pm/PackageInstallerActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1}, Lcom/huawei/updatesdk/service/c/b;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "install_path"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/huawei/updatesdk/service/c/b;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "install_packagename"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/huawei/updatesdk/service/c/b;->f()I

    move-result p1

    const-string v2, "install_change_path_times"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    instance-of p1, p0, Landroid/app/Activity;

    if-nez p1, :cond_2

    const/high16 p1, 0x18000000

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_2
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/huawei/updatesdk/service/c/a;->a()V

    const-string p1, " can not start install !"

    invoke-static {v0, p1, p0}, Lcom/huawei/updatesdk/a/a/b/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_3
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "system install failed,file not existed filePath:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/huawei/updatesdk/service/c/b;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/huawei/updatesdk/a/a/b/a/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x4

    const/16 p1, -0x2713

    invoke-static {p0, p1}, Lcom/huawei/updatesdk/service/c/g;->a(II)V

    return-void
.end method
