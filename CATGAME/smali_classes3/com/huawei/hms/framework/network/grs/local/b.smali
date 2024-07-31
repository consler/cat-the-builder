.class public Lcom/huawei/hms/framework/network/grs/local/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/huawei/hms/framework/network/grs/local/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Lcom/huawei/hms/framework/network/grs/local/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/huawei/hms/framework/network/grs/local/b;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/huawei/hms/framework/network/grs/local/b;->a(Landroid/content/Context;)V

    sget-object v0, Lcom/huawei/hms/framework/network/grs/local/b;->a:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/huawei/hms/framework/network/grs/local/b;
    .locals 1

    sget-object v0, Lcom/huawei/hms/framework/network/grs/local/b;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/huawei/hms/framework/network/grs/local/b;

    return-object p0
.end method


# virtual methods
.method public a()Lcom/huawei/hms/framework/network/grs/local/model/a;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/local/b;->b:Lcom/huawei/hms/framework/network/grs/local/a;

    invoke-virtual {v0}, Lcom/huawei/hms/framework/network/grs/local/a;->a()Lcom/huawei/hms/framework/network/grs/local/model/a;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/local/b;->b:Lcom/huawei/hms/framework/network/grs/local/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/huawei/hms/framework/network/grs/local/a;->a(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/local/b;->b:Lcom/huawei/hms/framework/network/grs/local/a;

    invoke-virtual {v0, p1, p2}, Lcom/huawei/hms/framework/network/grs/local/a;->a(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/huawei/hms/framework/network/grs/local/d;

    invoke-direct {v0, p1}, Lcom/huawei/hms/framework/network/grs/local/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/huawei/hms/framework/network/grs/local/b;->b:Lcom/huawei/hms/framework/network/grs/local/a;

    invoke-virtual {v0}, Lcom/huawei/hms/framework/network/grs/local/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/huawei/hms/framework/network/grs/local/c;

    invoke-direct {v0, p1}, Lcom/huawei/hms/framework/network/grs/local/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/huawei/hms/framework/network/grs/local/b;->b:Lcom/huawei/hms/framework/network/grs/local/a;

    :cond_0
    return-void
.end method

.method public a(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/local/b;->b:Lcom/huawei/hms/framework/network/grs/local/a;

    invoke-virtual {v0, p1}, Lcom/huawei/hms/framework/network/grs/local/a;->a(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;)Z

    return-void
.end method
