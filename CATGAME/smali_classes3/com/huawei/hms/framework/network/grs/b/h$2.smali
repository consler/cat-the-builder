.class Lcom/huawei/hms/framework/network/grs/b/h$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/framework/network/grs/b/h;->a(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Landroid/content/Context;Lcom/huawei/hms/framework/network/grs/b;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/huawei/hms/framework/network/grs/b;

.field final synthetic e:Lcom/huawei/hms/framework/network/grs/b/h;


# direct methods
.method constructor <init>(Lcom/huawei/hms/framework/network/grs/b/h;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Landroid/content/Context;Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/b;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/b/h$2;->e:Lcom/huawei/hms/framework/network/grs/b/h;

    iput-object p2, p0, Lcom/huawei/hms/framework/network/grs/b/h$2;->a:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    iput-object p3, p0, Lcom/huawei/hms/framework/network/grs/b/h$2;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/huawei/hms/framework/network/grs/b/h$2;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/huawei/hms/framework/network/grs/b/h$2;->d:Lcom/huawei/hms/framework/network/grs/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/b/h$2;->e:Lcom/huawei/hms/framework/network/grs/b/h;

    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/b/h$2;->a:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    iget-object v2, p0, Lcom/huawei/hms/framework/network/grs/b/h$2;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/huawei/hms/framework/network/grs/b/h$2;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/huawei/hms/framework/network/grs/b/h;->a(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Landroid/content/Context;Ljava/lang/String;)Lcom/huawei/hms/framework/network/grs/b/d;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/hms/framework/network/grs/b/h$2;->d:Lcom/huawei/hms/framework/network/grs/b;

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/framework/network/grs/b/h;->a(Lcom/huawei/hms/framework/network/grs/b/h;Lcom/huawei/hms/framework/network/grs/b/d;Lcom/huawei/hms/framework/network/grs/b;)V

    return-void
.end method
