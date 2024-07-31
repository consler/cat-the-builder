.class Lcom/huawei/hms/framework/network/grs/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/huawei/hms/framework/network/grs/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/framework/network/grs/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/IQueryUrlCallBack;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/huawei/hms/framework/network/grs/IQueryUrlCallBack;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/huawei/hms/framework/network/grs/a;


# direct methods
.method constructor <init>(Lcom/huawei/hms/framework/network/grs/a;Ljava/lang/String;Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/IQueryUrlCallBack;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/a$1;->e:Lcom/huawei/hms/framework/network/grs/a;

    iput-object p2, p0, Lcom/huawei/hms/framework/network/grs/a$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/huawei/hms/framework/network/grs/a$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/huawei/hms/framework/network/grs/a$1;->c:Lcom/huawei/hms/framework/network/grs/IQueryUrlCallBack;

    iput-object p5, p0, Lcom/huawei/hms/framework/network/grs/a$1;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/a$1;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/a$1;->c:Lcom/huawei/hms/framework/network/grs/IQueryUrlCallBack;

    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/a$1;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/huawei/hms/framework/network/grs/IQueryUrlCallBack;->onCallBackSuccess(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/a$1;->c:Lcom/huawei/hms/framework/network/grs/IQueryUrlCallBack;

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Lcom/huawei/hms/framework/network/grs/IQueryUrlCallBack;->onCallBackFail(I)V

    :goto_0
    return-void
.end method

.method public a(Lcom/huawei/hms/framework/network/grs/b/d;)V
    .locals 2

    invoke-virtual {p1}, Lcom/huawei/hms/framework/network/grs/b/d;->c()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/a$1;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/a$1;->b:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/huawei/hms/framework/network/grs/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/a$1;->c:Lcom/huawei/hms/framework/network/grs/IQueryUrlCallBack;

    invoke-interface {v0, p1}, Lcom/huawei/hms/framework/network/grs/IQueryUrlCallBack;->onCallBackSuccess(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/huawei/hms/framework/network/grs/a$1;->d:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/huawei/hms/framework/network/grs/a$1;->c:Lcom/huawei/hms/framework/network/grs/IQueryUrlCallBack;

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/a$1;->d:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/huawei/hms/framework/network/grs/IQueryUrlCallBack;->onCallBackSuccess(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/huawei/hms/framework/network/grs/a$1;->c:Lcom/huawei/hms/framework/network/grs/IQueryUrlCallBack;

    const/4 v0, -0x5

    invoke-interface {p1, v0}, Lcom/huawei/hms/framework/network/grs/IQueryUrlCallBack;->onCallBackFail(I)V

    :goto_0
    return-void
.end method
