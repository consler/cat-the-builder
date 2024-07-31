.class public Lcom/huawei/updatesdk/service/otaupdate/e;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/huawei/updatesdk/a/b/d/a/d;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/huawei/updatesdk/service/otaupdate/CheckUpdateCallBack;

.field private c:Lcom/huawei/updatesdk/service/otaupdate/UpdateParams;

.field private d:Landroid/widget/Toast;

.field private e:Z

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/huawei/updatesdk/a/b/d/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/huawei/updatesdk/service/otaupdate/UpdateParams;Lcom/huawei/updatesdk/service/otaupdate/CheckUpdateCallBack;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/updatesdk/service/otaupdate/e;->e:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/updatesdk/service/otaupdate/e;->f:Ljava/util/List;

    iput-object p2, p0, Lcom/huawei/updatesdk/service/otaupdate/e;->c:Lcom/huawei/updatesdk/service/otaupdate/UpdateParams;

    iput-object p1, p0, Lcom/huawei/updatesdk/service/otaupdate/e;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/huawei/updatesdk/service/otaupdate/e;->b:Lcom/huawei/updatesdk/service/otaupdate/CheckUpdateCallBack;

    invoke-static {}, Lcom/huawei/updatesdk/service/otaupdate/h;->a()Lcom/huawei/updatesdk/service/otaupdate/h;

    move-result-object p1

    invoke-virtual {p2}, Lcom/huawei/updatesdk/service/otaupdate/UpdateParams;->getServiceZone()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/huawei/updatesdk/service/otaupdate/h;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/huawei/updatesdk/service/otaupdate/h;->a()Lcom/huawei/updatesdk/service/otaupdate/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/huawei/updatesdk/service/otaupdate/h;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/huawei/updatesdk/service/otaupdate/h;->a()Lcom/huawei/updatesdk/service/otaupdate/h;

    move-result-object p1

    invoke-virtual {p2}, Lcom/huawei/updatesdk/service/otaupdate/UpdateParams;->getAppStorePkgName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/huawei/updatesdk/service/otaupdate/h;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 1

    invoke-static {p2, p1}, Lcom/huawei/updatesdk/service/e/c;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Landroid/content/pm/PackageInfo;

    invoke-direct {p1}, Landroid/content/pm/PackageInfo;-><init>()V

    iput-object p2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string p2, "1.0"

    iput-object p2, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const/4 p2, 0x1

    iput p2, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    new-instance p2, Landroid/content/pm/ApplicationInfo;

    invoke-direct {p2}, Landroid/content/pm/ApplicationInfo;-><init>()V

    const/16 v0, 0x13

    iput v0, p2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput-object p2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    :cond_0
    return-object p1
.end method

.method private a(Landroid/content/Context;Ljava/util/List;)Lcom/huawei/updatesdk/a/b/d/a/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/huawei/updatesdk/a/b/d/a/d;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/huawei/updatesdk/service/otaupdate/e;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/huawei/updatesdk/service/appmgr/bean/a;->a(Ljava/util/List;)Lcom/huawei/updatesdk/service/appmgr/bean/a;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/huawei/updatesdk/service/appmgr/bean/a;->a(I)V

    new-instance p2, Lcom/huawei/updatesdk/a/b/d/b;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lcom/huawei/updatesdk/a/b/d/b;-><init>(Lcom/huawei/updatesdk/a/b/d/a/c;Lcom/huawei/updatesdk/a/b/d/a/a;)V

    iput-object p2, p0, Lcom/huawei/updatesdk/service/otaupdate/e;->g:Lcom/huawei/updatesdk/a/b/d/b;

    invoke-virtual {p2}, Lcom/huawei/updatesdk/a/b/d/b;->a()Lcom/huawei/updatesdk/a/b/d/a/d;

    move-result-object p1

    return-object p1
.end method

.method private a(Landroid/content/Context;Lcom/huawei/updatesdk/service/appmgr/bean/ApkUpgradeInfo;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/huawei/updatesdk/service/otaupdate/AppUpdateActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "app_update_parm"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object p2, p0, Lcom/huawei/updatesdk/service/otaupdate/e;->c:Lcom/huawei/updatesdk/service/otaupdate/UpdateParams;

    invoke-virtual {p2}, Lcom/huawei/updatesdk/service/otaupdate/UpdateParams;->isMustBtnOne()Z

    move-result p2

    const-string v2, "app_must_btn"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    instance-of p2, p1, Landroid/app/Activity;

    if-nez p2, :cond_1

    const/high16 p2, 0x10000000

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_1
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "go AppUpdateActivity error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CheckOtaAndUpdataTask"

    invoke-static {p2, p1}, Lcom/huawei/updatesdk/a/a/b/a/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/huawei/updatesdk/service/appmgr/bean/ApkUpgradeInfo;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/huawei/updatesdk/service/otaupdate/i;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/updatesdk/service/appmgr/bean/ApkUpgradeInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/huawei/updatesdk/service/appmgr/bean/ApkUpgradeInfo;->getFullDownUrl_()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/huawei/updatesdk/service/appmgr/bean/ApkUpgradeInfo;->getFullDownUrl_()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/updatesdk/service/appmgr/bean/ApkUpgradeInfo;->setDownurl_(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/huawei/updatesdk/service/otaupdate/e;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/huawei/updatesdk/service/otaupdate/e;->c:Lcom/huawei/updatesdk/service/otaupdate/UpdateParams;

    invoke-virtual {v0}, Lcom/huawei/updatesdk/service/otaupdate/UpdateParams;->getTargetPkgName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/updatesdk/service/otaupdate/e;->c:Lcom/huawei/updatesdk/service/otaupdate/UpdateParams;

    invoke-virtual {v0}, Lcom/huawei/updatesdk/service/otaupdate/UpdateParams;->getPackageList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/updatesdk/service/otaupdate/i;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Lcom/huawei/updatesdk/service/otaupdate/e;->d:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    return-void
.end method

.method private b(Lcom/huawei/updatesdk/a/b/d/a/d;)V
    .locals 3

    iget-object v0, p0, Lcom/huawei/updatesdk/service/otaupdate/e;->b:Lcom/huawei/updatesdk/service/otaupdate/CheckUpdateCallBack;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x6

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/huawei/updatesdk/a/b/d/a/d;->d()Lcom/huawei/updatesdk/a/b/d/a/d$a;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/huawei/updatesdk/a/b/d/a/d;->d()Lcom/huawei/updatesdk/a/b/d/a/d$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/updatesdk/a/b/d/a/d$a;->ordinal()I

    move-result v1

    const-string v2, "failcause"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p1}, Lcom/huawei/updatesdk/a/b/d/a/d;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "failreason"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/huawei/updatesdk/a/b/d/a/d;->b()I

    move-result v1

    const-string v2, "responsecode"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/huawei/updatesdk/service/otaupdate/e;->b:Lcom/huawei/updatesdk/service/otaupdate/CheckUpdateCallBack;

    invoke-interface {v1, v0}, Lcom/huawei/updatesdk/service/otaupdate/CheckUpdateCallBack;->onUpdateInfo(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/huawei/updatesdk/service/otaupdate/e;->b:Lcom/huawei/updatesdk/service/otaupdate/CheckUpdateCallBack;

    invoke-virtual {p1}, Lcom/huawei/updatesdk/a/b/d/a/d;->a()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/huawei/updatesdk/service/otaupdate/CheckUpdateCallBack;->onUpdateStoreError(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lcom/huawei/updatesdk/a/b/d/a/d;
    .locals 2

    const-string p1, "CheckOtaAndUpdataTask"

    const-string v0, "CheckOtaAndUpdataTask doInBackground"

    invoke-static {p1, v0}, Lcom/huawei/updatesdk/a/a/b/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/huawei/updatesdk/service/d/a/c;->a(Landroid/os/AsyncTask;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    invoke-static {}, Lcom/huawei/updatesdk/a/a/c/a/b;->d()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/huawei/updatesdk/a/b/a/a;->a()Lcom/huawei/updatesdk/a/b/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/updatesdk/a/b/a/a;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/updatesdk/service/e/c;->a(Landroid/content/Context;)Lcom/huawei/updatesdk/service/e/c$a;

    move-result-object v0

    sget-object v1, Lcom/huawei/updatesdk/service/e/c$a;->a:Lcom/huawei/updatesdk/service/e/c$a;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/huawei/updatesdk/service/e/c;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "api <24,HiApp not installed and no permission"

    invoke-static {p1, v0}, Lcom/huawei/updatesdk/a/a/b/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/huawei/updatesdk/service/otaupdate/e;->a:Landroid/content/Context;

    const-string v0, "upsdk_store_url"

    invoke-static {p1, v0}, Lcom/huawei/updatesdk/service/otaupdate/g;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/updatesdk/a/a/c/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/updatesdk/a/b/d/a/c;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/huawei/updatesdk/service/otaupdate/h;->a()Lcom/huawei/updatesdk/service/otaupdate/h;

    move-result-object p1

    iget-object v0, p0, Lcom/huawei/updatesdk/service/otaupdate/e;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/huawei/updatesdk/service/otaupdate/h;->a(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/huawei/updatesdk/service/otaupdate/e;->c:Lcom/huawei/updatesdk/service/otaupdate/UpdateParams;

    invoke-virtual {p1}, Lcom/huawei/updatesdk/service/otaupdate/UpdateParams;->getTargetPkgName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/huawei/updatesdk/service/otaupdate/e;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    :cond_1
    iget-object v0, p0, Lcom/huawei/updatesdk/service/otaupdate/e;->c:Lcom/huawei/updatesdk/service/otaupdate/UpdateParams;

    invoke-virtual {v0}, Lcom/huawei/updatesdk/service/otaupdate/UpdateParams;->getPackageList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/updatesdk/service/otaupdate/i;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/huawei/updatesdk/service/otaupdate/e;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/huawei/updatesdk/service/otaupdate/e;->f:Ljava/util/List;

    iget-object v0, p0, Lcom/huawei/updatesdk/service/otaupdate/e;->c:Lcom/huawei/updatesdk/service/otaupdate/UpdateParams;

    invoke-virtual {v0}, Lcom/huawei/updatesdk/service/otaupdate/UpdateParams;->getPackageList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    :goto_0
    invoke-static {}, Lcom/huawei/updatesdk/service/a/a;->a()Lcom/huawei/updatesdk/service/a/a;

    move-result-object p1

    invoke-static {}, Lcom/huawei/updatesdk/service/otaupdate/h;->a()Lcom/huawei/updatesdk/service/otaupdate/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/updatesdk/service/otaupdate/h;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/huawei/updatesdk/service/a/a;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/huawei/updatesdk/service/otaupdate/e;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/huawei/updatesdk/service/otaupdate/e;->f:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/huawei/updatesdk/service/otaupdate/e;->a(Landroid/content/Context;Ljava/util/List;)Lcom/huawei/updatesdk/a/b/d/a/d;

    move-result-object p1

    return-object p1
.end method

.method protected a(Lcom/huawei/updatesdk/a/b/d/a/d;)V
    .locals 7

    invoke-static {}, Lcom/huawei/updatesdk/service/d/a/c;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/huawei/updatesdk/service/otaupdate/e;->b()V

    const/4 v0, 0x3

    const-string v1, "status"

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/huawei/updatesdk/service/otaupdate/e;->b:Lcom/huawei/updatesdk/service/otaupdate/CheckUpdateCallBack;

    if-eqz p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/huawei/updatesdk/service/otaupdate/e;->b:Lcom/huawei/updatesdk/service/otaupdate/CheckUpdateCallBack;

    invoke-interface {v0, p1}, Lcom/huawei/updatesdk/service/otaupdate/CheckUpdateCallBack;->onUpdateInfo(Landroid/content/Intent;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/huawei/updatesdk/a/b/d/a/d;->b()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/huawei/updatesdk/a/b/d/a/d;->a()I

    move-result v4

    const-string v5, "responsecode"

    const-string v6, "CheckOtaAndUpdataTask"

    if-nez v4, :cond_2

    invoke-virtual {p1}, Lcom/huawei/updatesdk/a/b/d/a/d;->c()I

    move-result v4

    if-nez v4, :cond_2

    check-cast p1, Lcom/huawei/updatesdk/service/appmgr/bean/b;

    iget-object v3, p1, Lcom/huawei/updatesdk/service/appmgr/bean/b;->list_:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/huawei/updatesdk/service/otaupdate/e;->a(Ljava/util/List;)V

    invoke-static {v3}, Lcom/huawei/updatesdk/service/otaupdate/i;->a(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/huawei/updatesdk/service/otaupdate/e;->b:Lcom/huawei/updatesdk/service/otaupdate/CheckUpdateCallBack;

    if-eqz p1, :cond_3

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/huawei/updatesdk/service/otaupdate/e;->b:Lcom/huawei/updatesdk/service/otaupdate/CheckUpdateCallBack;

    invoke-interface {v0, p1}, Lcom/huawei/updatesdk/service/otaupdate/CheckUpdateCallBack;->onUpdateInfo(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/huawei/updatesdk/service/otaupdate/e;->b(Lcom/huawei/updatesdk/a/b/d/a/d;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get app update msg failed,responseCode is "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/huawei/updatesdk/a/b/d/a/d;->a()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/huawei/updatesdk/a/a/b/a/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    invoke-static {v3}, Lcom/huawei/updatesdk/service/otaupdate/i;->a(Ljava/util/List;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_6

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/huawei/updatesdk/service/appmgr/bean/ApkUpgradeInfo;

    iget-object v0, p0, Lcom/huawei/updatesdk/service/otaupdate/e;->b:Lcom/huawei/updatesdk/service/otaupdate/CheckUpdateCallBack;

    if-eqz v0, :cond_4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v4, "updatesdk_update_info"

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v4, "updatesdk_update_info_list"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/huawei/updatesdk/service/otaupdate/e;->b:Lcom/huawei/updatesdk/service/otaupdate/CheckUpdateCallBack;

    invoke-interface {v1, v0}, Lcom/huawei/updatesdk/service/otaupdate/CheckUpdateCallBack;->onUpdateInfo(Landroid/content/Intent;)V

    :cond_4
    if-eqz p1, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ApkUpgradeInfo,version = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/huawei/updatesdk/service/appmgr/bean/ApkUpgradeInfo;->getVersion_()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",versionCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/huawei/updatesdk/service/appmgr/bean/ApkUpgradeInfo;->getVersionCode_()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",detailId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/huawei/updatesdk/service/appmgr/bean/ApkUpgradeInfo;->getDetailId_()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",devType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/huawei/updatesdk/service/appmgr/bean/ApkUpgradeInfo;->getDevType_()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",oldVersionCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/huawei/updatesdk/service/appmgr/bean/ApkUpgradeInfo;->getOldVersionCode_()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    const-string v0, "info == null"

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v0, p0, Lcom/huawei/updatesdk/service/otaupdate/e;->c:Lcom/huawei/updatesdk/service/otaupdate/UpdateParams;

    invoke-virtual {v0}, Lcom/huawei/updatesdk/service/otaupdate/UpdateParams;->isShowImmediate()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/huawei/updatesdk/service/otaupdate/e;->a:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/huawei/updatesdk/service/otaupdate/e;->a(Landroid/content/Context;Lcom/huawei/updatesdk/service/appmgr/bean/ApkUpgradeInfo;)V

    goto :goto_2

    :cond_6
    invoke-direct {p0}, Lcom/huawei/updatesdk/service/otaupdate/e;->a()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/huawei/updatesdk/service/otaupdate/e;->a:Landroid/content/Context;

    const-string v1, "upsdk_update_check_no_new_version"

    invoke-static {p1, v1}, Lcom/huawei/updatesdk/service/otaupdate/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_7
    :goto_2
    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/huawei/updatesdk/service/otaupdate/e;->e:Z

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/huawei/updatesdk/service/otaupdate/e;->a([Ljava/lang/Void;)Lcom/huawei/updatesdk/a/b/d/a/d;

    move-result-object p1

    return-object p1
.end method

.method protected onCancelled()V
    .locals 1

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    iget-object v0, p0, Lcom/huawei/updatesdk/service/otaupdate/e;->g:Lcom/huawei/updatesdk/a/b/d/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/huawei/updatesdk/a/b/d/b;->d()V

    :cond_0
    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/huawei/updatesdk/a/b/d/a/d;

    invoke-virtual {p0, p1}, Lcom/huawei/updatesdk/service/otaupdate/e;->a(Lcom/huawei/updatesdk/a/b/d/a/d;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    invoke-static {}, Lcom/huawei/updatesdk/service/otaupdate/d;->a()Lcom/huawei/updatesdk/service/otaupdate/d;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/updatesdk/service/otaupdate/e;->b:Lcom/huawei/updatesdk/service/otaupdate/CheckUpdateCallBack;

    invoke-virtual {v0, v1}, Lcom/huawei/updatesdk/service/otaupdate/d;->a(Lcom/huawei/updatesdk/service/otaupdate/CheckUpdateCallBack;)V

    invoke-direct {p0}, Lcom/huawei/updatesdk/service/otaupdate/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/updatesdk/service/otaupdate/e;->a:Landroid/content/Context;

    const-string v1, "upsdk_checking_update_prompt"

    invoke-static {v0, v1}, Lcom/huawei/updatesdk/service/otaupdate/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/updatesdk/service/otaupdate/e;->d:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
