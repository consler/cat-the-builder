.class Lcom/huawei/hms/framework/network/grs/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/huawei/hms/framework/network/grs/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/framework/network/grs/a;->a(Ljava/lang/String;Ljava/util/Map;Lcom/huawei/hms/framework/network/grs/IQueryUrlsCallBack;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/huawei/hms/framework/network/grs/IQueryUrlsCallBack;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Lcom/huawei/hms/framework/network/grs/a;


# direct methods
.method constructor <init>(Lcom/huawei/hms/framework/network/grs/a;Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/IQueryUrlsCallBack;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/a$2;->d:Lcom/huawei/hms/framework/network/grs/a;

    iput-object p2, p0, Lcom/huawei/hms/framework/network/grs/a$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/huawei/hms/framework/network/grs/a$2;->b:Lcom/huawei/hms/framework/network/grs/IQueryUrlsCallBack;

    iput-object p4, p0, Lcom/huawei/hms/framework/network/grs/a$2;->c:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/a$2;->c:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/a$2;->b:Lcom/huawei/hms/framework/network/grs/IQueryUrlsCallBack;

    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/a$2;->c:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/huawei/hms/framework/network/grs/IQueryUrlsCallBack;->onCallBackSuccess(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/a$2;->b:Lcom/huawei/hms/framework/network/grs/IQueryUrlsCallBack;

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Lcom/huawei/hms/framework/network/grs/IQueryUrlsCallBack;->onCallBackFail(I)V

    :goto_0
    return-void
.end method

.method public a(Lcom/huawei/hms/framework/network/grs/b/d;)V
    .locals 1

    invoke-virtual {p1}, Lcom/huawei/hms/framework/network/grs/b/d;->c()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/a$2;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/huawei/hms/framework/network/grs/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/a$2;->b:Lcom/huawei/hms/framework/network/grs/IQueryUrlsCallBack;

    invoke-interface {v0, p1}, Lcom/huawei/hms/framework/network/grs/IQueryUrlsCallBack;->onCallBackSuccess(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/huawei/hms/framework/network/grs/a$2;->c:Ljava/util/Map;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/huawei/hms/framework/network/grs/a$2;->b:Lcom/huawei/hms/framework/network/grs/IQueryUrlsCallBack;

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/a$2;->c:Ljava/util/Map;

    invoke-interface {p1, v0}, Lcom/huawei/hms/framework/network/grs/IQueryUrlsCallBack;->onCallBackSuccess(Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/huawei/hms/framework/network/grs/a$2;->b:Lcom/huawei/hms/framework/network/grs/IQueryUrlsCallBack;

    const/4 v0, -0x5

    invoke-interface {p1, v0}, Lcom/huawei/hms/framework/network/grs/IQueryUrlsCallBack;->onCallBackFail(I)V

    :goto_0
    return-void
.end method
