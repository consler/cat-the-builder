.class Lcom/huawei/hms/framework/network/grs/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/framework/network/grs/c;-><init>(Landroid/content/Context;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

.field final synthetic c:Lcom/huawei/hms/framework/network/grs/c;


# direct methods
.method constructor <init>(Lcom/huawei/hms/framework/network/grs/c;Landroid/content/Context;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/c$1;->c:Lcom/huawei/hms/framework/network/grs/c;

    iput-object p2, p0, Lcom/huawei/hms/framework/network/grs/c$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/huawei/hms/framework/network/grs/c$1;->b:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .locals 3

    new-instance v0, Lcom/huawei/hms/framework/network/grs/local/b;

    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/c$1;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/huawei/hms/framework/network/grs/local/b;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/c$1;->b:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    invoke-virtual {v0, v1}, Lcom/huawei/hms/framework/network/grs/local/b;->a(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;)V

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/c$1;->c:Lcom/huawei/hms/framework/network/grs/c;

    invoke-static {v0}, Lcom/huawei/hms/framework/network/grs/c;->a(Lcom/huawei/hms/framework/network/grs/c;)Lcom/huawei/hms/framework/network/grs/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/hms/framework/network/grs/a/c;->c()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hms/framework/network/grs/c;->a(Lcom/huawei/hms/framework/network/grs/c;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/c$1;->c:Lcom/huawei/hms/framework/network/grs/c;

    invoke-static {v0}, Lcom/huawei/hms/framework/network/grs/c;->b(Lcom/huawei/hms/framework/network/grs/c;)Lcom/huawei/hms/framework/network/grs/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/c$1;->b:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    iget-object v2, p0, Lcom/huawei/hms/framework/network/grs/c$1;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/huawei/hms/framework/network/grs/a/a;->a(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/c$1;->c:Lcom/huawei/hms/framework/network/grs/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/huawei/hms/framework/network/grs/c;->a(Lcom/huawei/hms/framework/network/grs/c;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/huawei/hms/framework/network/grs/c$1;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
