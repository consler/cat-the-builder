.class Lcom/huawei/hms/update/a/c$1$2;
.super Ljava/lang/Object;
.source "ThreadWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/update/a/c$1;->a(IIILjava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Ljava/io/File;

.field final synthetic e:Lcom/huawei/hms/update/a/c$1;


# direct methods
.method constructor <init>(Lcom/huawei/hms/update/a/c$1;IIILjava/io/File;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/huawei/hms/update/a/c$1$2;->e:Lcom/huawei/hms/update/a/c$1;

    iput p2, p0, Lcom/huawei/hms/update/a/c$1$2;->a:I

    iput p3, p0, Lcom/huawei/hms/update/a/c$1$2;->b:I

    iput p4, p0, Lcom/huawei/hms/update/a/c$1$2;->c:I

    iput-object p5, p0, Lcom/huawei/hms/update/a/c$1$2;->d:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 76
    iget-object v0, p0, Lcom/huawei/hms/update/a/c$1$2;->e:Lcom/huawei/hms/update/a/c$1;

    iget-object v0, v0, Lcom/huawei/hms/update/a/c$1;->a:Lcom/huawei/hms/update/a/a/b;

    iget v1, p0, Lcom/huawei/hms/update/a/c$1$2;->a:I

    iget v2, p0, Lcom/huawei/hms/update/a/c$1$2;->b:I

    iget v3, p0, Lcom/huawei/hms/update/a/c$1$2;->c:I

    iget-object v4, p0, Lcom/huawei/hms/update/a/c$1$2;->d:Ljava/io/File;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/huawei/hms/update/a/a/b;->a(IIILjava/io/File;)V

    .line 77
    return-void
.end method
