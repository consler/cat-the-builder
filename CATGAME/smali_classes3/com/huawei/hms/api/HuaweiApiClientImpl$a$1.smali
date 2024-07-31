.class Lcom/huawei/hms/api/HuaweiApiClientImpl$a$1;
.super Ljava/lang/Object;
.source "HuaweiApiClientImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/api/HuaweiApiClientImpl$a;->a(Lcom/huawei/hms/support/api/ResolveResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/huawei/hms/support/api/ResolveResult;

.field final synthetic b:Lcom/huawei/hms/api/HuaweiApiClientImpl$a;


# direct methods
.method constructor <init>(Lcom/huawei/hms/api/HuaweiApiClientImpl$a;Lcom/huawei/hms/support/api/ResolveResult;)V
    .locals 0

    .line 1302
    iput-object p1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl$a$1;->b:Lcom/huawei/hms/api/HuaweiApiClientImpl$a;

    iput-object p2, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl$a$1;->a:Lcom/huawei/hms/support/api/ResolveResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1307
    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl$a$1;->b:Lcom/huawei/hms/api/HuaweiApiClientImpl$a;

    iget-object v0, v0, Lcom/huawei/hms/api/HuaweiApiClientImpl$a;->a:Lcom/huawei/hms/api/HuaweiApiClientImpl;

    iget-object v1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl$a$1;->a:Lcom/huawei/hms/support/api/ResolveResult;

    invoke-static {v0, v1}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->b(Lcom/huawei/hms/api/HuaweiApiClientImpl;Lcom/huawei/hms/support/api/ResolveResult;)V

    .line 1308
    return-void
.end method
