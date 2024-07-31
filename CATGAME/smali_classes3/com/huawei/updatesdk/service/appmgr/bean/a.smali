.class public Lcom/huawei/updatesdk/service/appmgr/bean/a;
.super Lcom/huawei/updatesdk/service/a/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/updatesdk/service/appmgr/bean/a$b;,
        Lcom/huawei/updatesdk/service/appmgr/bean/a$a;
    }
.end annotation


# static fields
.field public static final APIMETHOD:Ljava/lang/String; = "client.updateCheck"

.field public static final DEFAULT_UPGRADE_RESULT:I = 0x0

.field public static final FULL_UPGRADE_RESULT:I = 0x1

.field public static final INSTALL_CHECK_DEFAULT:I = 0x0

.field private static final PARSE_IS_REMOVABLE_PREINSTALLED_APK:I = 0x2000000

.field public static final PRE_DOWNLOAD_CLOSE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "UpgradeRequest"

.field private static final TYPE_NOT_PREINSTALL:I = 0x0

.field private static final TYPE_PREINSTALL:I = 0x2

.field private static final TYPE_PREINSTALL_REMOVABLE:I = 0x1


# instance fields
.field private agVersion_:Ljava/lang/String;

.field private buildNumber_:Ljava/lang/String;

.field private density_:Ljava/lang/String;

.field private deviceSpecParams_:Lcom/huawei/updatesdk/a/a/c/a/a;

.field private emuiApiLevel_:I

.field private firmwareVersion_:Ljava/lang/String;

.field private getSafeGame_:I

.field private gmsSupport_:I

.field private installCheck_:I

.field private isFirstLaunch_:I

.field private isFullUpgrade_:I

.field private mapleVer_:I

.field private packageName_:Ljava/lang/String;

.field private phoneType_:Ljava/lang/String;

.field private pkgInfo_:Lcom/huawei/updatesdk/service/appmgr/bean/a$a;

.field private resolution_:Ljava/lang/String;

.field private serviceCountry_:Ljava/lang/String;

.field private supportMaple_:I

.field private versionCode_:I

.field private version_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/huawei/updatesdk/service/a/c;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/updatesdk/service/appmgr/bean/a;->isFirstLaunch_:I

    iput v0, p0, Lcom/huawei/updatesdk/service/appmgr/bean/a;->emuiApiLevel_:I

    iput v0, p0, Lcom/huawei/updatesdk/service/appmgr/bean/a;->installCheck_:I

    iput v0, p0, Lcom/huawei/updatesdk/service/appmgr/bean/a;->isFullUpgrade_:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/huawei/updatesdk/service/appmgr/bean/a;->getSafeGame_:I

    iput v0, p0, Lcom/huawei/updatesdk/service/appmgr/bean/a;->supportMaple_:I

    invoke-static {}, Lcom/huawei/updatesdk/a/b/a/a;->a()Lcom/huawei/updatesdk/a/b/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/updatesdk/a/b/a/a;->b()Landroid/content/Context;

    move-result-object v0

    const-string v2, "client.updateCheck"

    invoke-virtual {p0, v2}, Lcom/huawei/updatesdk/service/appmgr/bean/a;->b(Ljava/lang/String;)V

    const-string v2, "1.2"

    invoke-virtual {p0, v2}, Lcom/huawei/updatesdk/service/appmgr/bean/a;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/huawei/updatesdk/a/a/c/a/b;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huawei/updatesdk/service/appmgr/bean/a;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/huawei/updatesdk/a/a/c/a/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huawei/updatesdk/service/appmgr/bean/a;->n(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/huawei/updatesdk/a/a/c/a/b;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huawei/updatesdk/service/appmgr/bean/a;->g(Ljava/lang/String;)V

    invoke-static {}, Lcom/huawei/updatesdk/a/a/c/a/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huawei/updatesdk/service/appmgr/bean/a;->h(Ljava/lang/String;)V

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/huawei/updatesdk/service/appmgr/bean/a;->i(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/huawei/updatesdk/a/a/c/a/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huawei/updatesdk/service/appmgr/bean/a;->f(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/huawei/updatesdk/a/a/c/a/b;->f(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/huawei/updatesdk/service/appmgr/bean/a;->e(I)V

    invoke-static {v0}, Lcom/huawei/updatesdk/a/a/c/a/b;->e(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/huawei/updatesdk/service/appmgr/bean/a;->f(I)V

    invoke-static {v0}, Lcom/huawei/updatesdk/a/a/c/a/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huawei/updatesdk/service/appmgr/bean/a;->j(Ljava/lang/String;)V

    invoke-static {}, Lcom/huawei/updatesdk/a/b/a/a;->a()Lcom/huawei/updatesdk/a/b/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/updatesdk/a/b/a/a;->b()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huawei/updatesdk/service/appmgr/bean/a;->k(Ljava/lang/String;)V

    invoke-static {}, Lcom/huawei/updatesdk/service/e/b;->a()Lcom/huawei/updatesdk/service/e/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/updatesdk/service/e/b;->b()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/huawei/updatesdk/service/appmgr/bean/a;->g(I)V

    invoke-static {}, Lcom/huawei/updatesdk/service/a/a;->a()Lcom/huawei/updatesdk/service/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/updatesdk/service/a/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huawei/updatesdk/service/appmgr/bean/a;->l(Ljava/lang/String;)V

    invoke-static {}, Lcom/huawei/updatesdk/a/a/c/a/b;->f()Lcom/huawei/updatesdk/a/a/c/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/updatesdk/a/a/c/a/b;->g()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/huawei/updatesdk/service/appmgr/bean/a;->c(I)V

    invoke-static {}, Lcom/huawei/updatesdk/a/a/c/a/b;->f()Lcom/huawei/updatesdk/a/a/c/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/updatesdk/a/a/c/a/b;->h()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/huawei/updatesdk/service/appmgr/bean/a;->d(I)V

    new-instance v2, Lcom/huawei/updatesdk/a/a/c/a/a$a;

    invoke-direct {v2, v0}, Lcom/huawei/updatesdk/a/a/c/a/a$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Lcom/huawei/updatesdk/a/a/c/a/a$a;->a(Z)Lcom/huawei/updatesdk/a/a/c/a/a$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/updatesdk/a/a/c/a/a$a;->a()Lcom/huawei/updatesdk/a/a/c/a/a;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/updatesdk/service/appmgr/bean/a;->deviceSpecParams_:Lcom/huawei/updatesdk/a/a/c/a/a;

    invoke-static {v0}, Lcom/huawei/updatesdk/a/a/c/a/b;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/updatesdk/service/appmgr/bean/a;->m(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Landroid/content/pm/PackageInfo;)I
    .locals 0

    invoke-static {p0}, Lcom/huawei/updatesdk/service/appmgr/bean/a;->b(Landroid/content/pm/PackageInfo;)I

    move-result p0

    return p0
.end method

.method public static a(Ljava/util/List;)Lcom/huawei/updatesdk/service/appmgr/bean/a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;)",
            "Lcom/huawei/updatesdk/service/appmgr/bean/a;"
        }
    .end annotation

    new-instance v0, Lcom/huawei/updatesdk/service/appmgr/bean/a;

    invoke-direct {v0}, Lcom/huawei/updatesdk/service/appmgr/bean/a;-><init>()V

    new-instance v1, Lcom/huawei/updatesdk/service/appmgr/bean/a$a;

    invoke-direct {v1}, Lcom/huawei/updatesdk/service/appmgr/bean/a$a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/huawei/updatesdk/service/appmgr/bean/a;->a(Lcom/huawei/updatesdk/service/appmgr/bean/a$a;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lcom/huawei/updatesdk/service/appmgr/bean/a$a;->a(Ljava/util/List;)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    new-instance v3, Lcom/huawei/updatesdk/service/appmgr/bean/a$b;

    invoke-direct {v3, v1}, Lcom/huawei/updatesdk/service/appmgr/bean/a$b;-><init>(Landroid/content/pm/PackageInfo;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static a(Landroid/content/pm/ApplicationInfo;)Z
    .locals 5

    const-string v0, "can not get hwflags"

    const-string v1, "UpgradeRequest"

    iget v2, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {}, Lcom/huawei/updatesdk/service/e/c;->a()Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    return v4

    :cond_0
    invoke-static {}, Lcom/huawei/updatesdk/service/e/c;->b()Ljava/lang/reflect/Field;

    move-result-object v2

    if-eqz v2, :cond_1

    :try_start_0
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v0, 0x2000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_1

    return v4

    :catch_0
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :catch_1
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/huawei/updatesdk/a/a/b/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static b(Landroid/content/pm/PackageInfo;)I
    .locals 2

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p0}, Lcom/huawei/updatesdk/service/appmgr/bean/a;->a(Landroid/content/pm/ApplicationInfo;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x2

    return p0
.end method

.method public static d(Ljava/lang/String;)Lcom/huawei/updatesdk/service/appmgr/bean/a;
    .locals 3

    new-instance v0, Landroid/content/pm/PackageInfo;

    invoke-direct {v0}, Landroid/content/pm/PackageInfo;-><init>()V

    iput-object p0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string p0, "1.0"

    iput-object p0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const/4 p0, 0x1

    iput p0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    new-instance v1, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v1}, Landroid/content/pm/ApplicationInfo;-><init>()V

    const/16 v2, 0x13

    iput v2, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Lcom/huawei/updatesdk/service/appmgr/bean/a;->a(Ljava/util/List;)Lcom/huawei/updatesdk/service/appmgr/bean/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/huawei/updatesdk/service/appmgr/bean/a;->b(I)V

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/huawei/updatesdk/service/appmgr/bean/a;->installCheck_:I

    return-void
.end method

.method public a(Lcom/huawei/updatesdk/service/appmgr/bean/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/updatesdk/service/appmgr/bean/a;->pkgInfo_:Lcom/huawei/updatesdk/service/appmgr/bean/a$a;

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/huawei/updatesdk/service/appmgr/bean/a;->isFullUpgrade_:I

    return-void
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/huawei/updatesdk/service/appmgr/bean/a;->supportMaple_:I

    return-void
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/huawei/updatesdk/service/appmgr/bean/a;->mapleVer_:I

    return-void
.end method

.method public e(I)V
    .locals 0

    iput p1, p0, Lcom/huawei/updatesdk/service/appmgr/bean/a;->versionCode_:I

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/updatesdk/service/appmgr/bean/a;->firmwareVersion_:Ljava/lang/String;

    return-void
.end method

.method public f(I)V
    .locals 0

    iput p1, p0, Lcom/huawei/updatesdk/service/appmgr/bean/a;->gmsSupport_:I

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/updatesdk/service/appmgr/bean/a;->density_:Ljava/lang/String;

    return-void
.end method

.method public g(I)V
    .locals 0

    iput p1, p0, Lcom/huawei/updatesdk/service/appmgr/bean/a;->emuiApiLevel_:I

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/updatesdk/service/appmgr/bean/a;->version_:Ljava/lang/String;

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/updatesdk/service/appmgr/bean/a;->buildNumber_:Ljava/lang/String;

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/updatesdk/service/appmgr/bean/a;->phoneType_:Ljava/lang/String;

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/updatesdk/service/appmgr/bean/a;->resolution_:Ljava/lang/String;

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/updatesdk/service/appmgr/bean/a;->packageName_:Ljava/lang/String;

    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/updatesdk/service/appmgr/bean/a;->serviceCountry_:Ljava/lang/String;

    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/updatesdk/service/appmgr/bean/a;->agVersion_:Ljava/lang/String;

    return-void
.end method
