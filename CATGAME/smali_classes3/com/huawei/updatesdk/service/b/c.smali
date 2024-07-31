.class public final Lcom/huawei/updatesdk/service/b/c;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/huawei/updatesdk/service/b/c;

.field private static b:Lcom/huawei/updatesdk/service/b/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/huawei/updatesdk/service/b/c;

    invoke-direct {v0}, Lcom/huawei/updatesdk/service/b/c;-><init>()V

    sput-object v0, Lcom/huawei/updatesdk/service/b/c;->a:Lcom/huawei/updatesdk/service/b/c;

    new-instance v0, Lcom/huawei/updatesdk/service/b/c$1;

    invoke-direct {v0}, Lcom/huawei/updatesdk/service/b/c$1;-><init>()V

    sput-object v0, Lcom/huawei/updatesdk/service/b/c;->b:Lcom/huawei/updatesdk/service/b/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/huawei/updatesdk/service/b/c;
    .locals 1

    sget-object v0, Lcom/huawei/updatesdk/service/b/c;->a:Lcom/huawei/updatesdk/service/b/c;

    return-object v0
.end method

.method public static b()Lcom/huawei/updatesdk/service/b/a;
    .locals 1

    sget-object v0, Lcom/huawei/updatesdk/service/b/c;->b:Lcom/huawei/updatesdk/service/b/a;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/huawei/updatesdk/a/b/c/b;)V
    .locals 2

    sget-object v0, Lcom/huawei/updatesdk/service/b/c;->b:Lcom/huawei/updatesdk/service/b/a;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/huawei/updatesdk/service/b/a;->a(ILcom/huawei/updatesdk/a/b/c/b;)V

    return-void
.end method

.method public b(Lcom/huawei/updatesdk/a/b/c/b;)V
    .locals 2

    sget-object v0, Lcom/huawei/updatesdk/service/b/c;->b:Lcom/huawei/updatesdk/service/b/a;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/huawei/updatesdk/service/b/a;->a(ILcom/huawei/updatesdk/a/b/c/b;)V

    return-void
.end method

.method public c(Lcom/huawei/updatesdk/a/b/c/b;)V
    .locals 2

    sget-object v0, Lcom/huawei/updatesdk/service/b/c;->b:Lcom/huawei/updatesdk/service/b/a;

    const/4 v1, 0x2

    invoke-interface {v0, v1, p1}, Lcom/huawei/updatesdk/service/b/a;->a(ILcom/huawei/updatesdk/a/b/c/b;)V

    return-void
.end method
