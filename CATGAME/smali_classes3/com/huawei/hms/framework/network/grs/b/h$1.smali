.class Lcom/huawei/hms/framework/network/grs/b/h$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/framework/network/grs/b/h;->a(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Landroid/content/Context;Ljava/lang/String;)Lcom/huawei/hms/framework/network/grs/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/huawei/hms/framework/network/grs/b/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/huawei/hms/framework/network/grs/b/h;


# direct methods
.method constructor <init>(Lcom/huawei/hms/framework/network/grs/b/h;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/b/h$1;->d:Lcom/huawei/hms/framework/network/grs/b/h;

    iput-object p2, p0, Lcom/huawei/hms/framework/network/grs/b/h$1;->a:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    iput-object p3, p0, Lcom/huawei/hms/framework/network/grs/b/h$1;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/huawei/hms/framework/network/grs/b/h$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/huawei/hms/framework/network/grs/b/d;
    .locals 4

    new-instance v0, Lcom/huawei/hms/framework/network/grs/b/c;

    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/b/h$1;->a:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    iget-object v2, p0, Lcom/huawei/hms/framework/network/grs/b/h$1;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/huawei/hms/framework/network/grs/b/h$1;->d:Lcom/huawei/hms/framework/network/grs/b/h;

    invoke-static {v3}, Lcom/huawei/hms/framework/network/grs/b/h;->b(Lcom/huawei/hms/framework/network/grs/b/h;)Lcom/huawei/hms/framework/network/grs/a/a;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/hms/framework/network/grs/b/c;-><init>(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Landroid/content/Context;Lcom/huawei/hms/framework/network/grs/a/a;)V

    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/b/h$1;->d:Lcom/huawei/hms/framework/network/grs/b/h;

    invoke-static {v1}, Lcom/huawei/hms/framework/network/grs/b/h;->a(Lcom/huawei/hms/framework/network/grs/b/h;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/hms/framework/network/grs/b/h$1;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/huawei/hms/framework/network/grs/b/c;->a(Ljava/util/concurrent/ExecutorService;Ljava/lang/String;)Lcom/huawei/hms/framework/network/grs/b/d;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/huawei/hms/framework/network/grs/b/h$1;->a()Lcom/huawei/hms/framework/network/grs/b/d;

    move-result-object v0

    return-object v0
.end method
