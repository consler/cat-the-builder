.class public Lcom/huawei/updatesdk/service/d/a/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/huawei/updatesdk/service/d/a/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/updatesdk/service/d/a/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 2

    const-class v0, Lcom/huawei/updatesdk/service/appmgr/bean/b;

    const-string v1, "client.updateCheck"

    invoke-static {v1, v0}, Lcom/huawei/updatesdk/a/b/d/a;->a(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method
