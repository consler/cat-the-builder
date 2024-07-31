.class Lcom/huawei/hms/update/a/c$2;
.super Ljava/lang/Object;
.source "ThreadWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/update/a/c;->a(Lcom/huawei/hms/update/a/a/b;Lcom/huawei/hms/update/a/a/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/huawei/hms/update/a/a/b;

.field final synthetic b:Lcom/huawei/hms/update/a/a/c;

.field final synthetic c:Lcom/huawei/hms/update/a/c;


# direct methods
.method constructor <init>(Lcom/huawei/hms/update/a/c;Lcom/huawei/hms/update/a/a/b;Lcom/huawei/hms/update/a/a/c;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/huawei/hms/update/a/c$2;->c:Lcom/huawei/hms/update/a/c;

    iput-object p2, p0, Lcom/huawei/hms/update/a/c$2;->a:Lcom/huawei/hms/update/a/a/b;

    iput-object p3, p0, Lcom/huawei/hms/update/a/c$2;->b:Lcom/huawei/hms/update/a/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 110
    iget-object v0, p0, Lcom/huawei/hms/update/a/c$2;->c:Lcom/huawei/hms/update/a/c;

    invoke-static {v0}, Lcom/huawei/hms/update/a/c;->a(Lcom/huawei/hms/update/a/c;)Lcom/huawei/hms/update/a/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hms/update/a/c$2;->a:Lcom/huawei/hms/update/a/a/b;

    invoke-static {v1}, Lcom/huawei/hms/update/a/c;->a(Lcom/huawei/hms/update/a/a/b;)Lcom/huawei/hms/update/a/a/b;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/hms/update/a/c$2;->b:Lcom/huawei/hms/update/a/a/c;

    invoke-interface {v0, v1, v2}, Lcom/huawei/hms/update/a/a/a;->a(Lcom/huawei/hms/update/a/a/b;Lcom/huawei/hms/update/a/a/c;)V

    .line 111
    return-void
.end method
